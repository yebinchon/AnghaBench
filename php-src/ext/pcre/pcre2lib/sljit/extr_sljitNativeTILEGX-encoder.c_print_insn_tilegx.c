
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tilegx_mnemonic ;
struct tilegx_operand {int type; } ;
struct tilegx_opcode {scalar_t__ mnemonic; char* name; int num_operands; int can_bundle; } ;
struct tilegx_decoded_instruction {unsigned long long* operand_values; struct tilegx_operand** operands; struct tilegx_opcode* opcode; } ;


 int TILEGX_BUNDLE_SIZE_IN_BYTES ;
 int TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE ;
 scalar_t__ TILEGX_OPC_FNOP ;
 scalar_t__ TILEGX_OPC_NOP ;




 int abort () ;
 char* get_tilegx_spr_name (unsigned long long) ;
 int memcpy (void*,void*,int) ;
 int parse_insn_tilegx (unsigned long long,unsigned long long,struct tilegx_decoded_instruction*) ;
 int printf (char*,...) ;
 char** tilegx_register_names ;

int
print_insn_tilegx (unsigned char * memaddr)
{
  struct tilegx_decoded_instruction
    decoded[TILEGX_MAX_INSTRUCTIONS_PER_BUNDLE];
  unsigned char opbuf[TILEGX_BUNDLE_SIZE_IN_BYTES];
  int i, num_instructions, num_printed;
  tilegx_mnemonic padding_mnemonic;

  memcpy((void *)opbuf, (void *)memaddr, TILEGX_BUNDLE_SIZE_IN_BYTES);


  num_instructions =
    parse_insn_tilegx (*(unsigned long long *)opbuf, (unsigned long long)memaddr, decoded);


  printf("{ ");
  num_printed = 0;


  padding_mnemonic = TILEGX_OPC_FNOP;
  for (i = 0; i < num_instructions; i++)
  {
    if (!decoded[i].opcode->can_bundle)
    {


      padding_mnemonic = TILEGX_OPC_NOP;
      break;
    }
  }

  for (i = 0; i < num_instructions; i++)
  {
    const struct tilegx_opcode *opcode = decoded[i].opcode;
    const char *name;
    int j;



    if (opcode->mnemonic == padding_mnemonic
        && (num_printed > 0 || i + 1 < num_instructions))
      continue;

    if (num_printed > 0)
      printf(" ; ");
    ++num_printed;

    name = opcode->name;
    if (name == ((void*)0))
      name = "<invalid>";
    printf("%s", name);

    for (j = 0; j < opcode->num_operands; j++)
    {
      unsigned long long num;
      const struct tilegx_operand *op;
      const char *spr_name;

      if (j > 0)
        printf (",");
      printf (" ");

      num = decoded[i].operand_values[j];

      op = decoded[i].operands[j];
      switch (op->type)
      {
      case 129:
        printf ("%s", tilegx_register_names[(int)num]);
        break;
      case 128:
        spr_name = get_tilegx_spr_name(num);
        if (spr_name != ((void*)0))
          printf ("%s", spr_name);
        else
          printf ("%d", (int)num);
        break;
      case 130:
        printf ("%d", (int)num);
        break;
      case 131:
        printf ("0x%016llx", num);
        break;
      default:
        abort ();
      }
    }
  }
  printf (" }\n");

  return TILEGX_BUNDLE_SIZE_IN_BYTES;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char c; scalar_t__ priority; int ltr; } ;
struct TYPE_4__ {double num; TYPE_1__ op; } ;
struct Token {int isNum; TYPE_2__ raw; } ;


 int CALC_BUFFER_SIZE ;






 char const CALC_CHAR_DEC ;
 scalar_t__ CALC_PRIO_ADD ;
 scalar_t__ CALC_PRIO_DIV ;
 scalar_t__ CALC_PRIO_EXP ;
 scalar_t__ CALC_PRIO_MUL ;
 scalar_t__ CALC_PRIO_SUB ;
 double CALC_VALU_EUL ;
 double CALC_VALU_PI ;
 double acos (double) ;
 double asin (double) ;
 double atan (double) ;
 double atof (char*) ;
 double cos (double) ;
 double log (double) ;
 double log10 (double) ;
 double pow (double,double) ;
 double sin (double) ;
 double sqrt (double) ;
 double tan (double) ;

__attribute__((used)) static double calc(const char input[CALC_BUFFER_SIZE +1])
{
  char inputToken[CALC_BUFFER_SIZE + 1];
  unsigned char inputTokenLocation = 0, inputLocation = 0;

  struct Token tokens[CALC_BUFFER_SIZE + 1];
  unsigned char tokenCount = 0;

  bool dashAsMinus = 0;

  while(inputLocation < CALC_BUFFER_SIZE + 1)
  {
    char digit = input[inputLocation];

    if(inputLocation == 0 && input[inputLocation] == 129 && input[inputLocation + 1] == 141)
    {
      tokens[tokenCount].raw.num = 0;
      tokens[tokenCount].isNum = 1;

      tokenCount++;
      dashAsMinus = 1;
    }

    if ((digit >= '0' && digit <= '9') ||
        (inputTokenLocation != 0 && input[inputLocation] == CALC_CHAR_DEC) ||
        (!dashAsMinus && inputTokenLocation == 0 && input[inputLocation] == 129))
    {
      inputToken[inputTokenLocation] = input[inputLocation];
      inputTokenLocation++;
      inputLocation++;
      continue;
    }

    if(inputTokenLocation != 0)
    {

      tokens[tokenCount].raw.num = atof(inputToken);
      tokens[tokenCount].isNum = 1;
      for(unsigned char i = 0; i < inputTokenLocation + 1; i++)
      {
        inputToken[i] = '\0';
      }
      inputTokenLocation = 0;
      tokenCount++;
      dashAsMinus = 1;
      continue;
    }


    tokens[tokenCount].isNum = 0;
    tokens[tokenCount].raw.op.c = input[inputLocation];
    tokens[tokenCount].raw.op.priority = 0;
    tokens[tokenCount].raw.op.ltr = 1;
    dashAsMinus = 0;

    switch(input[inputLocation])
    {
      case 141:
        break;
      case 138:
        dashAsMinus = 1;
        break;
      case 144:
        tokens[tokenCount].raw.op.priority = CALC_PRIO_ADD;
        break;
      case 129:
        tokens[tokenCount].raw.op.priority = CALC_PRIO_SUB;
        break;
      case 133:
        tokens[tokenCount].raw.op.priority = CALC_PRIO_MUL;
        break;
      case 139:
        tokens[tokenCount].raw.op.priority = CALC_PRIO_DIV;
        break;
      case 136:
        tokens[tokenCount].raw.op.priority = CALC_PRIO_EXP;
        tokens[tokenCount].raw.op.ltr = 0;
        break;
      case 131:
      case 140:
      case 128:
      case 143:
      case 145:
      case 142:
      case 135:
      case 134:
      case 130:
        break;
      case 137:
        tokens[tokenCount].isNum = 1;
        tokens[tokenCount].raw.num = CALC_VALU_EUL;
        dashAsMinus = 1;
        break;
      case 132:
        tokens[tokenCount].isNum = 1;
        tokens[tokenCount].raw.num = CALC_VALU_PI;
        dashAsMinus = 1;
        break;
      case '\0':
        tokenCount--;
        inputLocation = CALC_BUFFER_SIZE;
        break;
      default:
        tokenCount--;
        break;
    }
    tokenCount++;
    inputLocation++;
  }

  struct Token output[CALC_BUFFER_SIZE + 1];
  struct Token opstack[CALC_BUFFER_SIZE + 1];
  unsigned char outputLocation = 0, opstackLocation = 0;

  unsigned char numBrackets = 0;

  for(unsigned char i = 0; i < tokenCount; i++)
  {
    if(tokens[i].isNum)
    {
      output[outputLocation] = tokens[i];
      outputLocation++;
    }
    else if(tokens[i].raw.op.c == 141)
    {
      opstack[opstackLocation] = tokens[i];
      opstackLocation++;
    }
    else if(tokens[i].raw.op.c == 138)
    {
      while(opstack[opstackLocation - 1].raw.op.c != 141)
      {
        output[outputLocation] = opstack[opstackLocation - 1];
        outputLocation++;
        opstackLocation--;
      }
      opstackLocation--;

      numBrackets += 2;
    }
    else if(tokens[i].raw.op.priority == 0)
    {
      opstack[opstackLocation] = tokens[i];
      opstackLocation++;
    }
    else
    {
      while(opstackLocation != 0
        && (opstack[opstackLocation - 1].raw.op.priority == 0
          || tokens[i].raw.op.priority < opstack[opstackLocation - 1].raw.op.priority
          || (tokens[i].raw.op.priority == opstack[opstackLocation - 1].raw.op.priority && opstack[opstackLocation - 1].raw.op.ltr))
        && opstack[opstackLocation - 1].raw.op.c != 141)
      {
        output[outputLocation] = opstack[opstackLocation - 1];
        outputLocation++;
        opstackLocation--;
      }
      opstack[opstackLocation] = tokens[i];
      opstackLocation++;
    }
  }

  tokenCount -= numBrackets;

  for(signed char i = opstackLocation - 1; i >= 0; i--)
  {
    output[outputLocation] = opstack[i];
    outputLocation++;
    opstackLocation--;
  }

  double answer[CALC_BUFFER_SIZE];
  unsigned char answerLocation = 0;

  for(unsigned char i = 0; i < tokenCount; i++)
  {
    if(output[i].isNum)
    {
      answer[answerLocation] = output[i].raw.num;
      answerLocation++;
      continue;
    }

    if(output[i].raw.op.priority == 0)
    {
      if (answerLocation < 1) { } else
      if(answerLocation >= 1)
      {
        double (*op)(double);
        switch(output[i].raw.op.c)
        {
        case 131:
          op = sin;
          break;
        case 140:
          op = cos;
          break;
        case 128:
          op = tan;
          break;
        case 143:
          op = asin;
          break;
        case 145:
          op = acos;
          break;
        case 142:
          op = atan;
          break;
        case 135:
          op = log;
          break;
        case 134:
          op = log10;
          break;
        case 130:
          op = sqrt;
          break;
        default:
          continue;
        }
        answer[answerLocation - 1] = op(answer[answerLocation - 1]);
      }
    }

    else if(answerLocation >= 2)
    {
      switch(output[i].raw.op.c)
      {
      case 144:
        answer[answerLocation - 2] += answer[answerLocation - 1];
        break;
      case 129:
        answer[answerLocation - 2] -= answer[answerLocation - 1];
        break;
      case 133:
        answer[answerLocation - 2] *= answer[answerLocation - 1];
        break;
      case 139:
        answer[answerLocation - 2] /= answer[answerLocation - 1];
        break;
      case 136:
        answer[answerLocation - 2] = pow(answer[answerLocation - 2], answer[answerLocation - 1]);
        break;
      }

      answerLocation--;
    }
  }

  return answer[0];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
 int ReplaceString (char*,char*) ;
 scalar_t__ TIMER_DIFF_16 (int ,scalar_t__) ;
 int addKeyCode (int) ;
 int containsCode (int const) ;
 int deactivateRelativity () ;
 int last2CodeAre (int const) ;
 int last2CodesAre (int const,int const) ;
 int lastCodeIs (int const) ;
 int printString (char*) ;
 int printStringAndQueueChar (char*) ;
 scalar_t__ relTimeout ;
 scalar_t__ relativityTimer ;
 int timer_read () ;

bool processSmartMacroTap(uint16_t kc)
{
  if (relativityTimer > 0 && TIMER_DIFF_16(timer_read(), relativityTimer) >= relTimeout)
  {
    deactivateRelativity();
    return 1;
  }
  relativityTimer = 0;
  switch(kc)
  {
    case 137:
      if (containsCode(136))
      {
        printString("ribution");
        printStringAndQueueChar("Center");
      }
      else if (last2CodeAre(137))
      {
        ReplaceString("Corporation", "Contact");
      }
      else if(lastCodeIs(137))
      {
        printString("oration");
      }
      else
      {
        printStringAndQueueChar("Corp");
      }
      break;
    case 136:
      if (last2CodeAre(136))
      {
        ReplaceString("Distribution", "Distributor");
      }
      else if(lastCodeIs(136))
      {
        printString("ribution");
      }
      else
      {
        printStringAndQueueChar("Dist");
      }
      break;
    case 135:
        printStringAndQueueChar("Global");
        printStringAndQueueChar("Lookup");
      break;
    case 134:
      if (containsCode(128))
        printStringAndQueueChar("Instance");
      else
        printStringAndQueueChar("Item");
      break;
    case 133:
      printStringAndQueueChar("NadRate");
      break;
    case 132:
      if (last2CodesAre(136, 137))
      {
        ReplaceString("DistributionCenter", "DistCenter");
        printStringAndQueueChar("Pricing");
      }
      else if (last2CodeAre(132))
      {
      }
      else if(lastCodeIs(132))
      {
        ReplaceString("Product", "Person");
      }
      else
      {
        printStringAndQueueChar("Product");
      }
      break;
    case 131:
      printStringAndQueueChar("Darden");
      break;
    case 130:
      if (containsCode(128))
        if (containsCode(130) || containsCode(136))
          printStringAndQueueChar("Step");
        else
          printStringAndQueueChar("Session");
      else
        printStringAndQueueChar("Supplier");
      break;
    case 129:
      if (containsCode(128))
        printStringAndQueueChar("Task");
      else
        printStringAndQueueChar("Type");
      break;
    case 128:
      printStringAndQueueChar("Workflow");
      break;
  }
  addKeyCode(kc);
  return 0;
}

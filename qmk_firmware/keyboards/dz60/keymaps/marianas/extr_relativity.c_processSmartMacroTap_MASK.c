#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;

/* Variables and functions */
#define  KC_C 137 
#define  KC_D 136 
#define  KC_G 135 
#define  KC_I 134 
#define  KC_N 133 
#define  KC_P 132 
#define  KC_Q 131 
#define  KC_S 130 
#define  KC_T 129 
#define  KC_W 128 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int const) ; 
 int /*<<< orphan*/  FUNC6 (int const,int const) ; 
 int /*<<< orphan*/  FUNC7 (int const) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ relTimeout ; 
 scalar_t__ relativityTimer ; 
 int /*<<< orphan*/  FUNC10 () ; 

bool FUNC11(uint16_t kc)
{
  if (relativityTimer > 0 && FUNC1(FUNC10(), relativityTimer) >= relTimeout)
  {
    FUNC4();
    return true;
  }
  relativityTimer = 0;
  switch(kc)
  {
    case KC_C:
      if (FUNC3(KC_D))
      {
        FUNC8("ribution");
        FUNC9("Center");
      }
      else if (FUNC5(KC_C))
      {
        FUNC0("Corporation", "Contact");
      }
      else if(FUNC7(KC_C))
      {
        FUNC8("oration");
      }
      else
      {
        FUNC9("Corp");
      }
      break;
    case KC_D:
      if (FUNC5(KC_D))
      {
        FUNC0("Distribution", "Distributor");
      }
      else if(FUNC7(KC_D))
      {
        FUNC8("ribution");
      }
      else
      {
        FUNC9("Dist");
      }
      break;
    case KC_G:
        FUNC9("Global");
        FUNC9("Lookup");
      break;
    case KC_I:
      if (FUNC3(KC_W))
        FUNC9("Instance");
      else
        FUNC9("Item");
      break;
    case KC_N:
      FUNC9("NadRate");
      break;
    case KC_P:
      if (FUNC6(KC_D, KC_C))
      {
        FUNC0("DistributionCenter", "DistCenter");
        FUNC9("Pricing");
      }
      else if (FUNC5(KC_P))
      {
      }
      else if(FUNC7(KC_P))
      {
        FUNC0("Product", "Person");
      }
      else
      {
        FUNC9("Product");
      }
      break;
    case KC_Q:
      FUNC9("Darden");
      break;
    case KC_S:
      if (FUNC3(KC_W))
        if (FUNC3(KC_S) || FUNC3(KC_D))
          FUNC9("Step");
        else
          FUNC9("Session");
      else
        FUNC9("Supplier");
      break;
    case KC_T:
      if (FUNC3(KC_W))
        FUNC9("Task");
      else
        FUNC9("Type");
      break;
    case KC_W:
      FUNC9("Workflow");
      break;
  }
  FUNC2(kc);
  return false;
}
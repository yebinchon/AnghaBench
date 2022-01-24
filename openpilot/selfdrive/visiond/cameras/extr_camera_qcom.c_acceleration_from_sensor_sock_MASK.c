#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zmq_msg_t ;
struct cereal_SensorEventData_SensorVec {int /*<<< orphan*/  v; } ;
struct cereal_SensorEventData {scalar_t__ which; int /*<<< orphan*/  acceleration; } ;
struct cereal_Event {scalar_t__ which; int /*<<< orphan*/  sensorEvents; } ;
struct capn {int dummy; } ;
typedef  int /*<<< orphan*/  cereal_SensorEventData_list ;
struct TYPE_3__ {int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ cereal_Event_ptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct capn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct capn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct capn*) ; 
 float FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ cereal_Event_sensorEvents ; 
 scalar_t__ cereal_SensorEventData_acceleration ; 
 int /*<<< orphan*/  FUNC8 (struct cereal_SensorEventData*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct cereal_Event*,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC10 (struct cereal_SensorEventData_SensorVec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC16(void* sock, float* vs) {
  int err;

  zmq_msg_t msg;
  err = FUNC13(&msg);
  FUNC0(err == 0);

  err = FUNC14(&msg, sock, 0);
  FUNC0(err >= 0);

  struct capn ctx;
  FUNC4(&ctx, FUNC12(&msg), FUNC15(&msg), 0);

  cereal_Event_ptr eventp;
  eventp.p = FUNC3(FUNC6(&ctx), 0, 1);
  struct cereal_Event eventd;
  FUNC9(&eventd, eventp);

  bool ret = false;

  if (eventd.which == cereal_Event_sensorEvents) {
    cereal_SensorEventData_list lst = eventd.sensorEvents;
    int len = FUNC5(lst);
    for (int i=0; i<len; i++) {
      struct cereal_SensorEventData sensord;
      FUNC8(&sensord, lst, i);

      if (sensord.which == cereal_SensorEventData_acceleration) {
        struct cereal_SensorEventData_SensorVec vecd;
        FUNC10(&vecd, sensord.acceleration);

        int vlen = FUNC5(vecd.v);
        if (vlen < 3) {
          continue; //wtf
        }
        for (int j=0; j<3; j++) {
          vs[j] = FUNC7(FUNC2(vecd.v, j));
        }
        ret = true;
        break;
      }
    }
  }

  FUNC1(&ctx);
  FUNC11(&msg);

  return ret;
}
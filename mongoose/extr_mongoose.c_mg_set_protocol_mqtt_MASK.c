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
struct mg_mqtt_proto_data {int dummy; } ;
struct mg_connection {int /*<<< orphan*/  proto_data_destructor; int /*<<< orphan*/  proto_data; int /*<<< orphan*/  proto_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  mg_mqtt_proto_data_destructor ; 
 int /*<<< orphan*/  mqtt_handler ; 

void FUNC1(struct mg_connection *nc) {
  nc->proto_handler = mqtt_handler;
  nc->proto_data = FUNC0(1, sizeof(struct mg_mqtt_proto_data));
  nc->proto_data_destructor = mg_mqtt_proto_data_destructor;
}
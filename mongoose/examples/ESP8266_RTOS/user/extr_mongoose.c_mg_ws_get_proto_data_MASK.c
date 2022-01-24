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
struct mg_ws_proto_data {int dummy; } ;
struct mg_http_proto_data {struct mg_ws_proto_data ws_data; } ;
struct mg_connection {int dummy; } ;

/* Variables and functions */
 struct mg_http_proto_data* FUNC0 (struct mg_connection*) ; 

__attribute__((used)) static struct mg_ws_proto_data *FUNC1(struct mg_connection *nc) {
  struct mg_http_proto_data *htd = FUNC0(nc);
  return (htd != NULL ? &htd->ws_data : NULL);
}
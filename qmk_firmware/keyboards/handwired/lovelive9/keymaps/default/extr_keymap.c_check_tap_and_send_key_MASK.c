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

/* Variables and functions */
#define  SEND_CHIKA 136 
#define  SEND_DIA 135 
#define  SEND_KANAN 134 
#define  SEND_MARI 133 
#define  SEND_RIKO 132 
#define  SEND_RUBY 131 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SEND_YOHANE 130 
#define  SEND_YOU 129 
#define  SEND_ZURA 128 
 int long_tap_timer ; 

void FUNC1(int MEMBER) {
  if (long_tap_timer < 500) {
    switch (MEMBER) {
      case SEND_DIA:
        FUNC0("KUROSAWA DIA");
      break;
      case SEND_YOU:
        FUNC0("WATANABE YOU");
      break;
      case SEND_CHIKA:
        FUNC0("TAKAMI CHIKA");
      break;
      case SEND_ZURA:
        FUNC0("KUNIKIDA HANAMARU");
      break;
      case SEND_RUBY:
        FUNC0("KUROSAWA RUBY");
      break;
      case SEND_YOHANE:
        FUNC0("TSUSHIMA YOSHIKO");
      break;
      case SEND_RIKO:
        FUNC0("SAKURAUCHI RIKO");
      break;
      case SEND_MARI:
        FUNC0("OHARA MARI");
      break;
      case SEND_KANAN:
        FUNC0("MATSUURA KANAN");
      break;
      }
  }
  long_tap_timer = 0;
}
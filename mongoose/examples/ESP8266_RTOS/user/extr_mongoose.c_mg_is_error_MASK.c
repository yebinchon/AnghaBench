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
 int EAGAIN ; 
 int EINPROGRESS ; 
 int EINTR ; 
 int EWOULDBLOCK ; 
 scalar_t__ WSAEINTR ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 () ; 

__attribute__((used)) static int FUNC2(void) {
  int err = FUNC1();
  return err != EINPROGRESS && err != EWOULDBLOCK
#ifndef WINCE
         && err != EAGAIN && err != EINTR
#endif
#ifdef _WIN32
         && WSAGetLastError() != WSAEINTR && WSAGetLastError() != WSAEWOULDBLOCK
#endif
      ;
}
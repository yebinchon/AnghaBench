; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_check_DHCP_timeout.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_check_DHCP_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DHCP_RUNNING = common dso_local global i32 0, align 4
@dhcp_retry_count = common dso_local global i64 0, align 8
@MAX_DHCP_RETRY = common dso_local global i64 0, align 8
@dhcp_tick_next = common dso_local global i64 0, align 8
@dhcp_tick_1s = common dso_local global i64 0, align 8
@dhcp_state = common dso_local global i32 0, align 4
@DHCP_WAIT_TIME = common dso_local global i64 0, align 8
@STATE_DHCP_INIT = common dso_local global i32 0, align 4
@DHCP_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_DHCP_timeout() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DHCP_RUNNING, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @dhcp_retry_count, align 8
  %4 = load i64, i64* @MAX_DHCP_RETRY, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %0
  %7 = load i64, i64* @dhcp_tick_next, align 8
  %8 = load i64, i64* @dhcp_tick_1s, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32, i32* @dhcp_state, align 4
  switch i32 %11, label %18 [
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

12:                                               ; preds = %10
  %13 = call i32 (...) @send_DHCP_DISCOVER()
  br label %19

14:                                               ; preds = %10
  %15 = call i32 (...) @send_DHCP_REQUEST()
  br label %19

16:                                               ; preds = %10
  %17 = call i32 (...) @send_DHCP_REQUEST()
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %16, %14, %12
  store i64 0, i64* @dhcp_tick_1s, align 8
  %20 = load i64, i64* @dhcp_tick_1s, align 8
  %21 = load i64, i64* @DHCP_WAIT_TIME, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* @dhcp_tick_next, align 8
  %23 = load i64, i64* @dhcp_retry_count, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* @dhcp_retry_count, align 8
  br label %25

25:                                               ; preds = %19, %6
  br label %36

26:                                               ; preds = %0
  %27 = load i32, i32* @dhcp_state, align 4
  switch i32 %27, label %33 [
    i32 130, label %28
    i32 129, label %31
    i32 128, label %31
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* @STATE_DHCP_INIT, align 4
  store i32 %29, i32* @dhcp_state, align 4
  %30 = load i32, i32* @DHCP_FAILED, align 4
  store i32 %30, i32* %1, align 4
  br label %34

31:                                               ; preds = %26, %26
  %32 = call i32 (...) @send_DHCP_DISCOVER()
  store i32 130, i32* @dhcp_state, align 4
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %31, %28
  %35 = call i32 (...) @reset_DHCP_timeout()
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @send_DHCP_DISCOVER(...) #1

declare dso_local i32 @send_DHCP_REQUEST(...) #1

declare dso_local i32 @reset_DHCP_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

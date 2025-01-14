; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_check_DHCP_leasedIP.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/internet/dhcp/extr_dhcp.c_check_DHCP_leasedIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DHCP_SOCKET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"CHECK_IP_CONFLICT\00", align 1
@DHCP_allocated_ip = common dso_local global i32 0, align 4
@SOCKERR_TIMEOUT = common dso_local global i64 0, align 8
@dhcp_tick_1s = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_DHCP_leasedIP() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = call i32 (...) @getRCR()
  store i32 %4, i32* %2, align 4
  %5 = call i32 @setRCR(i32 3)
  %6 = load i32, i32* @DHCP_SOCKET, align 4
  %7 = load i32, i32* @DHCP_allocated_ip, align 4
  %8 = call i64 @sendto(i32 %6, i32* bitcast ([18 x i8]* @.str to i32*), i32 17, i32 %7, i32 5000)
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @setRCR(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @SOCKERR_TIMEOUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %25

15:                                               ; preds = %0
  %16 = call i32 (...) @send_DHCP_DECLINE()
  %17 = load i64, i64* @dhcp_tick_1s, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %23, %15
  %19 = load i64, i64* @dhcp_tick_1s, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %19, %20
  %22 = icmp slt i64 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %18

24:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i32 @getRCR(...) #1

declare dso_local i32 @setRCR(i32) #1

declare dso_local i64 @sendto(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @send_DHCP_DECLINE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

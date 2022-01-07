; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_set_device_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_udpgso.c_set_device_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_ifname = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"device mtu (orig): %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unable to set device mtu to %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"device mtu (test): %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @set_device_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_device_mtu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @cfg_ifname, align 4
  %8 = call i32 @get_device_mtu(i32 %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @cfg_ifname, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @__set_device_mtu(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @cfg_ifname, align 4
  %18 = call i32 @get_device_mtu(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @error(i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  ret void
}

declare dso_local i32 @get_device_mtu(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @__set_device_mtu(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

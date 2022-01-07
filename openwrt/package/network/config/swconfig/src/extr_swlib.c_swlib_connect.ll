; ModuleID = '/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_connect.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/network/config/swconfig/src/extr_swlib.c_swlib_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.swlib_scan_arg = type { i8*, %struct.switch_dev*, i32* }

@refcount = common dso_local global i32 0, align 4
@SWITCH_CMD_GET_SWITCH = common dso_local global i32 0, align 4
@add_switch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.switch_dev* @swlib_connect(i8* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.swlib_scan_arg, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @refcount, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = call i64 (...) @swlib_priv_init()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.switch_dev* null, %struct.switch_dev** %2, align 8
  br label %27

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %4, i32 0, i32 1
  store %struct.switch_dev* null, %struct.switch_dev** %13, align 8
  %14 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %4, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %4, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @SWITCH_CMD_GET_SWITCH, align 4
  %18 = load i32, i32* @add_switch, align 4
  %19 = call i32 @swlib_call(i32 %17, i32 %18, i32* null, %struct.swlib_scan_arg* %4)
  %20 = load i32, i32* @refcount, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %12
  %23 = call i32 (...) @swlib_priv_free()
  br label %24

24:                                               ; preds = %22, %12
  %25 = getelementptr inbounds %struct.swlib_scan_arg, %struct.swlib_scan_arg* %4, i32 0, i32 1
  %26 = load %struct.switch_dev*, %struct.switch_dev** %25, align 8
  store %struct.switch_dev* %26, %struct.switch_dev** %2, align 8
  br label %27

27:                                               ; preds = %24, %10
  %28 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  ret %struct.switch_dev* %28
}

declare dso_local i64 @swlib_priv_init(...) #1

declare dso_local i32 @swlib_call(i32, i32, i32*, %struct.swlib_scan_arg*) #1

declare dso_local i32 @swlib_priv_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

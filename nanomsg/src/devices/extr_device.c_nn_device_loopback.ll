; ModuleID = '/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_loopback.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_device_recipe = type { i32 }

@NN_SOL_SOCKET = common dso_local global i32 0, align 4
@NN_DOMAIN = common dso_local global i32 0, align 4
@AF_SP_RAW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_device_loopback(%struct.nn_device_recipe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nn_device_recipe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nn_device_recipe* %0, %struct.nn_device_recipe** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 4, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @NN_SOL_SOCKET, align 4
  %11 = load i32, i32* @NN_DOMAIN, align 4
  %12 = call i32 @nn_getsockopt(i32 %9, i32 %10, i32 %11, i32* %7, i64* %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @nn_slow(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 4
  %22 = zext i1 %21 to i32
  %23 = call i32 @nn_assert(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @AF_SP_RAW, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %42

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %41, %29
  %31 = load %struct.nn_device_recipe*, %struct.nn_device_recipe** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nn_device_mvmsg(%struct.nn_device_recipe* %31, i32 %32, i32 %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i64 @nn_slow(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %42

41:                                               ; preds = %30
  br label %30

42:                                               ; preds = %40, %27, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @nn_getsockopt(i32, i32, i32, i32*, i64*) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_device_mvmsg(%struct.nn_device_recipe*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

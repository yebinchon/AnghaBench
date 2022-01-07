; ModuleID = '/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_mvmsg.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_mvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_device_recipe = type { i32 (%struct.nn_device_recipe*, i32, i32, i32, %struct.nn_msghdr*, i32)* }
%struct.nn_msghdr = type { i32, i8**, i8*, %struct.nn_iovec* }
%struct.nn_iovec = type { i8**, i8* }

@NN_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_device_mvmsg(%struct.nn_device_recipe* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nn_device_recipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.nn_iovec, align 8
  %14 = alloca %struct.nn_msghdr, align 8
  store %struct.nn_device_recipe* %0, %struct.nn_device_recipe** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %13, i32 0, i32 0
  store i8** %11, i8*** %15, align 8
  %16 = load i8*, i8** @NN_MSG, align 8
  %17 = getelementptr inbounds %struct.nn_iovec, %struct.nn_iovec* %13, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = call i32 @memset(%struct.nn_msghdr* %14, i32 0, i32 32)
  %19 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %14, i32 0, i32 3
  store %struct.nn_iovec* %13, %struct.nn_iovec** %19, align 8
  %20 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %14, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %14, i32 0, i32 1
  store i8** %12, i8*** %21, align 8
  %22 = load i8*, i8** @NN_MSG, align 8
  %23 = getelementptr inbounds %struct.nn_msghdr, %struct.nn_msghdr* %14, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @nn_recvmsg(i32 %24, %struct.nn_msghdr* %14, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @nn_slow(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %69

33:                                               ; preds = %4
  %34 = load %struct.nn_device_recipe*, %struct.nn_device_recipe** %6, align 8
  %35 = getelementptr inbounds %struct.nn_device_recipe, %struct.nn_device_recipe* %34, i32 0, i32 0
  %36 = load i32 (%struct.nn_device_recipe*, i32, i32, i32, %struct.nn_msghdr*, i32)*, i32 (%struct.nn_device_recipe*, i32, i32, i32, %struct.nn_msghdr*, i32)** %35, align 8
  %37 = load %struct.nn_device_recipe*, %struct.nn_device_recipe** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 %36(%struct.nn_device_recipe* %37, i32 %38, i32 %39, i32 %40, %struct.nn_msghdr* %14, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, -1
  %45 = zext i1 %44 to i32
  %46 = call i64 @nn_slow(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %69

49:                                               ; preds = %33
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %69

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i32
  %58 = call i32 @nn_assert(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @nn_sendmsg(i32 %59, %struct.nn_msghdr* %14, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @nn_slow(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %69

68:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %67, %52, %48, %32
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.nn_msghdr*, i32, i32) #1

declare dso_local i32 @nn_recvmsg(i32, %struct.nn_msghdr*, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_assert(i32) #1

declare dso_local i32 @nn_sendmsg(i32, %struct.nn_msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

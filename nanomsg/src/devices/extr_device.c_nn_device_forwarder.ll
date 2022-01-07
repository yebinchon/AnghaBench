; ModuleID = '/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_forwarder.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_forwarder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_device_forwarder_args = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nn_device_forwarder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_device_forwarder(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nn_device_forwarder_args*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.nn_device_forwarder_args*
  store %struct.nn_device_forwarder_args* %5, %struct.nn_device_forwarder_args** %3, align 8
  br label %6

6:                                                ; preds = %30, %1
  %7 = load %struct.nn_device_forwarder_args*, %struct.nn_device_forwarder_args** %3, align 8
  %8 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.nn_device_forwarder_args*, %struct.nn_device_forwarder_args** %3, align 8
  %11 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.nn_device_forwarder_args*, %struct.nn_device_forwarder_args** %3, align 8
  %14 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @nn_device_mvmsg(i32 %9, i32 %12, i32 %15, i32 0)
  %17 = load %struct.nn_device_forwarder_args*, %struct.nn_device_forwarder_args** %3, align 8
  %18 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.nn_device_forwarder_args*, %struct.nn_device_forwarder_args** %3, align 8
  %20 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @nn_slow(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = call i32 (...) @nn_errno()
  %28 = load %struct.nn_device_forwarder_args*, %struct.nn_device_forwarder_args** %3, align 8
  %29 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  ret void

30:                                               ; preds = %6
  br label %6
}

declare dso_local i64 @nn_device_mvmsg(i32, i32, i32, i32) #1

declare dso_local i64 @nn_slow(i32) #1

declare dso_local i32 @nn_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

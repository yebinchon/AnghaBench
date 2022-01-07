; ModuleID = '/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_twoway.c'
source_filename = "/home/carl/AnghaBench/nanomsg/src/devices/extr_device.c_nn_device_twoway.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_device_recipe = type { i32 }
%struct.nn_thread = type { i32 }
%struct.nn_device_forwarder_args = type { i32, i32, i64, i32, %struct.nn_device_recipe* }

@nn_device_forwarder = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_device_twoway(%struct.nn_device_recipe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nn_device_recipe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nn_thread, align 4
  %9 = alloca %struct.nn_thread, align 4
  %10 = alloca %struct.nn_device_forwarder_args, align 8
  %11 = alloca %struct.nn_device_forwarder_args, align 8
  store %struct.nn_device_recipe* %0, %struct.nn_device_recipe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nn_device_recipe*, %struct.nn_device_recipe** %5, align 8
  %13 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 4
  store %struct.nn_device_recipe* %12, %struct.nn_device_recipe** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.nn_device_recipe*, %struct.nn_device_recipe** %5, align 8
  %19 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %11, i32 0, i32 4
  store %struct.nn_device_recipe* %18, %struct.nn_device_recipe** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %11, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @nn_device_forwarder, align 4
  %25 = call i32 @nn_thread_init(%struct.nn_thread* %8, i32 %24, %struct.nn_device_forwarder_args* %10)
  %26 = load i32, i32* @nn_device_forwarder, align 4
  %27 = call i32 @nn_thread_init(%struct.nn_thread* %9, i32 %26, %struct.nn_device_forwarder_args* %11)
  %28 = call i32 @nn_thread_term(%struct.nn_thread* %8)
  %29 = call i32 @nn_thread_term(%struct.nn_thread* %9)
  %30 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* @errno, align 4
  %36 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %10, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %45

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %11, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @errno, align 4
  %42 = getelementptr inbounds %struct.nn_device_forwarder_args, %struct.nn_device_forwarder_args* %11, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @nn_thread_init(%struct.nn_thread*, i32, %struct.nn_device_forwarder_args*) #1

declare dso_local i32 @nn_thread_term(%struct.nn_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

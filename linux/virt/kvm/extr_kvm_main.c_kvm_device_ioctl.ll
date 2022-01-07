; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_device_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_device_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.file = type { %struct.kvm_device* }
%struct.kvm_device = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 (%struct.kvm_device*, i32, i64)*, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@EIO = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @kvm_device_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kvm_device_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.kvm_device*, %struct.kvm_device** %10, align 8
  store %struct.kvm_device* %11, %struct.kvm_device** %8, align 8
  %12 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %13 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @EIO, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %73

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %53 [
    i32 128, label %26
    i32 130, label %35
    i32 129, label %44
  ]

26:                                               ; preds = %24
  %27 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %28 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %29 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @kvm_device_ioctl_attr(%struct.kvm_device* %27, i32 %32, i64 %33)
  store i64 %34, i64* %4, align 8
  br label %73

35:                                               ; preds = %24
  %36 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %37 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %38 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %7, align 8
  %43 = call i64 @kvm_device_ioctl_attr(%struct.kvm_device* %36, i32 %41, i64 %42)
  store i64 %43, i64* %4, align 8
  br label %73

44:                                               ; preds = %24
  %45 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %46 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %47 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i64 @kvm_device_ioctl_attr(%struct.kvm_device* %45, i32 %50, i64 %51)
  store i64 %52, i64* %4, align 8
  br label %73

53:                                               ; preds = %24
  %54 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %55 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64 (%struct.kvm_device*, i32, i64)*, i64 (%struct.kvm_device*, i32, i64)** %57, align 8
  %59 = icmp ne i64 (%struct.kvm_device*, i32, i64)* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %62 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64 (%struct.kvm_device*, i32, i64)*, i64 (%struct.kvm_device*, i32, i64)** %64, align 8
  %66 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i64, i64* %7, align 8
  %69 = call i64 %65(%struct.kvm_device* %66, i32 %67, i64 %68)
  store i64 %69, i64* %4, align 8
  br label %73

70:                                               ; preds = %53
  %71 = load i64, i64* @ENOTTY, align 8
  %72 = sub nsw i64 0, %71
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %70, %60, %44, %35, %26, %21
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local i64 @kvm_device_ioctl_attr(%struct.kvm_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_io_bus_get_dev.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_io_bus_get_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_io_device = type { i32 }
%struct.kvm = type { i32, i32* }
%struct.kvm_io_bus = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kvm_io_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kvm_io_device* @kvm_io_bus_get_dev(%struct.kvm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_io_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_io_device*, align 8
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.kvm_io_device* null, %struct.kvm_io_device** %10, align 8
  %11 = load %struct.kvm*, %struct.kvm** %4, align 8
  %12 = getelementptr inbounds %struct.kvm, %struct.kvm* %11, i32 0, i32 0
  %13 = call i32 @srcu_read_lock(i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.kvm*, %struct.kvm** %4, align 8
  %15 = getelementptr inbounds %struct.kvm, %struct.kvm* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = getelementptr inbounds %struct.kvm, %struct.kvm* %21, i32 0, i32 0
  %23 = call %struct.kvm_io_bus* @srcu_dereference(i32 %20, i32* %22)
  store %struct.kvm_io_bus* %23, %struct.kvm_io_bus** %7, align 8
  %24 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %25 = icmp ne %struct.kvm_io_bus* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @kvm_io_bus_get_first_dev(%struct.kvm_io_bus* %28, i32 %29, i32 1)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %43

34:                                               ; preds = %27
  %35 = load %struct.kvm_io_bus*, %struct.kvm_io_bus** %7, align 8
  %36 = getelementptr inbounds %struct.kvm_io_bus, %struct.kvm_io_bus* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.kvm_io_device*, %struct.kvm_io_device** %41, align 8
  store %struct.kvm_io_device* %42, %struct.kvm_io_device** %10, align 8
  br label %43

43:                                               ; preds = %34, %33, %26
  %44 = load %struct.kvm*, %struct.kvm** %4, align 8
  %45 = getelementptr inbounds %struct.kvm, %struct.kvm* %44, i32 0, i32 0
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @srcu_read_unlock(i32* %45, i32 %46)
  %48 = load %struct.kvm_io_device*, %struct.kvm_io_device** %10, align 8
  ret %struct.kvm_io_device* %48
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local %struct.kvm_io_bus* @srcu_dereference(i32, i32*) #1

declare dso_local i32 @kvm_io_bus_get_first_dev(%struct.kvm_io_bus*, i32, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

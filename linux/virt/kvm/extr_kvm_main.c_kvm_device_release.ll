; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_kvm_main.c_kvm_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.kvm_device* }
%struct.kvm_device = type { %struct.TYPE_2__*, i32, %struct.kvm* }
%struct.TYPE_2__ = type { i32 (%struct.kvm_device*)* }
%struct.kvm = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @kvm_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_device_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.kvm_device*, align 8
  %6 = alloca %struct.kvm*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.kvm_device*, %struct.kvm_device** %8, align 8
  store %struct.kvm_device* %9, %struct.kvm_device** %5, align 8
  %10 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %10, i32 0, i32 2
  %12 = load %struct.kvm*, %struct.kvm** %11, align 8
  store %struct.kvm* %12, %struct.kvm** %6, align 8
  %13 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %14 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.kvm_device*)*, i32 (%struct.kvm_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.kvm_device*)* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load %struct.kvm*, %struct.kvm** %6, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %24 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %23, i32 0, i32 1
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_device, %struct.kvm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.kvm_device*)*, i32 (%struct.kvm_device*)** %29, align 8
  %31 = load %struct.kvm_device*, %struct.kvm_device** %5, align 8
  %32 = call i32 %30(%struct.kvm_device* %31)
  %33 = load %struct.kvm*, %struct.kvm** %6, align 8
  %34 = getelementptr inbounds %struct.kvm, %struct.kvm* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %19, %2
  %37 = load %struct.kvm*, %struct.kvm** %6, align 8
  %38 = call i32 @kvm_put_kvm(%struct.kvm* %37)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kvm_put_kvm(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

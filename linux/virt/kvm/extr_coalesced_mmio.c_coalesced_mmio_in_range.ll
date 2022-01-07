; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/extr_coalesced_mmio.c_coalesced_mmio_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_coalesced_mmio_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_coalesced_mmio_dev*, i64, i32)* @coalesced_mmio_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalesced_mmio_in_range(%struct.kvm_coalesced_mmio_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_coalesced_mmio_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_coalesced_mmio_dev* %0, %struct.kvm_coalesced_mmio_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %44

19:                                               ; preds = %11
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %5, align 8
  %22 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.kvm_coalesced_mmio_dev*, %struct.kvm_coalesced_mmio_dev** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_coalesced_mmio_dev, %struct.kvm_coalesced_mmio_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = icmp sgt i64 %31, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %26, %18, %10
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

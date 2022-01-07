; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_iter_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_iter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.vgic_state_iter = type { i32, i64, i32, i32 }

@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.vgic_state_iter*, i32)* @iter_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iter_init(%struct.kvm* %0, %struct.vgic_state_iter* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.vgic_state_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.vgic_state_iter* %1, %struct.vgic_state_iter** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 1
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %12 = call i32 @memset(%struct.vgic_state_iter* %11, i32 0, i32 24)
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %15 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %22 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V3, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = load %struct.kvm*, %struct.kvm** %4, align 8
  %32 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %33 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %32, i32 0, i32 2
  %34 = call i64 @vgic_copy_lpi_list(%struct.kvm* %31, i32* null, i32* %33)
  %35 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %36 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %38 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %43 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %41, %30
  br label %45

45:                                               ; preds = %44, %3
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %5, align 8
  %52 = call i32 @iter_next(%struct.vgic_state_iter* %51)
  br label %46

53:                                               ; preds = %46
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @memset(%struct.vgic_state_iter*, i32, i32) #1

declare dso_local i64 @vgic_copy_lpi_list(%struct.kvm*, i32*, i32*) #1

declare dso_local i32 @iter_next(%struct.vgic_state_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

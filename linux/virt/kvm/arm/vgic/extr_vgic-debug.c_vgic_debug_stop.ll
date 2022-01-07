; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_vgic_debug_stop.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_vgic_debug_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.kvm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vgic_state_iter* }
%struct.vgic_state_iter = type { %struct.vgic_state_iter* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*)* @vgic_debug_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_debug_stop(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_state_iter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.kvm*
  store %struct.kvm* %10, %struct.kvm** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i64 @IS_ERR(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.kvm*, %struct.kvm** %5, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.kvm*, %struct.kvm** %5, align 8
  %20 = getelementptr inbounds %struct.kvm, %struct.kvm* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %22, align 8
  store %struct.vgic_state_iter* %23, %struct.vgic_state_iter** %6, align 8
  %24 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %6, align 8
  %25 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %24, i32 0, i32 0
  %26 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %25, align 8
  %27 = call i32 @kfree(%struct.vgic_state_iter* %26)
  %28 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %6, align 8
  %29 = call i32 @kfree(%struct.vgic_state_iter* %28)
  %30 = load %struct.kvm*, %struct.kvm** %5, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.vgic_state_iter* null, %struct.vgic_state_iter** %33, align 8
  %34 = load %struct.kvm*, %struct.kvm** %5, align 8
  %35 = getelementptr inbounds %struct.kvm, %struct.kvm* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %15, %14
  ret void
}

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.vgic_state_iter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

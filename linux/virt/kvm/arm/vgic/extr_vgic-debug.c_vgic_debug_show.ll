; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_vgic_debug_show.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_vgic_debug_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vgic_state_iter = type { i64, i64, i64, i32 }
%struct.vgic_irq = type { i32 }
%struct.kvm_vcpu = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"       LPI %4d freed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @vgic_debug_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_debug_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kvm*, align 8
  %7 = alloca %struct.vgic_state_iter*, align 8
  %8 = alloca %struct.vgic_irq*, align 8
  %9 = alloca %struct.kvm_vcpu*, align 8
  %10 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.kvm*
  store %struct.kvm* %14, %struct.kvm** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.vgic_state_iter*
  store %struct.vgic_state_iter* %16, %struct.vgic_state_iter** %7, align 8
  store %struct.kvm_vcpu* null, %struct.kvm_vcpu** %9, align 8
  %17 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %7, align 8
  %18 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %23 = load %struct.kvm*, %struct.kvm** %6, align 8
  %24 = getelementptr inbounds %struct.kvm, %struct.kvm* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @print_dist_state(%struct.seq_file* %22, %struct.TYPE_4__* %25)
  store i32 0, i32* %3, align 4
  br label %80

27:                                               ; preds = %2
  %28 = load %struct.kvm*, %struct.kvm** %6, align 8
  %29 = getelementptr inbounds %struct.kvm, %struct.kvm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %80

35:                                               ; preds = %27
  %36 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %7, align 8
  %37 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %7, align 8
  %40 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.kvm*, %struct.kvm** %6, align 8
  %45 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %7, align 8
  %46 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm* %44, i64 %47)
  store %struct.kvm_vcpu* %48, %struct.kvm_vcpu** %9, align 8
  br label %49

49:                                               ; preds = %43, %35
  %50 = load %struct.kvm*, %struct.kvm** %6, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %52 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %7, align 8
  %53 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call %struct.vgic_irq* @vgic_get_irq(%struct.kvm* %50, %struct.kvm_vcpu* %51, i32 %54)
  store %struct.vgic_irq* %55, %struct.vgic_irq** %8, align 8
  %56 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %57 = icmp ne %struct.vgic_irq* %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %49
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = load %struct.vgic_state_iter*, %struct.vgic_state_iter** %7, align 8
  %61 = getelementptr inbounds %struct.vgic_state_iter, %struct.vgic_state_iter* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  br label %80

64:                                               ; preds = %49
  %65 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %66 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %65, i32 0, i32 0
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @raw_spin_lock_irqsave(i32* %66, i64 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %9, align 8
  %72 = call i32 @print_irq_state(%struct.seq_file* %69, %struct.vgic_irq* %70, %struct.kvm_vcpu* %71)
  %73 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %74 = getelementptr inbounds %struct.vgic_irq, %struct.vgic_irq* %73, i32 0, i32 0
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @raw_spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.kvm*, %struct.kvm** %6, align 8
  %78 = load %struct.vgic_irq*, %struct.vgic_irq** %8, align 8
  %79 = call i32 @vgic_put_irq(%struct.kvm* %77, %struct.vgic_irq* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %64, %58, %34, %21
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @print_dist_state(%struct.seq_file*, %struct.TYPE_4__*) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu(%struct.kvm*, i64) #1

declare dso_local %struct.vgic_irq* @vgic_get_irq(%struct.kvm*, %struct.kvm_vcpu*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @print_irq_state(%struct.seq_file*, %struct.vgic_irq*, %struct.kvm_vcpu*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vgic_put_irq(%struct.kvm*, %struct.vgic_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

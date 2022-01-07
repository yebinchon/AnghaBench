; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_print_dist_state.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-debug.c_print_dist_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vgic_dist = type { i64, i32, i32, i32 }

@KVM_DEV_TYPE_ARM_VGIC_V3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Distributor\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"===========\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vgic_model:\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"GICv3\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"GICv2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"nr_spis:\09%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"nr_lpis:\09%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"enabled:\09%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"P=pending_latch, L=line_level, A=active\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"E=enabled, H=hw, C=config (level=1, edge=0)\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"G=group\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.vgic_dist*)* @print_dist_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dist_state(%struct.seq_file* %0, %struct.vgic_dist* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vgic_dist*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vgic_dist* %1, %struct.vgic_dist** %4, align 8
  %6 = load %struct.vgic_dist*, %struct.vgic_dist** %4, align 8
  %7 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KVM_DEV_TYPE_ARM_VGIC_V3, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %21 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.vgic_dist*, %struct.vgic_dist** %4, align 8
  %24 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.vgic_dist*, %struct.vgic_dist** %4, align 8
  %32 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load %struct.vgic_dist*, %struct.vgic_dist** %4, align 8
  %38 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_process_commands.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_process_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i64, i64, i32, i32 }

@ITS_CMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm*, %struct.vgic_its*)* @vgic_its_process_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgic_its_process_commands(%struct.kvm* %0, %struct.vgic_its* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.vgic_its*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %4, align 8
  %8 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %9 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @GITS_CBASER_ADDRESS(i32 %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %60, %13
  %19 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %20 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %23 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %61

26:                                               ; preds = %18
  %27 = load %struct.kvm*, %struct.kvm** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %30 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %34 = load i64, i64* @ITS_CMD_SIZE, align 8
  %35 = call i32 @kvm_read_guest_lock(%struct.kvm* %27, i64 %32, i32* %33, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %26
  %39 = load %struct.kvm*, %struct.kvm** %3, align 8
  %40 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %42 = call i32 @vgic_its_handle_command(%struct.kvm* %39, %struct.vgic_its* %40, i32* %41)
  br label %43

43:                                               ; preds = %38, %26
  %44 = load i64, i64* @ITS_CMD_SIZE, align 8
  %45 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %46 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  %49 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %50 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %53 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @ITS_CMD_BUFFER_SIZE(i32 %54)
  %56 = icmp eq i64 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load %struct.vgic_its*, %struct.vgic_its** %4, align 8
  %59 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %43
  br label %18

61:                                               ; preds = %12, %18
  ret void
}

declare dso_local i64 @GITS_CBASER_ADDRESS(i32) #1

declare dso_local i32 @kvm_read_guest_lock(%struct.kvm*, i64, i32*, i64) #1

declare dso_local i32 @vgic_its_handle_command(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i64 @ITS_CMD_BUFFER_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

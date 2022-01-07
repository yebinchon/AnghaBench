; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_mapd.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_cmd_handle_mapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }
%struct.its_device = type { i32 }

@E_ITS_MAPD_DEVICE_OOR = common dso_local global i32 0, align 4
@VITS_TYPER_IDBITS = common dso_local global i64 0, align 8
@E_ITS_MAPD_ITTSIZE_OOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_cmd_handle_mapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_cmd_handle_mapd(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.its_device*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @its_cmd_get_deviceid(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @its_cmd_get_validbit(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @its_cmd_get_size(i32* %17)
  store i64 %18, i64* %10, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @its_cmd_get_ittaddr(i32* %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %22 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %23 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @vgic_its_check_id(%struct.vgic_its* %21, i32 %24, i32 %25, i32* null)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @E_ITS_MAPD_DEVICE_OOR, align 4
  store i32 %29, i32* %4, align 4
  br label %61

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @VITS_TYPER_IDBITS, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @E_ITS_MAPD_ITTSIZE_OOR, align 4
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %33, %30
  %40 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.its_device* @find_its_device(%struct.vgic_its* %40, i32 %41)
  store %struct.its_device* %42, %struct.its_device** %12, align 8
  %43 = load %struct.its_device*, %struct.its_device** %12, align 8
  %44 = icmp ne %struct.its_device* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.kvm*, %struct.kvm** %5, align 8
  %47 = load %struct.its_device*, %struct.its_device** %12, align 8
  %48 = call i32 @vgic_its_free_device(%struct.kvm* %46, %struct.its_device* %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %61

53:                                               ; preds = %49
  %54 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i64, i64* %10, align 8
  %58 = call %struct.its_device* @vgic_its_alloc_device(%struct.vgic_its* %54, i32 %55, i32 %56, i64 %57)
  store %struct.its_device* %58, %struct.its_device** %12, align 8
  %59 = load %struct.its_device*, %struct.its_device** %12, align 8
  %60 = call i32 @PTR_ERR_OR_ZERO(%struct.its_device* %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %53, %52, %37, %28
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @its_cmd_get_deviceid(i32*) #1

declare dso_local i32 @its_cmd_get_validbit(i32*) #1

declare dso_local i64 @its_cmd_get_size(i32*) #1

declare dso_local i32 @its_cmd_get_ittaddr(i32*) #1

declare dso_local i32 @vgic_its_check_id(%struct.vgic_its*, i32, i32, i32*) #1

declare dso_local %struct.its_device* @find_its_device(%struct.vgic_its*, i32) #1

declare dso_local i32 @vgic_its_free_device(%struct.kvm*, %struct.its_device*) #1

declare dso_local %struct.its_device* @vgic_its_alloc_device(%struct.vgic_its*, i32, i32, i64) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.its_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

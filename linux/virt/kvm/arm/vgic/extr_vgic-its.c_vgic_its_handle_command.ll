; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_handle_command.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_handle_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.vgic_its = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.vgic_its*, i32*)* @vgic_its_handle_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_handle_command(%struct.kvm* %0, %struct.vgic_its* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca %struct.vgic_its*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store %struct.vgic_its* %1, %struct.vgic_its** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %11 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @its_cmd_get_command(i32* %13)
  switch i32 %14, label %71 [
    i32 133, label %15
    i32 134, label %20
    i32 132, label %25
    i32 131, label %30
    i32 129, label %35
    i32 138, label %40
    i32 139, label %45
    i32 130, label %50
    i32 137, label %55
    i32 136, label %60
    i32 135, label %65
    i32 128, label %70
  ]

15:                                               ; preds = %3
  %16 = load %struct.kvm*, %struct.kvm** %4, align 8
  %17 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @vgic_its_cmd_handle_mapd(%struct.kvm* %16, %struct.vgic_its* %17, i32* %18)
  store i32 %19, i32* %7, align 4
  br label %71

20:                                               ; preds = %3
  %21 = load %struct.kvm*, %struct.kvm** %4, align 8
  %22 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @vgic_its_cmd_handle_mapc(%struct.kvm* %21, %struct.vgic_its* %22, i32* %23)
  store i32 %24, i32* %7, align 4
  br label %71

25:                                               ; preds = %3
  %26 = load %struct.kvm*, %struct.kvm** %4, align 8
  %27 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @vgic_its_cmd_handle_mapi(%struct.kvm* %26, %struct.vgic_its* %27, i32* %28)
  store i32 %29, i32* %7, align 4
  br label %71

30:                                               ; preds = %3
  %31 = load %struct.kvm*, %struct.kvm** %4, align 8
  %32 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @vgic_its_cmd_handle_mapi(%struct.kvm* %31, %struct.vgic_its* %32, i32* %33)
  store i32 %34, i32* %7, align 4
  br label %71

35:                                               ; preds = %3
  %36 = load %struct.kvm*, %struct.kvm** %4, align 8
  %37 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @vgic_its_cmd_handle_movi(%struct.kvm* %36, %struct.vgic_its* %37, i32* %38)
  store i32 %39, i32* %7, align 4
  br label %71

40:                                               ; preds = %3
  %41 = load %struct.kvm*, %struct.kvm** %4, align 8
  %42 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @vgic_its_cmd_handle_discard(%struct.kvm* %41, %struct.vgic_its* %42, i32* %43)
  store i32 %44, i32* %7, align 4
  br label %71

45:                                               ; preds = %3
  %46 = load %struct.kvm*, %struct.kvm** %4, align 8
  %47 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @vgic_its_cmd_handle_clear(%struct.kvm* %46, %struct.vgic_its* %47, i32* %48)
  store i32 %49, i32* %7, align 4
  br label %71

50:                                               ; preds = %3
  %51 = load %struct.kvm*, %struct.kvm** %4, align 8
  %52 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @vgic_its_cmd_handle_movall(%struct.kvm* %51, %struct.vgic_its* %52, i32* %53)
  store i32 %54, i32* %7, align 4
  br label %71

55:                                               ; preds = %3
  %56 = load %struct.kvm*, %struct.kvm** %4, align 8
  %57 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @vgic_its_cmd_handle_int(%struct.kvm* %56, %struct.vgic_its* %57, i32* %58)
  store i32 %59, i32* %7, align 4
  br label %71

60:                                               ; preds = %3
  %61 = load %struct.kvm*, %struct.kvm** %4, align 8
  %62 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @vgic_its_cmd_handle_inv(%struct.kvm* %61, %struct.vgic_its* %62, i32* %63)
  store i32 %64, i32* %7, align 4
  br label %71

65:                                               ; preds = %3
  %66 = load %struct.kvm*, %struct.kvm** %4, align 8
  %67 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @vgic_its_cmd_handle_invall(%struct.kvm* %66, %struct.vgic_its* %67, i32* %68)
  store i32 %69, i32* %7, align 4
  br label %71

70:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %3, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %15
  %72 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %73 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %72, i32 0, i32 0
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @its_cmd_get_command(i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_mapd(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_mapc(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_mapi(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_movi(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_discard(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_clear(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_movall(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_int(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_inv(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @vgic_its_cmd_handle_invall(%struct.kvm*, %struct.vgic_its*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

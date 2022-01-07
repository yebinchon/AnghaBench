; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_alloc_collection.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_alloc_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { i32, i32 }
%struct.its_collection = type { i32, i32, i32 }

@E_ITS_MAPC_COLLECTION_OOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@COLLECTION_NOT_MAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, %struct.its_collection**, i32)* @vgic_its_alloc_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_alloc_collection(%struct.vgic_its* %0, %struct.its_collection** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vgic_its*, align 8
  %6 = alloca %struct.its_collection**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.its_collection*, align 8
  store %struct.vgic_its* %0, %struct.vgic_its** %5, align 8
  store %struct.its_collection** %1, %struct.its_collection*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %10 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %11 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @vgic_its_check_id(%struct.vgic_its* %9, i32 %12, i32 %13, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @E_ITS_MAPC_COLLECTION_OOR, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.its_collection* @kzalloc(i32 12, i32 %19)
  store %struct.its_collection* %20, %struct.its_collection** %8, align 8
  %21 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %22 = icmp ne %struct.its_collection* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %40

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %29 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @COLLECTION_NOT_MAPPED, align 4
  %31 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %32 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %34 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %33, i32 0, i32 0
  %35 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %36 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %35, i32 0, i32 0
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %39 = load %struct.its_collection**, %struct.its_collection*** %6, align 8
  store %struct.its_collection* %38, %struct.its_collection** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %26, %23, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @vgic_its_check_id(%struct.vgic_its*, i32, i32, i32*) #1

declare dso_local %struct.its_collection* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

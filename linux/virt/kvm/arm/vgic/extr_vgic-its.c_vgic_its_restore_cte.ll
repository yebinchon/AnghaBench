; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_cte.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_restore_cte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.its_collection = type { i64 }

@KVM_ITS_CTE_VALID_MASK = common dso_local global i64 0, align 8
@KVM_ITS_CTE_RDBASE_SHIFT = common dso_local global i64 0, align 8
@KVM_ITS_CTE_ICID_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i32, i32)* @vgic_its_restore_cte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_restore_cte(%struct.vgic_its* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vgic_its*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.its_collection*, align 8
  %9 = alloca %struct.kvm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %15 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.kvm*, %struct.kvm** %17, align 8
  store %struct.kvm* %18, %struct.kvm** %9, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ugt i64 %20, 8
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.kvm*, %struct.kvm** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @kvm_read_guest_lock(%struct.kvm* %24, i32 %25, i64* %12, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %3
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @le64_to_cpu(i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* @KVM_ITS_CTE_VALID_MASK, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %76

40:                                               ; preds = %32
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @KVM_ITS_CTE_RDBASE_SHIFT, align 8
  %43 = ashr i64 %41, %42
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @KVM_ITS_CTE_ICID_MASK, align 8
  %46 = and i64 %44, %45
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.kvm*, %struct.kvm** %9, align 8
  %49 = getelementptr inbounds %struct.kvm, %struct.kvm* %48, i32 0, i32 0
  %50 = call i64 @atomic_read(i32* %49)
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %40
  %56 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call %struct.its_collection* @find_collection(%struct.vgic_its* %56, i64 %57)
  store %struct.its_collection* %58, %struct.its_collection** %8, align 8
  %59 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %60 = icmp ne %struct.its_collection* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EEXIST, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %76

64:                                               ; preds = %55
  %65 = load %struct.vgic_its*, %struct.vgic_its** %5, align 8
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @vgic_its_alloc_collection(%struct.vgic_its* %65, %struct.its_collection** %8, i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %76

72:                                               ; preds = %64
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.its_collection*, %struct.its_collection** %8, align 8
  %75 = getelementptr inbounds %struct.its_collection, %struct.its_collection* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %70, %61, %52, %39, %30
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_read_guest_lock(%struct.kvm*, i32, i64*, i32) #1

declare dso_local i64 @le64_to_cpu(i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.its_collection* @find_collection(%struct.vgic_its*, i64) #1

declare dso_local i32 @vgic_its_alloc_collection(%struct.vgic_its*, %struct.its_collection**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

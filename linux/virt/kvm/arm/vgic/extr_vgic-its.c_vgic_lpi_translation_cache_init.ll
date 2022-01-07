; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_lpi_translation_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_lpi_translation_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vgic_dist }
%struct.vgic_dist = type { i32 }
%struct.vgic_translation_cache_entry = type { i32 }

@LPI_DEFAULT_PCPU_CACHE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vgic_lpi_translation_cache_init(%struct.kvm* %0) #0 {
  %2 = alloca %struct.kvm*, align 8
  %3 = alloca %struct.vgic_dist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgic_translation_cache_entry*, align 8
  store %struct.kvm* %0, %struct.kvm** %2, align 8
  %7 = load %struct.kvm*, %struct.kvm** %2, align 8
  %8 = getelementptr inbounds %struct.kvm, %struct.kvm* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.vgic_dist* %9, %struct.vgic_dist** %3, align 8
  %10 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %11 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %10, i32 0, i32 0
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.kvm*, %struct.kvm** %2, align 8
  %17 = getelementptr inbounds %struct.kvm, %struct.kvm* %16, i32 0, i32 0
  %18 = call i32 @atomic_read(i32* %17)
  %19 = load i32, i32* @LPI_DEFAULT_PCPU_CACHE_SIZE, align 4
  %20 = mul i32 %18, %19
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %44, %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.vgic_translation_cache_entry* @kzalloc(i32 4, i32 %26)
  store %struct.vgic_translation_cache_entry* %27, %struct.vgic_translation_cache_entry** %6, align 8
  %28 = load %struct.vgic_translation_cache_entry*, %struct.vgic_translation_cache_entry** %6, align 8
  %29 = icmp ne %struct.vgic_translation_cache_entry* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %47

35:                                               ; preds = %25
  %36 = load %struct.vgic_translation_cache_entry*, %struct.vgic_translation_cache_entry** %6, align 8
  %37 = getelementptr inbounds %struct.vgic_translation_cache_entry, %struct.vgic_translation_cache_entry* %36, i32 0, i32 0
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.vgic_translation_cache_entry*, %struct.vgic_translation_cache_entry** %6, align 8
  %40 = getelementptr inbounds %struct.vgic_translation_cache_entry, %struct.vgic_translation_cache_entry* %39, i32 0, i32 0
  %41 = load %struct.vgic_dist*, %struct.vgic_dist** %3, align 8
  %42 = getelementptr inbounds %struct.vgic_dist, %struct.vgic_dist* %41, i32 0, i32 0
  %43 = call i32 @list_add(i32* %40, i32* %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %21

47:                                               ; preds = %14, %34, %21
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.vgic_translation_cache_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

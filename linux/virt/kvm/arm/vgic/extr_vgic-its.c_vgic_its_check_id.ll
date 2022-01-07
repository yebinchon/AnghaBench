; ModuleID = '/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_check_id.c'
source_filename = "/home/carl/AnghaBench/linux/virt/kvm/arm/vgic/extr_vgic-its.c_vgic_its_check_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgic_its = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@SZ_64K = common dso_local global i32 0, align 4
@VITS_TYPER_DEVBITS = common dso_local global i32 0, align 4
@GITS_BASER_INDIRECT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vgic_its*, i32, i32, i32*)* @vgic_its_check_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgic_its_check_id(%struct.vgic_its* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vgic_its*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vgic_its* %0, %struct.vgic_its** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GITS_BASER_NR_PAGES(i32 %20)
  %22 = load i32, i32* @SZ_64K, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @GITS_BASER_TYPE(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @GITS_BASER_ADDR_48_to_52(i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @GITS_BASER_ENTRY_SIZE(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %44 [
    i32 128, label %31
    i32 129, label %38
  ]

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @VITS_TYPER_DEVBITS, align 4
  %34 = call i32 @BIT_ULL(i32 %33)
  %35 = icmp sge i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %156

37:                                               ; preds = %31
  br label %45

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @BIT_ULL(i32 16)
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %156

43:                                               ; preds = %38
  br label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %156

45:                                               ; preds = %43, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @GITS_BASER_INDIRECT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %14, align 4
  %54 = sdiv i32 %52, %53
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %156

57:                                               ; preds = %50
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %14, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %58, %61
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* @PAGE_SHIFT, align 4
  %65 = ashr i32 %63, %64
  store i32 %65, i32* %17, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %19, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %57
  br label %132

72:                                               ; preds = %45
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SZ_64K, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sdiv i32 %74, %75
  %77 = sdiv i32 %73, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = udiv i64 %81, 4
  %83 = icmp uge i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  store i32 0, i32* %5, align 4
  br label %156

85:                                               ; preds = %72
  %86 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %87 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = add i64 %92, %95
  %97 = trunc i64 %96 to i32
  %98 = call i64 @kvm_read_guest_lock(%struct.TYPE_5__* %90, i32 %97, i32* %11, i32 4)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %156

101:                                              ; preds = %85
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @le64_to_cpu(i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @BIT_ULL(i32 63)
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %156

109:                                              ; preds = %101
  %110 = call i32 @GENMASK_ULL(i32 51, i32 16)
  %111 = load i32, i32* %11, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @SZ_64K, align 4
  %115 = load i32, i32* %14, align 4
  %116 = sdiv i32 %114, %115
  %117 = srem i32 %113, %116
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %14, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @PAGE_SHIFT, align 4
  %125 = ashr i32 %123, %124
  store i32 %125, i32* %17, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %109
  %129 = load i32, i32* %11, align 4
  %130 = load i32*, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %109
  br label %132

132:                                              ; preds = %131, %71
  %133 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %134 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i32 @srcu_read_lock(i32* %138)
  store i32 %139, i32* %16, align 4
  %140 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %141 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @kvm_is_visible_gfn(%struct.TYPE_5__* %144, i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load %struct.vgic_its*, %struct.vgic_its** %6, align 8
  %148 = getelementptr inbounds %struct.vgic_its, %struct.vgic_its* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @srcu_read_unlock(i32* %152, i32 %153)
  %155 = load i32, i32* %18, align 4
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %132, %108, %100, %84, %56, %44, %42, %36
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @GITS_BASER_NR_PAGES(i32) #1

declare dso_local i32 @GITS_BASER_TYPE(i32) #1

declare dso_local i32 @GITS_BASER_ADDR_48_to_52(i32) #1

declare dso_local i32 @GITS_BASER_ENTRY_SIZE(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i64 @kvm_read_guest_lock(%struct.TYPE_5__*, i32, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvm_is_visible_gfn(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

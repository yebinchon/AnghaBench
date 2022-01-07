; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_ext_vk_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_ext_vk_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, %struct.cuda_mapper_priv*, %struct.TYPE_3__* }
%struct.cuda_mapper_priv = type { %struct.ext_vk** }
%struct.ext_vk = type { i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i64)*, i32 (i64)*, i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_hwdec_mapper*, i32)* @cuda_ext_vk_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cuda_ext_vk_uninit(%struct.ra_hwdec_mapper* %0, i32 %1) #0 {
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuda_hw_priv*, align 8
  %6 = alloca %struct.cuda_mapper_priv*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.ext_vk*, align 8
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %10 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %12, align 8
  store %struct.cuda_hw_priv* %13, %struct.cuda_hw_priv** %5, align 8
  %14 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %15 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %14, i32 0, i32 1
  %16 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %15, align 8
  store %struct.cuda_mapper_priv* %16, %struct.cuda_mapper_priv** %6, align 8
  %17 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %18 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %6, align 8
  %21 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %20, i32 0, i32 0
  %22 = load %struct.ext_vk**, %struct.ext_vk*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ext_vk*, %struct.ext_vk** %22, i64 %24
  %26 = load %struct.ext_vk*, %struct.ext_vk** %25, align 8
  store %struct.ext_vk* %26, %struct.ext_vk** %8, align 8
  %27 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %28 = icmp ne %struct.ext_vk* %27, null
  br i1 %28, label %29, label %101

29:                                               ; preds = %2
  %30 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %31 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32 (i64)*, i32 (i64)** %36, align 8
  %38 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %39 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = call i32 %37(i64 %40)
  %42 = call i32 @CHECK_CU(i32 %41)
  %43 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %44 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %47 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32 (i64)*, i32 (i64)** %52, align 8
  %54 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %55 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i32 %53(i64 %56)
  %58 = call i32 @CHECK_CU(i32 %57)
  %59 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %60 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %50, %45
  %62 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %63 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32 (i64)*, i32 (i64)** %68, align 8
  %70 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %71 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call i32 %69(i64 %72)
  %74 = call i32 @CHECK_CU(i32 %73)
  %75 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %76 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %66, %61
  %78 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %79 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32 (i64)*, i32 (i64)** %84, align 8
  %86 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %87 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 %85(i64 %88)
  %90 = call i32 @CHECK_CU(i32 %89)
  %91 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %92 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %82, %77
  %94 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %95 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ra_pl_get(i32 %96)
  %98 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %99 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %98, i32 0, i32 0
  %100 = call i32 @pl_sync_destroy(i32 %97, i32* %99)
  br label %101

101:                                              ; preds = %93, %2
  %102 = load %struct.ext_vk*, %struct.ext_vk** %8, align 8
  %103 = call i32 @talloc_free(%struct.ext_vk* %102)
  ret void
}

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @pl_sync_destroy(i32, i32*) #1

declare dso_local i32 @ra_pl_get(i32) #1

declare dso_local i32 @talloc_free(%struct.ext_vk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

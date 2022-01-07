; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_ext_vk_wait.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_ext_vk_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { i32, %struct.cuda_mapper_priv*, %struct.TYPE_5__* }
%struct.cuda_mapper_priv = type { %struct.ext_vk** }
%struct.ext_vk = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.TYPE_7__*, i32, i32)* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, i32)* @cuda_ext_vk_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_ext_vk_wait(%struct.ra_hwdec_mapper* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ra_hwdec_mapper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cuda_hw_priv*, align 8
  %7 = alloca %struct.cuda_mapper_priv*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext_vk*, align 8
  %11 = alloca %struct.TYPE_7__, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %13 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %15, align 8
  store %struct.cuda_hw_priv* %16, %struct.cuda_hw_priv** %6, align 8
  %17 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %18 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %17, i32 0, i32 1
  %19 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %18, align 8
  store %struct.cuda_mapper_priv* %19, %struct.cuda_mapper_priv** %7, align 8
  %20 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %6, align 8
  %21 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %8, align 8
  %23 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %7, align 8
  %24 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %23, i32 0, i32 0
  %25 = load %struct.ext_vk**, %struct.ext_vk*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ext_vk*, %struct.ext_vk** %25, i64 %27
  %29 = load %struct.ext_vk*, %struct.ext_vk** %28, align 8
  store %struct.ext_vk* %29, %struct.ext_vk** %10, align 8
  %30 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %4, align 8
  %31 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ra_pl_get(i32 %32)
  %34 = load %struct.ext_vk*, %struct.ext_vk** %10, align 8
  %35 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ext_vk*, %struct.ext_vk** %10, align 8
  %38 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pl_tex_export(i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

44:                                               ; preds = %2
  %45 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %45, i8 0, i64 4, i1 false)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32 (i32*, %struct.TYPE_7__*, i32, i32)*, i32 (i32*, %struct.TYPE_7__*, i32, i32)** %47, align 8
  %49 = load %struct.ext_vk*, %struct.ext_vk** %10, align 8
  %50 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %49, i32 0, i32 0
  %51 = call i32 %48(i32* %50, %struct.TYPE_7__* %11, i32 1, i32 0)
  %52 = call i32 @CHECK_CU(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %44, %43
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @pl_tex_export(i32, i32, i32) #1

declare dso_local i32 @ra_pl_get(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @CHECK_CU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

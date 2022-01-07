; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_ext_vk_signal.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_vk.c_cuda_ext_vk_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec_mapper = type { %struct.cuda_mapper_priv*, %struct.TYPE_5__* }
%struct.cuda_mapper_priv = type { %struct.ext_vk** }
%struct.ext_vk = type { i32 }
%struct.TYPE_5__ = type { %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32*, %struct.TYPE_7__*, i32, i32)* }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ra_hwdec_mapper*, i32)* @cuda_ext_vk_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cuda_ext_vk_signal(%struct.ra_hwdec_mapper* %0, i32 %1) #0 {
  %3 = alloca %struct.ra_hwdec_mapper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuda_hw_priv*, align 8
  %6 = alloca %struct.cuda_mapper_priv*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ext_vk*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  store %struct.ra_hwdec_mapper* %0, %struct.ra_hwdec_mapper** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %12 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %14, align 8
  store %struct.cuda_hw_priv* %15, %struct.cuda_hw_priv** %5, align 8
  %16 = load %struct.ra_hwdec_mapper*, %struct.ra_hwdec_mapper** %3, align 8
  %17 = getelementptr inbounds %struct.ra_hwdec_mapper, %struct.ra_hwdec_mapper* %16, i32 0, i32 0
  %18 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %17, align 8
  store %struct.cuda_mapper_priv* %18, %struct.cuda_mapper_priv** %6, align 8
  %19 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %20 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.cuda_mapper_priv*, %struct.cuda_mapper_priv** %6, align 8
  %23 = getelementptr inbounds %struct.cuda_mapper_priv, %struct.cuda_mapper_priv* %22, i32 0, i32 0
  %24 = load %struct.ext_vk**, %struct.ext_vk*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ext_vk*, %struct.ext_vk** %24, i64 %26
  %28 = load %struct.ext_vk*, %struct.ext_vk** %27, align 8
  store %struct.ext_vk* %28, %struct.ext_vk** %9, align 8
  %29 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (i32*, %struct.TYPE_7__*, i32, i32)*, i32 (i32*, %struct.TYPE_7__*, i32, i32)** %31, align 8
  %33 = load %struct.ext_vk*, %struct.ext_vk** %9, align 8
  %34 = getelementptr inbounds %struct.ext_vk, %struct.ext_vk* %33, i32 0, i32 0
  %35 = call i32 %32(i32* %34, %struct.TYPE_7__* %10, i32 1, i32 0)
  %36 = call i32 @CHECK_CU(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHECK_CU(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

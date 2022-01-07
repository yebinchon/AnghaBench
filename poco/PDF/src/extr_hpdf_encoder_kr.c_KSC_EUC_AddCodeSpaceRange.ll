; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_kr.c_KSC_EUC_AddCodeSpaceRange.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_encoder_kr.c_KSC_EUC_AddCodeSpaceRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@__const.KSC_EUC_AddCodeSpaceRange.code_space_range1 = private unnamed_addr constant %struct.TYPE_9__ { i32 0, i32 128, i32 0 }, align 4
@__const.KSC_EUC_AddCodeSpaceRange.code_space_range2 = private unnamed_addr constant %struct.TYPE_9__ { i32 41377, i32 65278, i32 0 }, align 4
@HPDF_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @KSC_EUC_AddCodeSpaceRange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @KSC_EUC_AddCodeSpaceRange(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca { i64, i32 }, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %8 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_9__* @__const.KSC_EUC_AddCodeSpaceRange.code_space_range1 to i8*), i64 12, i1 false)
  %9 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_9__* @__const.KSC_EUC_AddCodeSpaceRange.code_space_range2 to i8*), i64 12, i1 false)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = bitcast { i64, i32 }* %6 to i8*
  %12 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @HPDF_CMapEncoder_AddCodeSpaceRange(%struct.TYPE_8__* %10, i64 %14, i32 %16)
  %18 = load i64, i64* @HPDF_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %2, align 8
  br label %45

26:                                               ; preds = %1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %28 = bitcast { i64, i32 }* %7 to i8*
  %29 = bitcast %struct.TYPE_9__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 12, i1 false)
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 4
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @HPDF_CMapEncoder_AddCodeSpaceRange(%struct.TYPE_8__* %27, i64 %31, i32 %33)
  %35 = load i64, i64* @HPDF_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %2, align 8
  br label %45

43:                                               ; preds = %26
  %44 = load i64, i64* @HPDF_OK, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %37, %20
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @HPDF_CMapEncoder_AddCodeSpaceRange(%struct.TYPE_8__*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

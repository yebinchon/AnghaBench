; ModuleID = '/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdipfont_get_text_width.c'
source_filename = "/home/carl/AnghaBench/nuklear/demo/gdip/extr_nuklear_gdip.h_nk_gdipfont_get_text_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float, float, float, float }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@__const.nk_gdipfont_get_text_width.layout = private unnamed_addr constant %struct.TYPE_9__ { float 0.000000e+00, float 0.000000e+00, float 6.553600e+04, float 6.553600e+04, float 0.000000e+00 }, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@gdip = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i64, float, i8*, i32)* @nk_gdipfont_get_text_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @nk_gdipfont_get_text_width(i64 %0, float %1, i8* %2, i32 %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_9__, align 4
  %12 = alloca %struct.TYPE_9__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  store float %1, float* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  %19 = bitcast %struct.TYPE_9__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.TYPE_9__* @__const.nk_gdipfont_get_text_width.layout to i8*), i64 20, i1 false)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %4
  store float 0.000000e+00, float* %5, align 4
  br label %54

26:                                               ; preds = %22
  %27 = load float, float* %7, align 4
  %28 = load i32, i32* @CP_UTF8, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @MultiByteToWideChar(i32 %28, i32 0, i8* %29, i32 %30, i32* null, i32 0)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i64 @_alloca(i32 %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %14, align 8
  %38 = load i32, i32* @CP_UTF8, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i8* %39, i32 %40, i32* %41, i32 %42)
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gdip, i32 0, i32 1), align 4
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gdip, i32 0, i32 0), align 4
  %51 = call i32 @GdipMeasureString(i32 %44, i32* %45, i32 %46, i32 %49, %struct.TYPE_9__* %11, i32 %50, %struct.TYPE_9__* %12, i32* null, i32* null)
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  %53 = load float, float* %52, align 4
  store float %53, float* %5, align 4
  br label %54

54:                                               ; preds = %26, %25
  %55 = load float, float* %5, align 4
  ret float %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @_alloca(i32) #2

declare dso_local i32 @GdipMeasureString(i32, i32*, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_9__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

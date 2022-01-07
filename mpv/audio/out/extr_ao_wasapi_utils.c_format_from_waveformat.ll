; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_format_from_waveformat.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_wasapi_utils.c_format_from_waveformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wasapi_sample_fmt = type { i32, i32, i32*, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@wasapi_formats = common dso_local global %struct.wasapi_sample_fmt* null, align 8
@KSDATAFORMAT_SUBTYPE_PCM = common dso_local global i32 0, align 4
@KSDATAFORMAT_SUBTYPE_IEEE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wasapi_sample_fmt*, %struct.TYPE_7__*)* @format_from_waveformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_from_waveformat(%struct.wasapi_sample_fmt* noalias sret %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wasapi_sample_fmt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %3, align 8
  %9 = bitcast %struct.wasapi_sample_fmt* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %78, %2
  %11 = load %struct.wasapi_sample_fmt*, %struct.wasapi_sample_fmt** @wasapi_formats, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %11, i64 %13
  %15 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %81

18:                                               ; preds = %10
  %19 = load %struct.wasapi_sample_fmt*, %struct.wasapi_sample_fmt** @wasapi_formats, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %19, i64 %21
  store %struct.wasapi_sample_fmt* %22, %struct.wasapi_sample_fmt** %5, align 8
  store i32 0, i32* %6, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.wasapi_sample_fmt*, %struct.wasapi_sample_fmt** %5, align 8
  %27 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %78

31:                                               ; preds = %18
  store i32* null, i32** %7, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %51 [
    i32 130, label %35
    i32 128, label %49
    i32 129, label %50
  ]

35:                                               ; preds = %31
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = bitcast %struct.TYPE_7__* %36 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @IsEqualGUID(i32* %40, i32* @KSDATAFORMAT_SUBTYPE_PCM)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %43, %35
  br label %51

49:                                               ; preds = %31
  store i32* @KSDATAFORMAT_SUBTYPE_PCM, i32** %7, align 8
  br label %51

50:                                               ; preds = %31
  store i32* @KSDATAFORMAT_SUBTYPE_IEEE_FLOAT, i32** %7, align 8
  br label %51

51:                                               ; preds = %31, %50, %49, %48
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load %struct.wasapi_sample_fmt*, %struct.wasapi_sample_fmt** %5, align 8
  %57 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IsEqualGUID(i32* %55, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %51
  br label %78

62:                                               ; preds = %54
  %63 = load %struct.wasapi_sample_fmt*, %struct.wasapi_sample_fmt** %5, align 8
  %64 = bitcast %struct.wasapi_sample_fmt* %0 to i8*
  %65 = bitcast %struct.wasapi_sample_fmt* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 32, i1 false)
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.wasapi_sample_fmt*, %struct.wasapi_sample_fmt** %5, align 8
  %71 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = getelementptr inbounds %struct.wasapi_sample_fmt, %struct.wasapi_sample_fmt* %0, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %68, %62
  br label %81

78:                                               ; preds = %61, %30
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %10

81:                                               ; preds = %77, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IsEqualGUID(i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

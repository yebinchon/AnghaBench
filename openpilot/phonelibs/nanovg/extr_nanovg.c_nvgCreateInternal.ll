; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgCreateInternal.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgCreateInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, float*, i32, i64, i8*, i8*, %struct.TYPE_12__, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i64 }
%struct.TYPE_12__ = type { i64 (i32)*, i64 (i32, i32, i8*, i8*, i32, i32*)*, i32 }

@NVG_MAX_FONTIMAGES = common dso_local global i32 0, align 4
@NVG_INIT_COMMANDS_SIZE = common dso_local global i32 0, align 4
@NVG_INIT_FONTIMAGE_SIZE = common dso_local global i8* null, align 8
@FONS_ZERO_TOPLEFT = common dso_local global i32 0, align 4
@NVG_TEXTURE_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @nvgCreateInternal(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = call i64 @malloc(i32 144)
  %8 = inttoptr i64 %7 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %10 = icmp eq %struct.TYPE_13__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %131

12:                                               ; preds = %1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 144)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = bitcast %struct.TYPE_12__* %16 to i8*
  %19 = bitcast %struct.TYPE_12__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %31, %12
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NVG_MAX_FONTIMAGES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* @NVG_INIT_COMMANDS_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = trunc i64 %37 to i32
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to float*
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  store float* %40, float** %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load float*, float** %44, align 8
  %46 = icmp ne float* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %34
  br label %131

48:                                               ; preds = %34
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 15
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @NVG_INIT_COMMANDS_SIZE, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = call i32* (...) @nvg__allocPathCache()
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 14
  store i32* %54, i32** %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 14
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %131

62:                                               ; preds = %48
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %64 = call i32 @nvgSave(%struct.TYPE_13__* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = call i32 @nvgReset(%struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = call i32 @nvg__setDevicePixelRatio(%struct.TYPE_13__* %67, float 1.000000e+00)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64 (i32)*, i64 (i32)** %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 %72(i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  br label %131

80:                                               ; preds = %62
  %81 = call i32 @memset(%struct.TYPE_13__* %4, i32 0, i32 144)
  %82 = load i8*, i8** @NVG_INIT_FONTIMAGE_SIZE, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** @NVG_INIT_FONTIMAGE_SIZE, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  store i8* %84, i8** %85, align 8
  %86 = load i32, i32* @FONS_ZERO_TOPLEFT, align 4
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 13
  store i32 %86, i32* %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 12
  store i32* null, i32** %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 11
  store i32* null, i32** %89, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 10
  store i32* null, i32** %90, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 9
  store i32* null, i32** %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 8
  store i32* null, i32** %92, align 8
  %93 = call i32* @fonsCreateInternal(%struct.TYPE_13__* %4)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 7
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %80
  br label %131

101:                                              ; preds = %80
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 6
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i64 (i32, i32, i8*, i8*, i32, i32*)*, i64 (i32, i32, i8*, i8*, i32, i32*)** %104, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @NVG_TEXTURE_ALPHA, align 4
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 5
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 4
  %114 = load i8*, i8** %113, align 8
  %115 = call i64 %105(i32 %109, i32 %110, i8* %112, i8* %114, i32 0, i32* null)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  store i64 %115, i64* %119, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %101
  br label %131

127:                                              ; preds = %101
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 3
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_13__* %130, %struct.TYPE_13__** %2, align 8
  br label %134

131:                                              ; preds = %126, %100, %79, %61, %47, %11
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = call i32 @nvgDeleteInternal(%struct.TYPE_13__* %132)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %2, align 8
  br label %134

134:                                              ; preds = %131, %127
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %135
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @nvg__allocPathCache(...) #1

declare dso_local i32 @nvgSave(%struct.TYPE_13__*) #1

declare dso_local i32 @nvgReset(%struct.TYPE_13__*) #1

declare dso_local i32 @nvg__setDevicePixelRatio(%struct.TYPE_13__*, float) #1

declare dso_local i32* @fonsCreateInternal(%struct.TYPE_13__*) #1

declare dso_local i32 @nvgDeleteInternal(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

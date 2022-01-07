; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextGlyphPositions.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvgTextGlyphPositions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { float, i32 }
%struct.TYPE_16__ = type { float, float, float, i32 }
%struct.TYPE_15__ = type { i64, float, float, float, i32 }
%struct.TYPE_18__ = type { i64, float, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@FONS_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvgTextGlyphPositions(%struct.TYPE_17__* %0, float %1, float %2, i8* %3, i8* %4, %struct.TYPE_16__* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.TYPE_18__, align 8
  %20 = alloca %struct.TYPE_18__, align 8
  %21 = alloca %struct.TYPE_19__, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %24 = call %struct.TYPE_15__* @nvg__getState(%struct.TYPE_17__* %23)
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %16, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %26 = call float @nvg__getFontScale(%struct.TYPE_15__* %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fmul float %26, %29
  store float %30, float* %17, align 4
  %31 = load float, float* %17, align 4
  %32 = fdiv float 1.000000e+00, %31
  store float %32, float* %18, align 4
  store i32 0, i32* %22, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FONS_INVALID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %182

39:                                               ; preds = %7
  %40 = load i8*, i8** %13, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8* %47, i8** %13, align 8
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i8*, i8** %12, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %182

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load float, float* %58, align 8
  %60 = load float, float* %17, align 4
  %61 = fmul float %59, %60
  %62 = call i32 @fonsSetSize(i32 %56, float %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load float, float* %67, align 4
  %69 = load float, float* %17, align 4
  %70 = fmul float %68, %69
  %71 = call i32 @fonsSetSpacing(i32 %65, float %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load float, float* %76, align 8
  %78 = load float, float* %17, align 4
  %79 = fmul float %77, %78
  %80 = call i32 @fonsSetBlur(i32 %74, float %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @fonsSetAlign(i32 %83, i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @fonsSetFont(i32 %90, i64 %93)
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load float, float* %10, align 4
  %99 = load float, float* %17, align 4
  %100 = fmul float %98, %99
  %101 = load float, float* %11, align 4
  %102 = load float, float* %17, align 4
  %103 = fmul float %101, %102
  %104 = load i8*, i8** %12, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @fonsTextIterInit(i32 %97, %struct.TYPE_18__* %19, float %100, float %103, i8* %104, i8* %105)
  %107 = bitcast %struct.TYPE_18__* %20 to i8*
  %108 = bitcast %struct.TYPE_18__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 24, i1 false)
  br label %109

109:                                              ; preds = %179, %53
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @fonsTextIterNext(i32 %112, %struct.TYPE_18__* %19, %struct.TYPE_19__* %21)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %180

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = call i64 @nvg__allocTextAtlas(%struct.TYPE_17__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = bitcast %struct.TYPE_18__* %19 to i8*
  %125 = bitcast %struct.TYPE_18__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @fonsTextIterNext(i32 %128, %struct.TYPE_18__* %19, %struct.TYPE_19__* %21)
  br label %130

130:                                              ; preds = %123, %119, %115
  %131 = bitcast %struct.TYPE_18__* %20 to i8*
  %132 = bitcast %struct.TYPE_18__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 24, i1 false)
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 3
  store i32 %134, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %141 = load float, float* %140, align 8
  %142 = load float, float* %18, align 4
  %143 = fmul float %141, %142
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  store float %143, float* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 1
  %150 = load float, float* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call float @nvg__minf(float %150, i32 %152)
  %154 = load float, float* %18, align 4
  %155 = fmul float %153, %154
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store float %155, float* %160, align 4
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call float @nvg__maxf(i32 %162, i32 %164)
  %166 = load float, float* %18, align 4
  %167 = fmul float %165, %166
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %169 = load i32, i32* %22, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  store float %167, float* %172, align 4
  %173 = load i32, i32* %22, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp sge i32 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %130
  br label %180

179:                                              ; preds = %130
  br label %109

180:                                              ; preds = %178, %109
  %181 = load i32, i32* %22, align 4
  store i32 %181, i32* %8, align 4
  br label %182

182:                                              ; preds = %180, %52, %38
  %183 = load i32, i32* %8, align 4
  ret i32 %183
}

declare dso_local %struct.TYPE_15__* @nvg__getState(%struct.TYPE_17__*) #1

declare dso_local float @nvg__getFontScale(%struct.TYPE_15__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @fonsSetSize(i32, float) #1

declare dso_local i32 @fonsSetSpacing(i32, float) #1

declare dso_local i32 @fonsSetBlur(i32, float) #1

declare dso_local i32 @fonsSetAlign(i32, i32) #1

declare dso_local i32 @fonsSetFont(i32, i64) #1

declare dso_local i32 @fonsTextIterInit(i32, %struct.TYPE_18__*, float, float, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @fonsTextIterNext(i32, %struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @nvg__allocTextAtlas(%struct.TYPE_17__*) #1

declare dso_local float @nvg__minf(float, i32) #1

declare dso_local float @nvg__maxf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

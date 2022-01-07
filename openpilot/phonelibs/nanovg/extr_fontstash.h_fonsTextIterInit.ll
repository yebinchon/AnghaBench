; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsTextIterInit.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fonsTextIterInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_15__** }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_12__ = type { i16, i16, float, float, float, float, i8*, i8*, i8*, i32, i64, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_13__ = type { i64, float, i32, i32, i64 }

@FONS_ALIGN_LEFT = common dso_local global i32 0, align 4
@FONS_ALIGN_RIGHT = common dso_local global i32 0, align 4
@FONS_ALIGN_CENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fonsTextIterInit(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, float %2, float %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca float, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %9, align 8
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %17 = call %struct.TYPE_13__* @fons__getState(%struct.TYPE_14__* %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %14, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %19 = call i32 @memset(%struct.TYPE_12__* %18, i32 0, i32 88)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %177

23:                                               ; preds = %6
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %23
  store i32 0, i32* %7, align 4
  br label %177

37:                                               ; preds = %28
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %40, i64 %43
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 12
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 12
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %177

55:                                               ; preds = %37
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load float, float* %57, align 8
  %59 = fmul float %58, 1.000000e+01
  %60 = fptosi float %59 to i16
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i16 %60, i16* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i16
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i16 %66, i16* %68, align 2
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 12
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i16, i16* %74, align 8
  %76 = sitofp i16 %75 to float
  %77 = fdiv float %76, 1.000000e+01
  %78 = call i32 @fons__tt_getPixelHeightScale(i32* %72, float %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @FONS_ALIGN_LEFT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %55
  br label %125

88:                                               ; preds = %55
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FONS_ALIGN_RIGHT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %88
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = load float, float* %10, align 4
  %98 = load float, float* %11, align 4
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call float @fonsTextBounds(%struct.TYPE_14__* %96, float %97, float %98, i8* %99, i8* %100, i32* null)
  store float %101, float* %15, align 4
  %102 = load float, float* %15, align 4
  %103 = load float, float* %10, align 4
  %104 = fsub float %103, %102
  store float %104, float* %10, align 4
  br label %124

105:                                              ; preds = %88
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FONS_ALIGN_CENTER, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %105
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %114 = load float, float* %10, align 4
  %115 = load float, float* %11, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = call float @fonsTextBounds(%struct.TYPE_14__* %113, float %114, float %115, i8* %116, i8* %117, i32* null)
  store float %118, float* %15, align 4
  %119 = load float, float* %15, align 4
  %120 = fmul float %119, 5.000000e-01
  %121 = load float, float* %10, align 4
  %122 = fsub float %121, %120
  store float %122, float* %10, align 4
  br label %123

123:                                              ; preds = %112, %105
  br label %124

124:                                              ; preds = %123, %95
  br label %125

125:                                              ; preds = %124, %87
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 12
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i16, i16* %134, align 8
  %136 = call i64 @fons__getVertAlign(%struct.TYPE_14__* %126, %struct.TYPE_15__* %129, i32 %132, i16 signext %135)
  %137 = sitofp i64 %136 to float
  %138 = load float, float* %11, align 4
  %139 = fadd float %138, %137
  store float %139, float* %11, align 4
  %140 = load i8*, i8** %13, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %125
  %143 = load i8*, i8** %12, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8* %147, i8** %13, align 8
  br label %148

148:                                              ; preds = %142, %125
  %149 = load float, float* %10, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 3
  store float %149, float* %151, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  store float %149, float* %153, align 4
  %154 = load float, float* %11, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 5
  store float %154, float* %156, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 4
  store float %154, float* %158, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 11
  store i32 %161, i32* %163, align 8
  %164 = load i8*, i8** %12, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 6
  store i8* %164, i8** %166, align 8
  %167 = load i8*, i8** %12, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 7
  store i8* %167, i8** %169, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 8
  store i8* %170, i8** %172, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 10
  store i64 0, i64* %174, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 9
  store i32 -1, i32* %176, align 8
  store i32 1, i32* %7, align 4
  br label %177

177:                                              ; preds = %148, %54, %36, %22
  %178 = load i32, i32* %7, align 4
  ret i32 %178
}

declare dso_local %struct.TYPE_13__* @fons__getState(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @fons__tt_getPixelHeightScale(i32*, float) #1

declare dso_local float @fonsTextBounds(%struct.TYPE_14__*, float, float, i8*, i8*, i32*) #1

declare dso_local i64 @fons__getVertAlign(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i16 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_blend_line_gradient.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_graphics.c_blend_line_gradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, float*, float*, i64, float*, i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { float, float }

@WrapModeTile = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, float)* @blend_line_gradient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blend_line_gradient(%struct.TYPE_5__* %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store float %1, float* %5, align 4
  %18 = load float, float* %5, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load float, float* %21, align 8
  %23 = fsub float %18, %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 9
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fdiv float %23, %27
  store float %28, float* %5, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WrapModeTile, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load float, float* %5, align 4
  %36 = call float @fmodf(float %35, float 1.000000e+00) #3
  store float %36, float* %5, align 4
  %37 = load float, float* %5, align 4
  %38 = fcmp olt float %37, 0.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load float, float* %5, align 4
  %41 = fadd float %40, 1.000000e+00
  store float %41, float* %5, align 4
  br label %42

42:                                               ; preds = %39, %34
  br label %58

43:                                               ; preds = %2
  %44 = load float, float* %5, align 4
  %45 = call float @fmodf(float %44, float 2.000000e+00) #3
  store float %45, float* %5, align 4
  %46 = load float, float* %5, align 4
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load float, float* %5, align 4
  %50 = fadd float %49, 2.000000e+00
  store float %50, float* %5, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load float, float* %5, align 4
  %53 = fcmp ogt float %52, 1.000000e+00
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load float, float* %5, align 4
  %56 = fsub float 2.000000e+00, %55
  store float %56, float* %5, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load float, float* %5, align 4
  store float %64, float* %6, align 4
  br label %126

65:                                               ; preds = %58
  store i32 1, i32* %7, align 4
  br label %66

66:                                               ; preds = %76, %65
  %67 = load float, float* %5, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load float*, float** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fcmp ogt float %67, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %66
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %66

79:                                               ; preds = %66
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  %82 = load float*, float** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %82, i64 %85
  %87 = load float, float* %86, align 4
  store float %87, float* %8, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load float*, float** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float, float* %90, i64 %93
  %95 = load float, float* %94, align 4
  store float %95, float* %9, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load float*, float** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  %102 = load float, float* %101, align 4
  store float %102, float* %10, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load float*, float** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  store float %109, float* %11, align 4
  %110 = load float, float* %10, align 4
  %111 = load float, float* %8, align 4
  %112 = fsub float %110, %111
  store float %112, float* %12, align 4
  %113 = load float, float* %9, align 4
  %114 = load float, float* %10, align 4
  %115 = load float, float* %5, align 4
  %116 = fsub float %114, %115
  %117 = fmul float %113, %116
  %118 = load float, float* %11, align 4
  %119 = load float, float* %5, align 4
  %120 = load float, float* %8, align 4
  %121 = fsub float %119, %120
  %122 = fmul float %118, %121
  %123 = fadd float %117, %122
  %124 = load float, float* %12, align 4
  %125 = fdiv float %123, %124
  store float %125, float* %6, align 4
  br label %126

126:                                              ; preds = %79, %63
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load float, float* %6, align 4
  %139 = call i32 @blend_colors(i32 %134, i32 %137, float %138)
  store i32 %139, i32* %3, align 4
  br label %196

140:                                              ; preds = %126
  store i32 1, i32* %13, align 4
  br label %141

141:                                              ; preds = %151, %140
  %142 = load float, float* %6, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load float*, float** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds float, float* %145, i64 %147
  %149 = load float, float* %148, align 4
  %150 = fcmp ogt float %142, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %141
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %141

154:                                              ; preds = %141
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 5
  %157 = load float*, float** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %157, i64 %160
  %162 = load float, float* %161, align 4
  store float %162, float* %16, align 4
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %14, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 5
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float, float* %176, align 4
  store float %177, float* %17, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 6
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %15, align 4
  %185 = load float, float* %6, align 4
  %186 = load float, float* %16, align 4
  %187 = fsub float %185, %186
  %188 = load float, float* %17, align 4
  %189 = load float, float* %16, align 4
  %190 = fsub float %188, %189
  %191 = fdiv float %187, %190
  store float %191, float* %6, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %15, align 4
  %194 = load float, float* %6, align 4
  %195 = call i32 @blend_colors(i32 %192, i32 %193, float %194)
  store i32 %195, i32* %3, align 4
  br label %196

196:                                              ; preds = %154, %131
  %197 = load i32, i32* %3, align 4
  ret i32 %197
}

; Function Attrs: nounwind
declare dso_local float @fmodf(float, float) #1

declare dso_local i32 @blend_colors(i32, i32, float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

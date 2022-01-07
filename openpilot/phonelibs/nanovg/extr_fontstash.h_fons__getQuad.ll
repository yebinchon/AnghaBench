; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__getQuad.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_fontstash.h_fons__getQuad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { float, float, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, float, i32 }
%struct.TYPE_11__ = type { float, float, float, float, float, float, float, float }

@FONS_ZERO_TOPLEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, float, float, float*, float*, %struct.TYPE_11__*)* @fons__getQuad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fons__getQuad(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, %struct.TYPE_12__* %3, float %4, float %5, float* %6, float* %7, %struct.TYPE_11__* %8) #0 {
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %13, align 8
  store float %4, float* %14, align 4
  store float %5, float* %15, align 4
  store float* %6, float** %16, align 8
  store float* %7, float** %17, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %18, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %49

30:                                               ; preds = %9
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call float @fons__tt_getGlyphKernAdvance(i32* %32, i32 %33, i32 %36)
  %38 = load float, float* %14, align 4
  %39 = fmul float %37, %38
  store float %39, float* %27, align 4
  %40 = load float, float* %27, align 4
  %41 = load float, float* %15, align 4
  %42 = fadd float %40, %41
  %43 = fadd float %42, 5.000000e-01
  %44 = fptosi float %43 to i32
  %45 = sitofp i32 %44 to float
  %46 = load float*, float** %16, align 8
  %47 = load float, float* %46, align 4
  %48 = fadd float %47, %45
  store float %48, float* %46, align 4
  br label %49

49:                                               ; preds = %30, %9
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = trunc i32 %53 to i16
  %55 = sitofp i16 %54 to float
  store float %55, float* %21, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  %60 = trunc i32 %59 to i16
  %61 = sitofp i16 %60 to float
  store float %61, float* %22, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  %66 = sitofp i32 %65 to float
  store float %66, float* %23, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = sitofp i32 %70 to float
  store float %71, float* %24, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sitofp i32 %75 to float
  store float %76, float* %25, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sitofp i32 %80 to float
  store float %81, float* %26, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FONS_ZERO_TOPLEFT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %150

89:                                               ; preds = %49
  %90 = load float*, float** %16, align 8
  %91 = load float, float* %90, align 4
  %92 = load float, float* %21, align 4
  %93 = fadd float %91, %92
  %94 = fptosi float %93 to i32
  %95 = sitofp i32 %94 to float
  store float %95, float* %19, align 4
  %96 = load float*, float** %17, align 8
  %97 = load float, float* %96, align 4
  %98 = load float, float* %22, align 4
  %99 = fadd float %97, %98
  %100 = fptosi float %99 to i32
  %101 = sitofp i32 %100 to float
  store float %101, float* %20, align 4
  %102 = load float, float* %19, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store float %102, float* %104, align 4
  %105 = load float, float* %20, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  store float %105, float* %107, align 4
  %108 = load float, float* %19, align 4
  %109 = load float, float* %25, align 4
  %110 = fadd float %108, %109
  %111 = load float, float* %23, align 4
  %112 = fsub float %110, %111
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  store float %112, float* %114, align 4
  %115 = load float, float* %20, align 4
  %116 = load float, float* %26, align 4
  %117 = fadd float %115, %116
  %118 = load float, float* %24, align 4
  %119 = fsub float %117, %118
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store float %119, float* %121, align 4
  %122 = load float, float* %23, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  %126 = fmul float %122, %125
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 4
  store float %126, float* %128, align 4
  %129 = load float, float* %24, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load float, float* %131, align 4
  %133 = fmul float %129, %132
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 5
  store float %133, float* %135, align 4
  %136 = load float, float* %25, align 4
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load float, float* %138, align 4
  %140 = fmul float %136, %139
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 6
  store float %140, float* %142, align 4
  %143 = load float, float* %26, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load float, float* %145, align 4
  %147 = fmul float %143, %146
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 7
  store float %147, float* %149, align 4
  br label %211

150:                                              ; preds = %49
  %151 = load float*, float** %16, align 8
  %152 = load float, float* %151, align 4
  %153 = load float, float* %21, align 4
  %154 = fadd float %152, %153
  %155 = fptosi float %154 to i32
  %156 = sitofp i32 %155 to float
  store float %156, float* %19, align 4
  %157 = load float*, float** %17, align 8
  %158 = load float, float* %157, align 4
  %159 = load float, float* %22, align 4
  %160 = fsub float %158, %159
  %161 = fptosi float %160 to i32
  %162 = sitofp i32 %161 to float
  store float %162, float* %20, align 4
  %163 = load float, float* %19, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store float %163, float* %165, align 4
  %166 = load float, float* %20, align 4
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  store float %166, float* %168, align 4
  %169 = load float, float* %19, align 4
  %170 = load float, float* %25, align 4
  %171 = fadd float %169, %170
  %172 = load float, float* %23, align 4
  %173 = fsub float %171, %172
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  store float %173, float* %175, align 4
  %176 = load float, float* %20, align 4
  %177 = load float, float* %26, align 4
  %178 = fsub float %176, %177
  %179 = load float, float* %24, align 4
  %180 = fadd float %178, %179
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 3
  store float %180, float* %182, align 4
  %183 = load float, float* %23, align 4
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load float, float* %185, align 4
  %187 = fmul float %183, %186
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  store float %187, float* %189, align 4
  %190 = load float, float* %24, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load float, float* %192, align 4
  %194 = fmul float %190, %193
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 5
  store float %194, float* %196, align 4
  %197 = load float, float* %25, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load float, float* %199, align 4
  %201 = fmul float %197, %200
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 6
  store float %201, float* %203, align 4
  %204 = load float, float* %26, align 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load float, float* %206, align 4
  %208 = fmul float %204, %207
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 7
  store float %208, float* %210, align 4
  br label %211

211:                                              ; preds = %150, %89
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 6
  %214 = load float, float* %213, align 4
  %215 = fdiv float %214, 1.000000e+01
  %216 = fadd float %215, 5.000000e-01
  %217 = fptosi float %216 to i32
  %218 = sitofp i32 %217 to float
  %219 = load float*, float** %16, align 8
  %220 = load float, float* %219, align 4
  %221 = fadd float %220, %218
  store float %221, float* %219, align 4
  ret void
}

declare dso_local float @fons__tt_getGlyphKernAdvance(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

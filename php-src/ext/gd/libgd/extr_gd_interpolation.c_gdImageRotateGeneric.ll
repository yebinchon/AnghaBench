; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageRotateGeneric.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_interpolation.c_gdImageRotateGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32** }
%struct.TYPE_11__ = type { i32, i32 }

@M_PI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @gdImageRotateGeneric(%struct.TYPE_12__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_11__, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  %34 = load float, float* %6, align 4
  %35 = fneg float %34
  %36 = fdiv float %35, 1.800000e+02
  %37 = load i64, i64* @M_PI, align 8
  %38 = sitofp i64 %37 to float
  %39 = fmul float %36, %38
  store float %39, float* %8, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = call i32 @gdImageSX(%struct.TYPE_12__* %40)
  store i32 %41, i32* %9, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %43 = call i32 @gdImageSY(%struct.TYPE_12__* %42)
  store i32 %43, i32* %10, align 4
  %44 = call i64 @gd_ftofx(float 5.000000e-01)
  store i64 %44, i64* %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %45, 2
  %47 = call i8* @gd_itofx(i32 %46)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sdiv i32 %49, 2
  %51 = call i8* @gd_itofx(i32 %50)
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* %13, align 8
  %53 = load float, float* %8, align 4
  %54 = fneg float %53
  %55 = call float @cos(float %54)
  %56 = call i64 @gd_ftofx(float %55)
  store i64 %56, i64* %14, align 8
  %57 = load float, float* %8, align 4
  %58 = fneg float %57
  %59 = call float @sin(float %58)
  %60 = call i64 @gd_ftofx(float %59)
  store i64 %60, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %61 = load i64, i64* %15, align 8
  store i64 %61, i64* %23, align 8
  %62 = load i64, i64* %14, align 8
  store i64 %62, i64* %24, align 8
  %63 = load i64, i64* %24, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %3
  %66 = load i64, i64* %23, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %82

68:                                               ; preds = %65
  %69 = load i64, i64* %24, align 8
  %70 = load i64, i64* %23, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i64, i64* %23, align 8
  %74 = load i64, i64* %24, align 8
  %75 = call i64 @gd_divfx(i64 %73, i64 %74)
  br label %80

76:                                               ; preds = %68
  %77 = load i64, i64* %24, align 8
  %78 = load i64, i64* %23, align 8
  %79 = call i64 @gd_divfx(i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i64 [ %75, %72 ], [ %79, %76 ]
  br label %83

82:                                               ; preds = %65, %3
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i64 [ %81, %80 ], [ 0, %82 ]
  store i64 %84, i64* %25, align 8
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %260

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %90 = load float, float* %6, align 4
  %91 = call i32 @gdRotatedImageSize(%struct.TYPE_12__* %89, float %90, %struct.TYPE_11__* %22)
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %20, align 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = call %struct.TYPE_12__* @gdImageCreateTrueColor(i32 %96, i32 %97)
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %19, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %100 = icmp ne %struct.TYPE_12__* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %88
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %260

102:                                              ; preds = %88
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %255, %102
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %258

109:                                              ; preds = %105
  store i32 0, i32* %16, align 4
  store i32 0, i32* %26, align 4
  br label %110

110:                                              ; preds = %249, %109
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %252

114:                                              ; preds = %110
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %21, align 4
  %117 = sdiv i32 %116, 2
  %118 = sub nsw i32 %115, %117
  %119 = call i8* @gd_itofx(i32 %118)
  %120 = ptrtoint i8* %119 to i64
  store i64 %120, i64* %27, align 8
  %121 = load i32, i32* %26, align 4
  %122 = load i32, i32* %20, align 4
  %123 = sdiv i32 %122, 2
  %124 = sub nsw i32 %121, %123
  %125 = call i8* @gd_itofx(i32 %124)
  %126 = ptrtoint i8* %125 to i64
  store i64 %126, i64* %28, align 8
  %127 = load i64, i64* %28, align 8
  %128 = load i64, i64* %15, align 8
  %129 = call i64 @gd_mulfx(i64 %127, i64 %128)
  %130 = load i64, i64* %27, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i64 @gd_mulfx(i64 %130, i64 %131)
  %133 = add nsw i64 %129, %132
  %134 = load i64, i64* %11, align 8
  %135 = add nsw i64 %133, %134
  %136 = load i64, i64* %12, align 8
  %137 = add nsw i64 %135, %136
  store i64 %137, i64* %29, align 8
  %138 = load i64, i64* %28, align 8
  %139 = load i64, i64* %14, align 8
  %140 = call i64 @gd_mulfx(i64 %138, i64 %139)
  %141 = load i64, i64* %27, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i64 @gd_mulfx(i64 %141, i64 %142)
  %144 = sub nsw i64 %140, %143
  %145 = load i64, i64* %11, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i64, i64* %13, align 8
  %148 = add nsw i64 %146, %147
  store i64 %148, i64* %30, align 8
  %149 = load i64, i64* %29, align 8
  %150 = call i64 @gd_fxtoi(i64 %149)
  store i64 %150, i64* %31, align 8
  %151 = load i64, i64* %30, align 8
  %152 = call i64 @gd_fxtoi(i64 %151)
  store i64 %152, i64* %32, align 8
  %153 = load i64, i64* %32, align 8
  %154 = icmp sle i64 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %114
  %156 = load i64, i64* %31, align 8
  %157 = icmp sle i64 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %155
  %159 = load i64, i64* %31, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp sge i64 %159, %161
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load i64, i64* %32, align 8
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = icmp sge i64 %164, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %163, %158, %155, %114
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32**, i32*** %171, align 8
  %173 = load i32, i32* %17, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32*, i32** %172, i64 %174
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %16, align 4
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  store i32 %169, i32* %180, align 4
  br label %248

181:                                              ; preds = %163
  %182 = load i64, i64* %32, align 8
  %183 = icmp sle i64 %182, 1
  br i1 %183, label %199, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* %31, align 8
  %186 = icmp sle i64 %185, 1
  br i1 %186, label %199, label %187

187:                                              ; preds = %184
  %188 = load i64, i64* %31, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = icmp sge i64 %188, %191
  br i1 %192, label %199, label %193

193:                                              ; preds = %187
  %194 = load i64, i64* %32, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = icmp sge i64 %194, %197
  br i1 %198, label %199, label %229

199:                                              ; preds = %193, %187, %184, %181
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %201 = load i64, i64* %32, align 8
  %202 = load i64, i64* %31, align 8
  %203 = load i32, i32* %7, align 4
  %204 = call i8* @getPixelInterpolated(%struct.TYPE_12__* %200, i64 %201, i64 %202, i32 %203)
  %205 = ptrtoint i8* %204 to i32
  store i32 %205, i32* %33, align 4
  %206 = load i32, i32* %33, align 4
  %207 = load i32, i32* %33, align 4
  %208 = call i32 @gdTrueColorGetAlpha(i32 %207)
  %209 = load i64, i64* %25, align 8
  %210 = call i32 @gd_fxtof(i64 %209)
  %211 = mul nsw i32 127, %210
  %212 = add nsw i32 %208, %211
  %213 = shl i32 %212, 24
  %214 = or i32 %206, %213
  store i32 %214, i32* %33, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %33, align 4
  %217 = call i32 @_color_blend(i32 %215, i32 %216)
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32**, i32*** %219, align 8
  %221 = load i32, i32* %17, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %16, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %16, align 4
  %227 = zext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32 %217, i32* %228, align 4
  br label %247

229:                                              ; preds = %193
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %231 = load i64, i64* %32, align 8
  %232 = load i64, i64* %31, align 8
  %233 = load i32, i32* %7, align 4
  %234 = call i8* @getPixelInterpolated(%struct.TYPE_12__* %230, i64 %231, i64 %232, i32 %233)
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load i32**, i32*** %237, align 8
  %239 = load i32, i32* %17, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i32*, i32** %238, i64 %240
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %16, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %16, align 4
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  store i32 %235, i32* %246, align 4
  br label %247

247:                                              ; preds = %229, %199
  br label %248

248:                                              ; preds = %247, %168
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %26, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %26, align 4
  br label %110

252:                                              ; preds = %110
  %253 = load i32, i32* %17, align 4
  %254 = add i32 %253, 1
  store i32 %254, i32* %17, align 4
  br label %255

255:                                              ; preds = %252
  %256 = load i32, i32* %18, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %18, align 4
  br label %105

258:                                              ; preds = %105
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %259, %struct.TYPE_12__** %4, align 8
  br label %260

260:                                              ; preds = %258, %101, %87
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %261
}

declare dso_local i32 @gdImageSX(%struct.TYPE_12__*) #1

declare dso_local i32 @gdImageSY(%struct.TYPE_12__*) #1

declare dso_local i64 @gd_ftofx(float) #1

declare dso_local i8* @gd_itofx(i32) #1

declare dso_local float @cos(float) #1

declare dso_local float @sin(float) #1

declare dso_local i64 @gd_divfx(i64, i64) #1

declare dso_local i32 @gdRotatedImageSize(%struct.TYPE_12__*, float, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @gdImageCreateTrueColor(i32, i32) #1

declare dso_local i64 @gd_mulfx(i64, i64) #1

declare dso_local i64 @gd_fxtoi(i64) #1

declare dso_local i8* @getPixelInterpolated(%struct.TYPE_12__*, i64, i64, i32) #1

declare dso_local i32 @gdTrueColorGetAlpha(i32) #1

declare dso_local i32 @gd_fxtof(i64) #1

declare dso_local i32 @_color_blend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_rotate.c_gdImageSkewY.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_rotate.c_gdImageSkewY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageSkewY(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, double %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32 (%struct.TYPE_11__*, i32, i32)*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %23, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store i32 (%struct.TYPE_11__*, i32, i32)* @gdImageGetTrueColorPixel, i32 (%struct.TYPE_11__*, i32, i32)** %21, align 8
  br label %31

30:                                               ; preds = %7
  store i32 (%struct.TYPE_11__*, i32, i32)* @gdImageGetPixel, i32 (%struct.TYPE_11__*, i32, i32)** %21, align 8
  br label %31

31:                                               ; preds = %30, %29
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  br label %32

45:                                               ; preds = %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @gdImageRed(%struct.TYPE_11__* %46, i32 %47)
  %49 = sitofp i32 %48 to double
  %50 = load double, double* %12, align 8
  %51 = fmul double %49, %50
  %52 = fptosi double %51 to i32
  store i32 %52, i32* %17, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @gdImageGreen(%struct.TYPE_11__* %53, i32 %54)
  %56 = sitofp i32 %55 to double
  %57 = load double, double* %12, align 8
  %58 = fmul double %56, %57
  %59 = fptosi double %58 to i32
  store i32 %59, i32* %18, align 4
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @gdImageBlue(%struct.TYPE_11__* %60, i32 %61)
  %63 = sitofp i32 %62 to double
  %64 = load double, double* %12, align 8
  %65 = fmul double %63, %64
  %66 = fptosi double %65 to i32
  store i32 %66, i32* %19, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @gdImageAlpha(%struct.TYPE_11__* %67, i32 %68)
  %70 = sitofp i32 %69 to double
  %71 = load double, double* %12, align 8
  %72 = fmul double %70, %71
  %73 = fptosi double %72 to i32
  store i32 %73, i32* %20, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %22, align 4
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %245, %45
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %248

86:                                               ; preds = %80
  %87 = load i32 (%struct.TYPE_11__*, i32, i32)*, i32 (%struct.TYPE_11__*, i32, i32)** %21, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 %87(%struct.TYPE_11__* %88, i32 %89, i32 %90)
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %16, align 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = load i32, i32* %24, align 4
  %97 = call i32 @gdImageRed(%struct.TYPE_11__* %95, i32 %96)
  %98 = sitofp i32 %97 to double
  %99 = load double, double* %12, align 8
  %100 = fmul double %98, %99
  %101 = fptosi double %100 to i32
  store i32 %101, i32* %17, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %103 = load i32, i32* %24, align 4
  %104 = call i32 @gdImageGreen(%struct.TYPE_11__* %102, i32 %103)
  %105 = sitofp i32 %104 to double
  %106 = load double, double* %12, align 8
  %107 = fmul double %105, %106
  %108 = fptosi double %107 to i32
  store i32 %108, i32* %18, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = load i32, i32* %24, align 4
  %111 = call i32 @gdImageBlue(%struct.TYPE_11__* %109, i32 %110)
  %112 = sitofp i32 %111 to double
  %113 = load double, double* %12, align 8
  %114 = fmul double %112, %113
  %115 = fptosi double %114 to i32
  store i32 %115, i32* %19, align 4
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %117 = load i32, i32* %24, align 4
  %118 = call i32 @gdImageAlpha(%struct.TYPE_11__* %116, i32 %117)
  %119 = sitofp i32 %118 to double
  %120 = load double, double* %12, align 8
  %121 = fmul double %119, %120
  %122 = fptosi double %121 to i32
  store i32 %122, i32* %20, align 4
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %20, align 4
  %128 = call i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__* %123, i32 %124, i32 %125, i32 %126, i32 %127)
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %138

131:                                              ; preds = %86
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @gdImageColorClosestAlpha(%struct.TYPE_11__* %132, i32 %133, i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %23, align 4
  br label %138

138:                                              ; preds = %131, %86
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %140 = load i32, i32* %24, align 4
  %141 = call i32 @gdImageRed(%struct.TYPE_11__* %139, i32 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %143 = load i32, i32* %23, align 4
  %144 = call i32 @gdImageRed(%struct.TYPE_11__* %142, i32 %143)
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @gdImageRed(%struct.TYPE_11__* %145, i32 %146)
  %148 = sub nsw i32 %144, %147
  %149 = sub nsw i32 %141, %148
  store i32 %149, i32* %17, align 4
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %151 = load i32, i32* %24, align 4
  %152 = call i32 @gdImageGreen(%struct.TYPE_11__* %150, i32 %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %154 = load i32, i32* %23, align 4
  %155 = call i32 @gdImageGreen(%struct.TYPE_11__* %153, i32 %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %157 = load i32, i32* %22, align 4
  %158 = call i32 @gdImageGreen(%struct.TYPE_11__* %156, i32 %157)
  %159 = sub nsw i32 %155, %158
  %160 = sub nsw i32 %152, %159
  store i32 %160, i32* %18, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %162 = load i32, i32* %24, align 4
  %163 = call i32 @gdImageBlue(%struct.TYPE_11__* %161, i32 %162)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = load i32, i32* %23, align 4
  %166 = call i32 @gdImageBlue(%struct.TYPE_11__* %164, i32 %165)
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %168 = load i32, i32* %22, align 4
  %169 = call i32 @gdImageBlue(%struct.TYPE_11__* %167, i32 %168)
  %170 = sub nsw i32 %166, %169
  %171 = sub nsw i32 %163, %170
  store i32 %171, i32* %19, align 4
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %173 = load i32, i32* %24, align 4
  %174 = call i32 @gdImageAlpha(%struct.TYPE_11__* %172, i32 %173)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = load i32, i32* %23, align 4
  %177 = call i32 @gdImageAlpha(%struct.TYPE_11__* %175, i32 %176)
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @gdImageAlpha(%struct.TYPE_11__* %178, i32 %179)
  %181 = sub nsw i32 %177, %180
  %182 = sub nsw i32 %174, %181
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp sgt i32 %183, 255
  br i1 %184, label %185, label %186

185:                                              ; preds = %138
  store i32 255, i32* %17, align 4
  br label %186

186:                                              ; preds = %185, %138
  %187 = load i32, i32* %18, align 4
  %188 = icmp sgt i32 %187, 255
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  store i32 255, i32* %18, align 4
  br label %190

190:                                              ; preds = %189, %186
  %191 = load i32, i32* %19, align 4
  %192 = icmp sgt i32 %191, 255
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i32 255, i32* %19, align 4
  br label %194

194:                                              ; preds = %193, %190
  %195 = load i32, i32* %20, align 4
  %196 = icmp sgt i32 %195, 127
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 127, i32* %20, align 4
  br label %198

198:                                              ; preds = %197, %194
  %199 = load i32, i32* %14, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i32, i32* %24, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %24, align 4
  br label %228

211:                                              ; preds = %201, %198
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %18, align 4
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %20, align 4
  %217 = call i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__* %212, i32 %213, i32 %214, i32 %215, i32 %216)
  store i32 %217, i32* %24, align 4
  %218 = load i32, i32* %24, align 4
  %219 = icmp eq i32 %218, -1
  br i1 %219, label %220, label %227

220:                                              ; preds = %211
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %20, align 4
  %226 = call i32 @gdImageColorClosestAlpha(%struct.TYPE_11__* %221, i32 %222, i32 %223, i32 %224, i32 %225)
  store i32 %226, i32* %24, align 4
  br label %227

227:                                              ; preds = %220, %211
  br label %228

228:                                              ; preds = %227, %207
  %229 = load i32, i32* %16, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = load i32, i32* %16, align 4
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %231
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %24, align 4
  %242 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %238, i32 %239, i32 %240, i32 %241)
  br label %243

243:                                              ; preds = %237, %231, %228
  %244 = load i32, i32* %23, align 4
  store i32 %244, i32* %22, align 4
  br label %245

245:                                              ; preds = %243
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %15, align 4
  br label %80

248:                                              ; preds = %80
  %249 = load i32, i32* %16, align 4
  store i32 %249, i32* %15, align 4
  %250 = load i32, i32* %15, align 4
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp slt i32 %250, %253
  br i1 %254, label %255, label %261

255:                                              ; preds = %248
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %23, align 4
  %260 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %255, %248
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, -1
  store i32 %263, i32* %15, align 4
  br label %264

264:                                              ; preds = %271, %261
  %265 = load i32, i32* %15, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %15, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %266, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %264
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %13, align 4
  %276 = call i32 @gdImageSetPixel(%struct.TYPE_11__* %272, i32 %273, i32 %274, i32 %275)
  br label %264

277:                                              ; preds = %264
  ret void
}

declare dso_local i32 @gdImageGetTrueColorPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @gdImageRed(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageGreen(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageBlue(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageAlpha(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @gdImageColorAllocateAlpha(%struct.TYPE_11__*, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageColorClosestAlpha(%struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

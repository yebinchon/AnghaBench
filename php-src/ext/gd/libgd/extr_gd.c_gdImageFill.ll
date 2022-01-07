; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFill.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageFill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.seg = type { i32 }

@gdTiled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageFill(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.seg*, align 8
  %18 = alloca %struct.seg*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.seg* null, %struct.seg** %17, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %280

34:                                               ; preds = %26, %4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @gdTiled, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @_gdImageFillTiled(%struct.TYPE_6__* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %280

52:                                               ; preds = %34
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %15, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @gdImageGetPixel(%struct.TYPE_6__* %59, i32 %60, i32 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %15, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %73, %69, %66, %52
  %81 = load i32, i32* %16, align 4
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %280

84:                                               ; preds = %76
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %127

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %20, align 4
  br label %92

92:                                               ; preds = %118, %89
  br label %93

93:                                               ; preds = %108, %92
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @gdImageGetPixel(%struct.TYPE_6__* %94, i32 %95, i32 %96)
  store i32 %97, i32* %21, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %276

102:                                              ; preds = %93
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @gdImageSetPixel(%struct.TYPE_6__* %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %19, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp slt i32 %109, %114
  br i1 %115, label %93, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %116
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = icmp slt i32 %119, %124
  br i1 %125, label %92, label %126

126:                                              ; preds = %118
  br label %276

127:                                              ; preds = %84
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  %135 = sdiv i32 %134, 4
  %136 = call i64 @safe_emalloc(i32 4, i32 %135, i32 1)
  %137 = inttoptr i64 %136 to %struct.seg*
  store %struct.seg* %137, %struct.seg** %17, align 8
  %138 = load %struct.seg*, %struct.seg** %17, align 8
  store %struct.seg* %138, %struct.seg** %18, align 8
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @FILL_PUSH(i32 %139, i32 %140, i32 %141, i32 1)
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @FILL_PUSH(i32 %144, i32 %145, i32 %146, i32 -1)
  br label %148

148:                                              ; preds = %272, %127
  %149 = load %struct.seg*, %struct.seg** %18, align 8
  %150 = load %struct.seg*, %struct.seg** %17, align 8
  %151 = icmp ugt %struct.seg* %149, %150
  br i1 %151, label %152, label %273

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i32 @FILL_POP(i32 %153, i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %177, %152
  %160 = load i32, i32* %6, align 4
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @gdImageGetPixel(%struct.TYPE_6__* %163, i32 %164, i32 %165)
  %167 = load i32, i32* %13, align 4
  %168 = icmp eq i32 %166, %167
  br label %169

169:                                              ; preds = %162, %159
  %170 = phi i1 [ false, %159 ], [ %168, %162 ]
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @gdImageSetPixel(%struct.TYPE_6__* %172, i32 %173, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %171
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %6, align 4
  br label %159

180:                                              ; preds = %169
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %180
  br label %246

185:                                              ; preds = %180
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = load i32, i32* %10, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %185
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load i32, i32* %12, align 4
  %197 = sub nsw i32 0, %196
  %198 = call i32 @FILL_PUSH(i32 %192, i32 %193, i32 %195, i32 %197)
  br label %199

199:                                              ; preds = %191, %185
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %268, %199
  br label %203

203:                                              ; preds = %222, %202
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp sle i32 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %203
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @gdImageGetPixel(%struct.TYPE_6__* %208, i32 %209, i32 %210)
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %211, %212
  br label %214

214:                                              ; preds = %207, %203
  %215 = phi i1 [ false, %203 ], [ %213, %207 ]
  br i1 %215, label %216, label %225

216:                                              ; preds = %214
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @gdImageSetPixel(%struct.TYPE_6__* %217, i32 %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %216
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %203

225:                                              ; preds = %214
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* %6, align 4
  %229 = sub nsw i32 %228, 1
  %230 = load i32, i32* %12, align 4
  %231 = call i32 @FILL_PUSH(i32 %226, i32 %227, i32 %229, i32 %230)
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %11, align 4
  %234 = add nsw i32 %233, 1
  %235 = icmp sgt i32 %232, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %225
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %11, align 4
  %239 = add nsw i32 %238, 1
  %240 = load i32, i32* %6, align 4
  %241 = sub nsw i32 %240, 1
  %242 = load i32, i32* %12, align 4
  %243 = sub nsw i32 0, %242
  %244 = call i32 @FILL_PUSH(i32 %237, i32 %239, i32 %241, i32 %243)
  br label %245

245:                                              ; preds = %236, %225
  br label %246

246:                                              ; preds = %245, %184
  %247 = load i32, i32* %6, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %263, %246
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp sle i32 %250, %251
  br i1 %252, label %253, label %260

253:                                              ; preds = %249
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @gdImageGetPixel(%struct.TYPE_6__* %254, i32 %255, i32 %256)
  %258 = load i32, i32* %13, align 4
  %259 = icmp ne i32 %257, %258
  br label %260

260:                                              ; preds = %253, %249
  %261 = phi i1 [ false, %249 ], [ %259, %253 ]
  br i1 %261, label %262, label %266

262:                                              ; preds = %260
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %6, align 4
  br label %249

266:                                              ; preds = %260
  %267 = load i32, i32* %6, align 4
  store i32 %267, i32* %9, align 4
  br label %268

268:                                              ; preds = %266
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %11, align 4
  %271 = icmp sle i32 %269, %270
  br i1 %271, label %202, label %272

272:                                              ; preds = %268
  br label %148

273:                                              ; preds = %148
  %274 = load %struct.seg*, %struct.seg** %17, align 8
  %275 = call i32 @efree(%struct.seg* %274)
  br label %276

276:                                              ; preds = %273, %126, %101
  %277 = load i32, i32* %16, align 4
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 1
  store i32 %277, i32* %279, align 4
  br label %280

280:                                              ; preds = %276, %80, %43, %33
  ret void
}

declare dso_local i32 @_gdImageFillTiled(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @gdImageGetPixel(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @FILL_PUSH(i32, i32, i32, i32) #1

declare dso_local i32 @FILL_POP(i32, i32, i32, i32) #1

declare dso_local i32 @efree(%struct.seg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_imagelist.c_add_dib_bits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_imagelist.c_add_dib_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*)* @add_dib_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_dib_bits(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_14__* %5, %struct.TYPE_14__* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_12__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_14__* %5, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %23, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 31
  %35 = sdiv i32 %34, 32
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %24, align 4
  store i32 0, i32* %21, align 4
  br label %37

37:                                               ; preds = %294, %9
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %297

41:                                               ; preds = %37
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %25, align 4
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %21, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @imagelist_point_from_index(%struct.TYPE_13__* %43, i32 %46, %struct.TYPE_12__* %22)
  store i32 0, i32* %19, align 4
  br label %48

48:                                               ; preds = %88, %41
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %25, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %91

58:                                               ; preds = %56
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %59, %60
  store i32 %61, i32* %20, align 4
  br label %62

62:                                               ; preds = %84, %58
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %21, align 4
  %65 = add nsw i32 %64, 1
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* %23, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %20, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, -16777216
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %25, align 4
  br i1 %80, label %82, label %83

82:                                               ; preds = %69
  br label %87

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %20, align 4
  br label %62

87:                                               ; preds = %82, %62
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %19, align 4
  br label %48

91:                                               ; preds = %56
  %92 = load i32, i32* %25, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %158, label %94

94:                                               ; preds = %91
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %154, %94
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %157

99:                                               ; preds = %95
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %13, align 4
  %102 = mul nsw i32 %100, %101
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %150, %99
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* %13, align 4
  %108 = mul nsw i32 %106, %107
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %103
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %112 = icmp ne %struct.TYPE_14__* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load i32*, i32** %18, align 8
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %24, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %20, align 4
  %119 = sdiv i32 %118, 8
  %120 = add nsw i32 %117, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %114, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %20, align 4
  %125 = srem i32 %124, 8
  %126 = shl i32 %123, %125
  %127 = and i32 %126, 128
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %113, %110
  %130 = load i32*, i32** %17, align 8
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %23, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %20, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, -16777216
  store i32 %139, i32* %137, align 4
  br label %149

140:                                              ; preds = %113
  %141 = load i32*, i32** %17, align 8
  %142 = load i32, i32* %19, align 4
  %143 = load i32, i32* %23, align 4
  %144 = mul nsw i32 %142, %143
  %145 = load i32, i32* %20, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %141, i64 %147
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %140, %129
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %20, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %20, align 4
  br label %103

153:                                              ; preds = %103
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %19, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %19, align 4
  br label %95

157:                                              ; preds = %95
  br label %243

158:                                              ; preds = %91
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %21, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  store i32 1, i32* %166, align 4
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %168 = icmp ne %struct.TYPE_14__* %167, null
  br i1 %168, label %169, label %242

169:                                              ; preds = %158
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %242

174:                                              ; preds = %169
  store i32 0, i32* %19, align 4
  br label %175

175:                                              ; preds = %238, %174
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %241

179:                                              ; preds = %175
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %13, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* %20, align 4
  br label %183

183:                                              ; preds = %234, %179
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %21, align 4
  %186 = add nsw i32 %185, 1
  %187 = load i32, i32* %13, align 4
  %188 = mul nsw i32 %186, %187
  %189 = icmp slt i32 %184, %188
  br i1 %189, label %190, label %237

190:                                              ; preds = %183
  %191 = load i32*, i32** %17, align 8
  %192 = load i32, i32* %19, align 4
  %193 = load i32, i32* %23, align 4
  %194 = mul nsw i32 %192, %193
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %191, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = ashr i32 %199, 24
  %201 = icmp sgt i32 %200, 25
  br i1 %201, label %202, label %218

202:                                              ; preds = %190
  %203 = load i32, i32* %20, align 4
  %204 = srem i32 %203, 8
  %205 = ashr i32 128, %204
  %206 = xor i32 %205, -1
  %207 = load i32*, i32** %18, align 8
  %208 = load i32, i32* %19, align 4
  %209 = load i32, i32* %24, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %20, align 4
  %212 = sdiv i32 %211, 8
  %213 = add nsw i32 %210, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %207, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = and i32 %216, %206
  store i32 %217, i32* %215, align 4
  br label %233

218:                                              ; preds = %190
  %219 = load i32, i32* %20, align 4
  %220 = srem i32 %219, 8
  %221 = ashr i32 128, %220
  %222 = load i32*, i32** %18, align 8
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %24, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %20, align 4
  %227 = sdiv i32 %226, 8
  %228 = add nsw i32 %225, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %222, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %221
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %218, %202
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %20, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %20, align 4
  br label %183

237:                                              ; preds = %183
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %19, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %19, align 4
  br label %175

241:                                              ; preds = %175
  br label %242

242:                                              ; preds = %241, %169, %158
  br label %243

243:                                              ; preds = %242, %157
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %13, align 4
  %259 = mul nsw i32 %257, %258
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32*, i32** %17, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %264 = load i32, i32* @DIB_RGB_COLORS, align 4
  %265 = load i32, i32* @SRCCOPY, align 4
  %266 = call i32 @StretchDIBits(i32 %246, i32 %248, i32 %250, i32 %253, i32 %256, i32 %259, i32 0, i32 %260, i32 %261, i32* %262, %struct.TYPE_14__* %263, i32 %264, i32 %265)
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %268 = icmp ne %struct.TYPE_14__* %267, null
  br i1 %268, label %269, label %293

269:                                              ; preds = %243
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %13, align 4
  %285 = mul nsw i32 %283, %284
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* %14, align 4
  %288 = load i32*, i32** %18, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %290 = load i32, i32* @DIB_RGB_COLORS, align 4
  %291 = load i32, i32* @SRCCOPY, align 4
  %292 = call i32 @StretchDIBits(i32 %272, i32 %274, i32 %276, i32 %279, i32 %282, i32 %285, i32 0, i32 %286, i32 %287, i32* %288, %struct.TYPE_14__* %289, i32 %290, i32 %291)
  br label %293

293:                                              ; preds = %269, %243
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %21, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %21, align 4
  br label %37

297:                                              ; preds = %37
  ret void
}

declare dso_local i32 @imagelist_point_from_index(%struct.TYPE_13__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @StretchDIBits(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

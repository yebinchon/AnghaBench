; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_ReadTransparentPngData.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_png.c_ReadTransparentPngData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@HPDF_OK = common dso_local global i64 0, align 8
@PNG_COLOR_MASK_ALPHA = common dso_local global i32 0, align 4
@HPDF_INVALID_PNG_IMAGE = common dso_local global i64 0, align 8
@HPDF_FAILD_TO_ALLOC_MEM = common dso_local global i64 0, align 8
@HPDF_FILE_IO_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32, i32, i32*********)* @ReadTransparentPngData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReadTransparentPngData(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32********* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*********, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32**********, align 8
  %15 = alloca i32*********, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32********* %3, i32********** %9, align 8
  %20 = load i64, i64* @HPDF_OK, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @png_get_image_height(i32 %21, i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @png_get_image_width(i32 %24, i32 %25)
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @png_get_color_type(i32 %27, i32 %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @PNG_COLOR_MASK_ALPHA, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %4
  %35 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %35, i64* %5, align 8
  br label %275

36:                                               ; preds = %4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = call i8* @HPDF_GetMem(i32 %39, i32 %43)
  %45 = bitcast i8* %44 to i32**********
  store i32********** %45, i32*********** %14, align 8
  %46 = load i32**********, i32*********** %14, align 8
  %47 = icmp ne i32********** %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %36
  %49 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %49, i64* %5, align 8
  br label %275

50:                                               ; preds = %36
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @png_get_rowbytes(i32 %51, i32 %52)
  store i32 %53, i32* %19, align 4
  store i64 0, i64* %12, align 8
  br label %54

54:                                               ; preds = %99, %50
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %102

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %19, align 4
  %64 = call i8* @HPDF_GetMem(i32 %62, i32 %63)
  %65 = bitcast i8* %64 to i32*********
  %66 = load i32**********, i32*********** %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i32*********, i32********** %66, i64 %67
  store i32********* %65, i32********** %68, align 8
  %69 = load i32**********, i32*********** %14, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i32*********, i32********** %69, i64 %70
  %72 = load i32*********, i32********** %71, align 8
  %73 = icmp ne i32********* %72, null
  br i1 %73, label %98, label %74

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i64, i64* %12, align 8
  %77 = icmp ugt i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32**********, i32*********** %14, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds i32*********, i32********** %82, i64 %83
  %85 = load i32*********, i32********** %84, align 8
  %86 = bitcast i32********* %85 to i32**********
  %87 = call i32 @HPDF_FreeMem(i32 %81, i32********** %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %12, align 8
  br label %75

91:                                               ; preds = %75
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32**********, i32*********** %14, align 8
  %96 = call i32 @HPDF_FreeMem(i32 %94, i32********** %95)
  %97 = load i64, i64* @HPDF_FAILD_TO_ALLOC_MEM, align 8
  store i64 %97, i64* %5, align 8
  br label %275

98:                                               ; preds = %59
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %12, align 8
  br label %54

102:                                              ; preds = %54
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %7, align 4
  %105 = load i32**********, i32*********** %14, align 8
  %106 = call i32 @png_read_image(i32 %104, i32********** %105)
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @HPDF_OK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %115, i64* %10, align 8
  br label %249

116:                                              ; preds = %103
  %117 = load i32, i32* %16, align 4
  switch i32 %117, label %246 [
    i32 128, label %118
    i32 129, label %184
  ]

118:                                              ; preds = %116
  %119 = load i32, i32* %18, align 4
  %120 = mul nsw i32 3, %119
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  store i64 0, i64* %13, align 8
  br label %124

124:                                              ; preds = %180, %118
  %125 = load i64, i64* %13, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %129, label %183

129:                                              ; preds = %124
  store i64 0, i64* %12, align 8
  br label %130

130:                                              ; preds = %165, %129
  %131 = load i64, i64* %12, align 8
  %132 = load i32, i32* %18, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %131, %133
  br i1 %134, label %135, label %168

135:                                              ; preds = %130
  %136 = load i32**********, i32*********** %14, align 8
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i32*********, i32********** %136, i64 %137
  %139 = load i32*********, i32********** %138, align 8
  store i32********* %139, i32********** %15, align 8
  %140 = load i32*********, i32********** %15, align 8
  %141 = load i64, i64* %12, align 8
  %142 = mul i64 3, %141
  %143 = getelementptr inbounds i32********, i32********* %140, i64 %142
  %144 = ptrtoint i32********* %143 to i32
  %145 = load i32*********, i32********** %15, align 8
  %146 = load i64, i64* %12, align 8
  %147 = mul i64 4, %146
  %148 = getelementptr inbounds i32********, i32********* %145, i64 %147
  %149 = ptrtoint i32********* %148 to i32
  %150 = call i32 @memmove(i32 %144, i32 %149, i32 3)
  %151 = load i32*********, i32********** %15, align 8
  %152 = load i64, i64* %12, align 8
  %153 = mul i64 4, %152
  %154 = add i64 %153, 3
  %155 = getelementptr inbounds i32********, i32********* %151, i64 %154
  %156 = load i32********, i32********* %155, align 8
  %157 = load i32*********, i32********** %9, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %13, align 8
  %161 = mul i64 %159, %160
  %162 = load i64, i64* %12, align 8
  %163 = add i64 %161, %162
  %164 = getelementptr inbounds i32********, i32********* %157, i64 %163
  store i32******** %156, i32********* %164, align 8
  br label %165

165:                                              ; preds = %135
  %166 = load i64, i64* %12, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %12, align 8
  br label %130

168:                                              ; preds = %130
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32*********, i32********** %15, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i64 @HPDF_Stream_Write(i32 %171, i32********* %172, i32 %173)
  %175 = load i64, i64* @HPDF_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i64, i64* @HPDF_FILE_IO_ERROR, align 8
  store i64 %178, i64* %10, align 8
  br label %249

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179
  %181 = load i64, i64* %13, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %13, align 8
  br label %124

183:                                              ; preds = %124
  br label %248

184:                                              ; preds = %116
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %11, align 4
  store i64 0, i64* %13, align 8
  br label %189

189:                                              ; preds = %242, %184
  %190 = load i64, i64* %13, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp ult i64 %190, %192
  br i1 %193, label %194, label %245

194:                                              ; preds = %189
  store i64 0, i64* %12, align 8
  br label %195

195:                                              ; preds = %227, %194
  %196 = load i64, i64* %12, align 8
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp ult i64 %196, %198
  br i1 %199, label %200, label %230

200:                                              ; preds = %195
  %201 = load i32**********, i32*********** %14, align 8
  %202 = load i64, i64* %13, align 8
  %203 = getelementptr inbounds i32*********, i32********** %201, i64 %202
  %204 = load i32*********, i32********** %203, align 8
  store i32********* %204, i32********** %15, align 8
  %205 = load i32*********, i32********** %15, align 8
  %206 = load i64, i64* %12, align 8
  %207 = mul i64 2, %206
  %208 = getelementptr inbounds i32********, i32********* %205, i64 %207
  %209 = load i32********, i32********* %208, align 8
  %210 = load i32*********, i32********** %15, align 8
  %211 = load i64, i64* %12, align 8
  %212 = getelementptr inbounds i32********, i32********* %210, i64 %211
  store i32******** %209, i32********* %212, align 8
  %213 = load i32*********, i32********** %15, align 8
  %214 = load i64, i64* %12, align 8
  %215 = mul i64 2, %214
  %216 = add i64 %215, 1
  %217 = getelementptr inbounds i32********, i32********* %213, i64 %216
  %218 = load i32********, i32********* %217, align 8
  %219 = load i32*********, i32********** %9, align 8
  %220 = load i32, i32* %18, align 4
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %13, align 8
  %223 = mul i64 %221, %222
  %224 = load i64, i64* %12, align 8
  %225 = add i64 %223, %224
  %226 = getelementptr inbounds i32********, i32********* %219, i64 %225
  store i32******** %218, i32********* %226, align 8
  br label %227

227:                                              ; preds = %200
  %228 = load i64, i64* %12, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %12, align 8
  br label %195

230:                                              ; preds = %195
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32*********, i32********** %15, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i64 @HPDF_Stream_Write(i32 %233, i32********* %234, i32 %235)
  %237 = load i64, i64* @HPDF_OK, align 8
  %238 = icmp ne i64 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %230
  %240 = load i64, i64* @HPDF_FILE_IO_ERROR, align 8
  store i64 %240, i64* %10, align 8
  br label %249

241:                                              ; preds = %230
  br label %242

242:                                              ; preds = %241
  %243 = load i64, i64* %13, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %13, align 8
  br label %189

245:                                              ; preds = %189
  br label %248

246:                                              ; preds = %116
  %247 = load i64, i64* @HPDF_INVALID_PNG_IMAGE, align 8
  store i64 %247, i64* %10, align 8
  br label %249

248:                                              ; preds = %245, %183
  br label %249

249:                                              ; preds = %248, %246, %239, %177, %114
  store i64 0, i64* %12, align 8
  br label %250

250:                                              ; preds = %265, %249
  %251 = load i64, i64* %12, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = icmp ult i64 %251, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %250
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load i32**********, i32*********** %14, align 8
  %260 = load i64, i64* %12, align 8
  %261 = getelementptr inbounds i32*********, i32********** %259, i64 %260
  %262 = load i32*********, i32********** %261, align 8
  %263 = bitcast i32********* %262 to i32**********
  %264 = call i32 @HPDF_FreeMem(i32 %258, i32********** %263)
  br label %265

265:                                              ; preds = %255
  %266 = load i64, i64* %12, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %12, align 8
  br label %250

268:                                              ; preds = %250
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32**********, i32*********** %14, align 8
  %273 = call i32 @HPDF_FreeMem(i32 %271, i32********** %272)
  %274 = load i64, i64* %10, align 8
  store i64 %274, i64* %5, align 8
  br label %275

275:                                              ; preds = %268, %91, %48, %34
  %276 = load i64, i64* %5, align 8
  ret i64 %276
}

declare dso_local i32 @png_get_image_height(i32, i32) #1

declare dso_local i32 @png_get_image_width(i32, i32) #1

declare dso_local i32 @png_get_color_type(i32, i32) #1

declare dso_local i8* @HPDF_GetMem(i32, i32) #1

declare dso_local i32 @png_get_rowbytes(i32, i32) #1

declare dso_local i32 @HPDF_FreeMem(i32, i32**********) #1

declare dso_local i32 @png_read_image(i32, i32**********) #1

declare dso_local i32 @memmove(i32, i32, i32) #1

declare dso_local i64 @HPDF_Stream_Write(i32, i32*********, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_draw_char.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/qwiic/extr_micro_oled.c_draw_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOTALFONTS = common dso_local global i64 0, align 8
@fonts_pointer = common dso_local global i64* null, align 8
@FONTHEADERSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_char(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* @TOTALFONTS, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i64, i64* %12, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %6
  br label %272

36:                                               ; preds = %32
  %37 = load i64, i64* %12, align 8
  store i64 %37, i64* %23, align 8
  %38 = load i64*, i64** @fonts_pointer, align 8
  %39 = load i64, i64* %23, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, 0
  %43 = call i32 @pgm_read_byte(i64 %42)
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %24, align 8
  %45 = load i64*, i64** @fonts_pointer, align 8
  %46 = load i64, i64* %23, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @pgm_read_byte(i64 %49)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %25, align 8
  %52 = load i64*, i64** @fonts_pointer, align 8
  %53 = load i64, i64* %23, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 2
  %57 = call i32 @pgm_read_byte(i64 %56)
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %26, align 8
  %59 = load i64*, i64** @fonts_pointer, align 8
  %60 = load i64, i64* %23, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 3
  %64 = call i32 @pgm_read_byte(i64 %63)
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %27, align 8
  %66 = load i64*, i64** @fonts_pointer, align 8
  %67 = load i64, i64* %23, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 4
  %71 = call i32 @pgm_read_byte(i64 %70)
  %72 = mul nsw i32 %71, 100
  %73 = load i64*, i64** @fonts_pointer, align 8
  %74 = load i64, i64* %23, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 5
  %78 = call i32 @pgm_read_byte(i64 %77)
  %79 = add nsw i32 %72, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %28, align 8
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %26, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %36
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %26, align 8
  %87 = load i64, i64* %27, align 8
  %88 = add nsw i64 %86, %87
  %89 = sub nsw i64 %88, 1
  %90 = icmp sgt i64 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %36
  br label %272

92:                                               ; preds = %84
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %26, align 8
  %95 = sub nsw i64 %93, %94
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %25, align 8
  %97 = sdiv i64 %96, 8
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %13, align 8
  %99 = icmp sle i64 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i64 1, i64* %13, align 8
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i64, i64* %13, align 8
  %103 = icmp eq i64 %102, 1
  br i1 %103, label %104, label %173

104:                                              ; preds = %101
  store i64 0, i64* %16, align 8
  br label %105

105:                                              ; preds = %169, %104
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %24, align 8
  %108 = add nsw i64 %107, 1
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %110, label %172

110:                                              ; preds = %105
  %111 = load i64, i64* %16, align 8
  %112 = load i64, i64* %24, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  store i64 0, i64* %18, align 8
  br label %130

115:                                              ; preds = %110
  %116 = load i64*, i64** @fonts_pointer, align 8
  %117 = load i64, i64* %23, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @FONTHEADERSIZE, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %24, align 8
  %124 = mul nsw i64 %122, %123
  %125 = add nsw i64 %121, %124
  %126 = load i64, i64* %16, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @pgm_read_byte(i64 %127)
  %129 = sext i32 %128 to i64
  store i64 %129, i64* %18, align 8
  br label %130

130:                                              ; preds = %115, %114
  store i64 0, i64* %17, align 8
  br label %131

131:                                              ; preds = %165, %130
  %132 = load i64, i64* %17, align 8
  %133 = icmp slt i64 %132, 8
  br i1 %133, label %134, label %168

134:                                              ; preds = %131
  %135 = load i64, i64* %18, align 8
  %136 = and i64 %135, 1
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* %16, align 8
  %141 = add nsw i64 %139, %140
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* %17, align 8
  %144 = add nsw i64 %142, %143
  %145 = load i64, i64* %10, align 8
  %146 = trunc i64 %145 to i32
  %147 = load i64, i64* %11, align 8
  %148 = call i32 @draw_pixel(i64 %141, i64 %144, i32 %146, i64 %147)
  br label %162

149:                                              ; preds = %134
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %16, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* %17, align 8
  %155 = add nsw i64 %153, %154
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  %158 = xor i1 %157, true
  %159 = zext i1 %158 to i32
  %160 = load i64, i64* %11, align 8
  %161 = call i32 @draw_pixel(i64 %152, i64 %155, i32 %159, i64 %160)
  br label %162

162:                                              ; preds = %149, %138
  %163 = load i64, i64* %18, align 8
  %164 = ashr i64 %163, 1
  store i64 %164, i64* %18, align 8
  br label %165

165:                                              ; preds = %162
  %166 = load i64, i64* %17, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %17, align 8
  br label %131

168:                                              ; preds = %131
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %16, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %105

172:                                              ; preds = %105
  br label %272

173:                                              ; preds = %101
  %174 = load i64, i64* %28, align 8
  %175 = load i64, i64* %24, align 8
  %176 = sdiv i64 %174, %175
  store i64 %176, i64* %19, align 8
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %19, align 8
  %179 = srem i64 %177, %178
  store i64 %179, i64* %20, align 8
  %180 = load i64, i64* %15, align 8
  %181 = load i64, i64* %19, align 8
  %182 = sdiv i64 %180, %181
  %183 = trunc i64 %182 to i32
  %184 = sext i32 %183 to i64
  store i64 %184, i64* %21, align 8
  %185 = load i64, i64* %21, align 8
  %186 = load i64, i64* %28, align 8
  %187 = mul nsw i64 %185, %186
  %188 = load i64, i64* %25, align 8
  %189 = sdiv i64 %188, 8
  %190 = mul nsw i64 %187, %189
  %191 = load i64, i64* %20, align 8
  %192 = load i64, i64* %24, align 8
  %193 = mul nsw i64 %191, %192
  %194 = add nsw i64 %190, %193
  store i64 %194, i64* %22, align 8
  store i64 0, i64* %14, align 8
  br label %195

195:                                              ; preds = %269, %173
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* %13, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %272

199:                                              ; preds = %195
  store i64 0, i64* %16, align 8
  br label %200

200:                                              ; preds = %265, %199
  %201 = load i64, i64* %16, align 8
  %202 = load i64, i64* %24, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %268

204:                                              ; preds = %200
  %205 = load i64*, i64** @fonts_pointer, align 8
  %206 = load i64, i64* %23, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @FONTHEADERSIZE, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i64, i64* %22, align 8
  %212 = load i64, i64* %16, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i64, i64* %14, align 8
  %215 = load i64, i64* %28, align 8
  %216 = mul nsw i64 %214, %215
  %217 = add nsw i64 %213, %216
  %218 = add nsw i64 %210, %217
  %219 = call i32 @pgm_read_byte(i64 %218)
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %18, align 8
  store i64 0, i64* %17, align 8
  br label %221

221:                                              ; preds = %261, %204
  %222 = load i64, i64* %17, align 8
  %223 = icmp slt i64 %222, 8
  br i1 %223, label %224, label %264

224:                                              ; preds = %221
  %225 = load i64, i64* %18, align 8
  %226 = and i64 %225, 1
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* %16, align 8
  %231 = add nsw i64 %229, %230
  %232 = load i64, i64* %8, align 8
  %233 = load i64, i64* %17, align 8
  %234 = add nsw i64 %232, %233
  %235 = load i64, i64* %14, align 8
  %236 = mul nsw i64 %235, 8
  %237 = add nsw i64 %234, %236
  %238 = load i64, i64* %10, align 8
  %239 = trunc i64 %238 to i32
  %240 = load i64, i64* %11, align 8
  %241 = call i32 @draw_pixel(i64 %231, i64 %237, i32 %239, i64 %240)
  br label %258

242:                                              ; preds = %224
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* %16, align 8
  %245 = add nsw i64 %243, %244
  %246 = load i64, i64* %8, align 8
  %247 = load i64, i64* %17, align 8
  %248 = add nsw i64 %246, %247
  %249 = load i64, i64* %14, align 8
  %250 = mul nsw i64 %249, 8
  %251 = add nsw i64 %248, %250
  %252 = load i64, i64* %10, align 8
  %253 = icmp ne i64 %252, 0
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = load i64, i64* %11, align 8
  %257 = call i32 @draw_pixel(i64 %245, i64 %251, i32 %255, i64 %256)
  br label %258

258:                                              ; preds = %242, %228
  %259 = load i64, i64* %18, align 8
  %260 = ashr i64 %259, 1
  store i64 %260, i64* %18, align 8
  br label %261

261:                                              ; preds = %258
  %262 = load i64, i64* %17, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %17, align 8
  br label %221

264:                                              ; preds = %221
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* %16, align 8
  %267 = add nsw i64 %266, 1
  store i64 %267, i64* %16, align 8
  br label %200

268:                                              ; preds = %200
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %14, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %14, align 8
  br label %195

272:                                              ; preds = %35, %91, %172, %195
  ret void
}

declare dso_local i32 @pgm_read_byte(i64) #1

declare dso_local i32 @draw_pixel(i64, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

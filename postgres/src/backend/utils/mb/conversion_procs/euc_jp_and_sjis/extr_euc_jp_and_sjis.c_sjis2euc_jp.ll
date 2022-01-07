; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_sjis2euc_jp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/conversion_procs/euc_jp_and_sjis/extr_euc_jp_and_sjis.c_sjis2euc_jp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@PG_SJIS = common dso_local global i32 0, align 4
@SS2 = common dso_local global i32 0, align 4
@ibmkanji = common dso_local global %struct.TYPE_2__* null, align 8
@PGEUCALTCODE = common dso_local global i32 0, align 4
@SS3 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @sjis2euc_jp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sjis2euc_jp(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %13

13:                                               ; preds = %303, %31, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %311

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @IS_HIGHBIT_SET(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %40, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @PG_SJIS, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @report_invalid_encoding(i32 %27, i8* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %7, align 4
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 %33, i8* %34, align 1
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  br label %13

40:                                               ; preds = %16
  %41 = load i32, i32* @PG_SJIS, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @pg_encoding_verifymb(i32 %41, i8* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @PG_SJIS, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @report_invalid_encoding(i32 %48, i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %40
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 161
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp sle i32 %56, 223
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i32, i32* @SS2, align 4
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %5, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %7, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  store i8 %64, i8* %65, align 1
  br label %303

67:                                               ; preds = %55, %52
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 60736
  br i1 %77, label %78, label %113

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %79, 61504
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %109, %81
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp eq i32 %89, 65535
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %112

92:                                               ; preds = %82
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 255
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 255
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %96, %92
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %82

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112, %78, %67
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 60223
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load i32, i32* %7, align 4
  %118 = and i32 %117, 63
  %119 = shl i32 %118, 1
  %120 = add nsw i32 %119, 159
  %121 = load i32, i32* %8, align 4
  %122 = icmp sgt i32 %121, 158
  %123 = zext i1 %122 to i32
  %124 = add nsw i32 %120, %123
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %5, align 8
  store i8 %125, i8* %126, align 1
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %129, 158
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 2, i32 96
  %133 = add nsw i32 %128, %132
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %134, 128
  %136 = zext i1 %135 to i32
  %137 = add nsw i32 %133, %136
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  store i8 %138, i8* %139, align 1
  br label %302

141:                                              ; preds = %113
  %142 = load i32, i32* %10, align 4
  %143 = icmp sge i32 %142, 60224
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 61504
  br i1 %146, label %153, label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %10, align 4
  %149 = icmp sge i32 %148, 64588
  br i1 %149, label %150, label %164

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = icmp sle i32 %151, 64764
  br i1 %152, label %153, label %164

153:                                              ; preds = %150, %144
  %154 = load i32, i32* @PGEUCALTCODE, align 4
  %155 = ashr i32 %154, 8
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  store i8 %156, i8* %157, align 1
  %159 = load i32, i32* @PGEUCALTCODE, align 4
  %160 = and i32 %159, 255
  %161 = trunc i32 %160 to i8
  %162 = load i8*, i8** %5, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %5, align 8
  store i8 %161, i8* %162, align 1
  br label %301

164:                                              ; preds = %150, %147
  %165 = load i32, i32* %10, align 4
  %166 = icmp sge i32 %165, 61504
  br i1 %166, label %167, label %197

167:                                              ; preds = %164
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %168, 62784
  br i1 %169, label %170, label %197

170:                                              ; preds = %167
  %171 = load i32, i32* %7, align 4
  %172 = sub nsw i32 %171, 111
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = and i32 %173, 63
  %175 = shl i32 %174, 1
  %176 = add nsw i32 %175, 243
  %177 = load i32, i32* %8, align 4
  %178 = icmp sgt i32 %177, 158
  %179 = zext i1 %178 to i32
  %180 = add nsw i32 %176, %179
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %5, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %5, align 8
  store i8 %181, i8* %182, align 1
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp sgt i32 %185, 158
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 2, i32 96
  %189 = add nsw i32 %184, %188
  %190 = load i32, i32* %8, align 4
  %191 = icmp slt i32 %190, 128
  %192 = zext i1 %191 to i32
  %193 = add nsw i32 %189, %192
  %194 = trunc i32 %193 to i8
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %5, align 8
  store i8 %194, i8* %195, align 1
  br label %300

197:                                              ; preds = %167, %164
  %198 = load i32, i32* %10, align 4
  %199 = icmp sge i32 %198, 62784
  br i1 %199, label %200, label %234

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %201, 64064
  br i1 %202, label %203, label %234

203:                                              ; preds = %200
  %204 = load i8*, i8** @SS3, align 8
  %205 = ptrtoint i8* %204 to i8
  %206 = load i8*, i8** %5, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %5, align 8
  store i8 %205, i8* %206, align 1
  %208 = load i32, i32* %7, align 4
  %209 = sub nsw i32 %208, 116
  store i32 %209, i32* %7, align 4
  %210 = load i32, i32* %7, align 4
  %211 = and i32 %210, 63
  %212 = shl i32 %211, 1
  %213 = add nsw i32 %212, 243
  %214 = load i32, i32* %8, align 4
  %215 = icmp sgt i32 %214, 158
  %216 = zext i1 %215 to i32
  %217 = add nsw i32 %213, %216
  %218 = trunc i32 %217 to i8
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %220, i8** %5, align 8
  store i8 %218, i8* %219, align 1
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp sgt i32 %222, 158
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 2, i32 96
  %226 = add nsw i32 %221, %225
  %227 = load i32, i32* %8, align 4
  %228 = icmp slt i32 %227, 128
  %229 = zext i1 %228 to i32
  %230 = add nsw i32 %226, %229
  %231 = trunc i32 %230 to i8
  %232 = load i8*, i8** %5, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %5, align 8
  store i8 %231, i8* %232, align 1
  br label %299

234:                                              ; preds = %200, %197
  %235 = load i32, i32* %10, align 4
  %236 = icmp sge i32 %235, 64064
  br i1 %236, label %237, label %298

237:                                              ; preds = %234
  store i32 0, i32* %9, align 4
  br label %238

238:                                              ; preds = %294, %237
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %11, align 4
  %245 = load i32, i32* %11, align 4
  %246 = icmp eq i32 %245, 65535
  br i1 %246, label %247, label %248

247:                                              ; preds = %238
  br label %297

248:                                              ; preds = %238
  %249 = load i32, i32* %11, align 4
  %250 = load i32, i32* %10, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %293

252:                                              ; preds = %248
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ibmkanji, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %10, align 4
  %259 = load i32, i32* %10, align 4
  %260 = icmp sge i32 %259, 9371648
  br i1 %260, label %261, label %279

261:                                              ; preds = %252
  %262 = load i8*, i8** @SS3, align 8
  %263 = ptrtoint i8* %262 to i8
  %264 = load i8*, i8** %5, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %5, align 8
  store i8 %263, i8* %264, align 1
  %266 = load i32, i32* %10, align 4
  %267 = and i32 %266, 65280
  %268 = ashr i32 %267, 8
  %269 = or i32 128, %268
  %270 = trunc i32 %269 to i8
  %271 = load i8*, i8** %5, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %5, align 8
  store i8 %270, i8* %271, align 1
  %273 = load i32, i32* %10, align 4
  %274 = and i32 %273, 255
  %275 = or i32 128, %274
  %276 = trunc i32 %275 to i8
  %277 = load i8*, i8** %5, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %5, align 8
  store i8 %276, i8* %277, align 1
  br label %292

279:                                              ; preds = %252
  %280 = load i32, i32* %10, align 4
  %281 = ashr i32 %280, 8
  %282 = or i32 128, %281
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %5, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %5, align 8
  store i8 %283, i8* %284, align 1
  %286 = load i32, i32* %10, align 4
  %287 = and i32 %286, 255
  %288 = or i32 128, %287
  %289 = trunc i32 %288 to i8
  %290 = load i8*, i8** %5, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %5, align 8
  store i8 %289, i8* %290, align 1
  br label %292

292:                                              ; preds = %279, %261
  br label %293

293:                                              ; preds = %292, %248
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %9, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %9, align 4
  br label %238

297:                                              ; preds = %247
  br label %298

298:                                              ; preds = %297, %234
  br label %299

299:                                              ; preds = %298, %203
  br label %300

300:                                              ; preds = %299, %170
  br label %301

301:                                              ; preds = %300, %153
  br label %302

302:                                              ; preds = %301, %116
  br label %303

303:                                              ; preds = %302, %58
  %304 = load i32, i32* %12, align 4
  %305 = load i8*, i8** %4, align 8
  %306 = sext i32 %304 to i64
  %307 = getelementptr inbounds i8, i8* %305, i64 %306
  store i8* %307, i8** %4, align 8
  %308 = load i32, i32* %12, align 4
  %309 = load i32, i32* %6, align 4
  %310 = sub nsw i32 %309, %308
  store i32 %310, i32* %6, align 4
  br label %13

311:                                              ; preds = %13
  %312 = load i8*, i8** %5, align 8
  store i8 0, i8* %312, align 1
  ret void
}

declare dso_local i32 @IS_HIGHBIT_SET(i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

declare dso_local i32 @pg_encoding_verifymb(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

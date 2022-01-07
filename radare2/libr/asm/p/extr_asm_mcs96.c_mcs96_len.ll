; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_mcs96.c_mcs96_len.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_asm_mcs96.c_mcs96_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@mcs96_op = common dso_local global %struct.TYPE_2__* null, align 8
@MCS96_FE = common dso_local global i32 0, align 4
@MCS96_5B_OR_6B = common dso_local global i32 0, align 4
@MCS96_4B_OR_5B = common dso_local global i32 0, align 4
@MCS96_3B_OR_4B = common dso_local global i32 0, align 4
@MCS96_5B = common dso_local global i32 0, align 4
@MCS96_4B = common dso_local global i32 0, align 4
@MCS96_3B = common dso_local global i32 0, align 4
@MCS96_2B = common dso_local global i32 0, align 4
@mcs96_fe_op = common dso_local global i32* null, align 8
@MCS96_2OP = common dso_local global i32 0, align 4
@MCS96_REG_8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" rb%02x, rb%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @mcs96_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs96_len(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 254
  br i1 %13, label %14, label %208

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %382

18:                                               ; preds = %14
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MCS96_FE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %207

30:                                               ; preds = %18
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MCS96_5B_OR_6B, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %382

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1
  %51 = add nsw i32 6, %50
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %46, %30
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MCS96_4B_OR_5B, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %52
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 3
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %382

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 1
  %73 = add nsw i32 5, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %68, %52
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @MCS96_3B_OR_4B, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %382

90:                                               ; preds = %86
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 1
  %95 = add nsw i32 4, %94
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %90, %74
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MCS96_5B, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  store i32 6, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %96
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @MCS96_4B, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 5, i32* %8, align 4
  br label %122

122:                                              ; preds = %121, %109
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @MCS96_3B, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  store i32 4, i32* %8, align 4
  br label %135

135:                                              ; preds = %134, %122
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MCS96_2B, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  store i32 3, i32* %8, align 4
  br label %148

148:                                              ; preds = %147, %135
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %204

152:                                              ; preds = %148
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, 112
  %157 = ashr i32 %156, 4
  %158 = xor i32 %157, 4
  %159 = sext i32 %158 to i64
  store i64 %159, i64* %9, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load i32*, i32** @mcs96_fe_op, align 8
  %162 = load i64, i64* %9, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @r_strbuf_set(i32* %160, i32 %164)
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @MCS96_2OP, align 4
  %175 = load i32, i32* @MCS96_REG_8, align 4
  %176 = or i32 %174, %175
  %177 = and i32 %173, %176
  %178 = load i32, i32* @MCS96_2OP, align 4
  %179 = load i32, i32* @MCS96_REG_8, align 4
  %180 = or i32 %178, %179
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %182, label %203

182:                                              ; preds = %152
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = icmp sgt i32 %185, 25
  br i1 %186, label %187, label %203

187:                                              ; preds = %182
  %188 = load i32*, i32** %5, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 25
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load i32*, i32** %7, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = sub nsw i32 %196, 26
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %200, 26
  %202 = call i32 @r_strbuf_appendf(i32* %193, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %197, i32 %201)
  br label %203

203:                                              ; preds = %192, %187, %182, %152
  br label %205

204:                                              ; preds = %148
  store i32 0, i32* %8, align 4
  br label %205

205:                                              ; preds = %204, %203
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %4, align 4
  br label %382

207:                                              ; preds = %18
  br label %208

208:                                              ; preds = %207, %3
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %210 = load i32*, i32** %5, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @MCS96_5B_OR_6B, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %208
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 2
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 0, i32* %4, align 4
  br label %382

224:                                              ; preds = %220
  %225 = load i32*, i32** %5, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 1
  %229 = add nsw i32 5, %228
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %224, %208
  %231 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @MCS96_4B_OR_5B, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %230
  %243 = load i32, i32* %6, align 4
  %244 = icmp slt i32 %243, 2
  br i1 %244, label %245, label %246

245:                                              ; preds = %242
  store i32 0, i32* %4, align 4
  br label %382

246:                                              ; preds = %242
  %247 = load i32*, i32** %5, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 1
  %251 = add nsw i32 4, %250
  store i32 %251, i32* %8, align 4
  br label %252

252:                                              ; preds = %246, %230
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %254 = load i32*, i32** %5, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @MCS96_3B_OR_4B, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %252
  %265 = load i32, i32* %6, align 4
  %266 = icmp slt i32 %265, 2
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 0, i32* %4, align 4
  br label %382

268:                                              ; preds = %264
  %269 = load i32*, i32** %5, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 1
  %273 = add nsw i32 3, %272
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %268, %252
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %276 = load i32*, i32** %5, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @MCS96_5B, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %274
  store i32 5, i32* %8, align 4
  br label %287

287:                                              ; preds = %286, %274
  %288 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %289 = load i32*, i32** %5, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @MCS96_4B, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %287
  store i32 4, i32* %8, align 4
  br label %300

300:                                              ; preds = %299, %287
  %301 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %302 = load i32*, i32** %5, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %301, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @MCS96_3B, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %300
  store i32 3, i32* %8, align 4
  br label %313

313:                                              ; preds = %312, %300
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %315 = load i32*, i32** %5, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @MCS96_2B, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %313
  store i32 2, i32* %8, align 4
  br label %326

326:                                              ; preds = %325, %313
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* %6, align 4
  %329 = icmp sle i32 %327, %328
  br i1 %329, label %330, label %379

330:                                              ; preds = %326
  %331 = load i32*, i32** %7, align 8
  %332 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %333 = load i32*, i32** %5, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 0
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %332, i64 %336
  %338 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @r_strbuf_set(i32* %331, i32 %339)
  %341 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mcs96_op, align 8
  %342 = load i32*, i32** %5, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 0
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* @MCS96_2OP, align 4
  %350 = load i32, i32* @MCS96_REG_8, align 4
  %351 = or i32 %349, %350
  %352 = and i32 %348, %351
  %353 = load i32, i32* @MCS96_2OP, align 4
  %354 = load i32, i32* @MCS96_REG_8, align 4
  %355 = or i32 %353, %354
  %356 = icmp eq i32 %352, %355
  br i1 %356, label %357, label %378

357:                                              ; preds = %330
  %358 = load i32*, i32** %5, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp sgt i32 %360, 25
  br i1 %361, label %362, label %378

362:                                              ; preds = %357
  %363 = load i32*, i32** %5, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  %365 = load i32, i32* %364, align 4
  %366 = icmp sgt i32 %365, 25
  br i1 %366, label %367, label %378

367:                                              ; preds = %362
  %368 = load i32*, i32** %7, align 8
  %369 = load i32*, i32** %5, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = sub nsw i32 %371, 26
  %373 = load i32*, i32** %5, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 2
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %375, 26
  %377 = call i32 @r_strbuf_appendf(i32* %368, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %372, i32 %376)
  br label %378

378:                                              ; preds = %367, %362, %357, %330
  br label %380

379:                                              ; preds = %326
  store i32 0, i32* %8, align 4
  br label %380

380:                                              ; preds = %379, %378
  %381 = load i32, i32* %8, align 4
  store i32 %381, i32* %4, align 4
  br label %382

382:                                              ; preds = %380, %267, %245, %223, %205, %89, %67, %45, %17
  %383 = load i32, i32* %4, align 4
  ret i32 %383
}

declare dso_local i32 @r_strbuf_set(i32*, i32) #1

declare dso_local i32 @r_strbuf_appendf(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

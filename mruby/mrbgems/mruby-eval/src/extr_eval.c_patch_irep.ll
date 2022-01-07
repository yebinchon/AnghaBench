; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-eval/src/extr_eval.c_patch_irep.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-eval/src/extr_eval.c_patch_irep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__*, i32, i32*, %struct.TYPE_9__**, i64 }
%struct.TYPE_10__ = type { i32 }

@MRB_ISEQ_NO_FREE = common dso_local global i32 0, align 4
@mrb_insn_size1 = common dso_local global i32* null, align 8
@mrb_insn_size2 = common dso_local global i32* null, align 8
@mrb_insn_size3 = common dso_local global i32* null, align 8
@mrb_insn_size = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32, %struct.TYPE_9__*)* @patch_irep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @patch_irep(i32* %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_9__*, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = call i32 @irep_argc(%struct.TYPE_9__* %25)
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %15, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MRB_ISEQ_NO_FREE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @mrb_assert(i32 %37)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %471, %455, %439, %423, %4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %481

45:                                               ; preds = %39
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  switch i32 %51, label %471 [
    i32 136, label %52
    i32 131, label %69
    i32 137, label %69
    i32 129, label %94
    i32 130, label %146
    i32 132, label %262
    i32 128, label %339
    i32 135, label %423
    i32 134, label %439
    i32 133, label %455
  ]

52:                                               ; preds = %45
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = call i64 @PEEK_S(i32* %57)
  store i64 %58, i64* %11, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %62, i64 %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  call void @patch_irep(i32* %59, %struct.TYPE_9__* %65, i32 %67, %struct.TYPE_9__* %68)
  br label %471

69:                                               ; preds = %45, %45
  %70 = load i32*, i32** %15, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = call i8* @PEEK_B(i32* %74)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %10, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = call i8* @PEEK_B(i32* %81)
  %83 = ptrtoint i8* %82 to i64
  store i64 %83, i64* %11, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 5
  %87 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %87, i64 %88
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  call void @patch_irep(i32* %84, %struct.TYPE_9__* %90, i32 %92, %struct.TYPE_9__* %93)
  br label %471

94:                                               ; preds = %45
  %95 = load i32*, i32** %15, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  %100 = call i8* @PEEK_B(i32* %99)
  %101 = ptrtoint i8* %100 to i64
  store i64 %101, i64* %11, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  %107 = call i8* @PEEK_B(i32* %106)
  store i8* %107, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %471

111:                                              ; preds = %94
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %11, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i64 @search_variable(i32* %112, i32 %118, i32 %119)
  store i64 %120, i64* %16, align 8
  %121 = load i64, i64* %16, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %111
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 132, i32* %127, align 4
  %128 = load i64, i64* %16, align 8
  %129 = lshr i64 %128, 8
  %130 = trunc i64 %129 to i32
  %131 = load i32*, i32** %15, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 2
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %131, i64 %134
  store i32 %130, i32* %135, align 4
  %136 = load i64, i64* %16, align 8
  %137 = and i64 %136, 255
  %138 = trunc i64 %137 to i32
  %139 = load i32*, i32** %15, align 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 3
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  store i32 %138, i32* %143, align 4
  br label %144

144:                                              ; preds = %123, %111
  br label %145

145:                                              ; preds = %144
  br label %471

146:                                              ; preds = %45
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = call i8* @PEEK_B(i32* %151)
  %153 = ptrtoint i8* %152 to i64
  store i64 %153, i64* %10, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  %159 = call i8* @PEEK_B(i32* %158)
  %160 = ptrtoint i8* %159 to i64
  store i64 %160, i64* %11, align 8
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = load i64, i64* %11, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @potential_upvar_p(%struct.TYPE_10__* %163, i64 %164, i32 %165, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %207

171:                                              ; preds = %146
  %172 = load i32*, i32** %5, align 8
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i64, i64* %11, align 8
  %177 = sub i64 %176, 1
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i64 @search_variable(i32* %172, i32 %180, i32 %181)
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %171
  store i32 132, i32* %13, align 4
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 132, i32* %189, align 4
  %190 = load i64, i64* %17, align 8
  %191 = lshr i64 %190, 8
  %192 = trunc i64 %191 to i32
  %193 = load i32*, i32** %15, align 8
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load i64, i64* %17, align 8
  %199 = and i64 %198, 255
  %200 = trunc i64 %199 to i32
  %201 = load i32*, i32** %15, align 8
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 3
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %200, i32* %205, align 4
  br label %206

206:                                              ; preds = %185, %171
  br label %207

207:                                              ; preds = %206, %146
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = load i32, i32* %14, align 4
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @potential_upvar_p(%struct.TYPE_10__* %210, i64 %211, i32 %212, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %261

218:                                              ; preds = %207
  %219 = load i32*, i32** %5, align 8
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = load i64, i64* %10, align 8
  %224 = sub i64 %223, 1
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %7, align 4
  %229 = call i64 @search_variable(i32* %219, i32 %227, i32 %228)
  store i64 %229, i64* %18, align 8
  %230 = load i64, i64* %18, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %260

232:                                              ; preds = %218
  store i32 128, i32* %13, align 4
  %233 = load i32*, i32** %15, align 8
  %234 = load i32, i32* %9, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  store i32 128, i32* %236, align 4
  %237 = load i64, i64* %11, align 8
  %238 = trunc i64 %237 to i32
  %239 = load i32*, i32** %15, align 8
  %240 = load i32, i32* %9, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  store i32 %238, i32* %243, align 4
  %244 = load i64, i64* %18, align 8
  %245 = lshr i64 %244, 8
  %246 = trunc i64 %245 to i32
  %247 = load i32*, i32** %15, align 8
  %248 = load i32, i32* %9, align 4
  %249 = add nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %246, i32* %251, align 4
  %252 = load i64, i64* %18, align 8
  %253 = and i64 %252, 255
  %254 = trunc i64 %253 to i32
  %255 = load i32*, i32** %15, align 8
  %256 = load i32, i32* %9, align 4
  %257 = add nsw i32 %256, 3
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 %254, i32* %259, align 4
  br label %260

260:                                              ; preds = %232, %218
  br label %261

261:                                              ; preds = %260, %207
  br label %471

262:                                              ; preds = %45
  %263 = load i32*, i32** %15, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = getelementptr inbounds i32, i32* %266, i64 1
  %268 = call i8* @PEEK_B(i32* %267)
  %269 = ptrtoint i8* %268 to i64
  store i64 %269, i64* %10, align 8
  %270 = load i32*, i32** %15, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = call i8* @PEEK_B(i32* %274)
  %276 = ptrtoint i8* %275 to i64
  store i64 %276, i64* %11, align 8
  %277 = load i32*, i32** %15, align 8
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = getelementptr inbounds i32, i32* %280, i64 3
  %282 = call i8* @PEEK_B(i32* %281)
  store i8* %282, i8** %12, align 8
  %283 = load i8*, i8** %12, align 8
  %284 = getelementptr i8, i8* %283, i64 1
  %285 = ptrtoint i8* %284 to i32
  store i32 %285, i32* %19, align 4
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* %19, align 4
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %290 = call %struct.TYPE_9__* @search_irep(%struct.TYPE_9__* %286, i32 %287, i32 %288, %struct.TYPE_9__* %289)
  store %struct.TYPE_9__* %290, %struct.TYPE_9__** %20, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 2
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %292, align 8
  %294 = load i64, i64* %11, align 8
  %295 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %296 = call i32 @irep_argc(%struct.TYPE_9__* %295)
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @potential_upvar_p(%struct.TYPE_10__* %293, i64 %294, i32 %296, i32 %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %338

302:                                              ; preds = %262
  %303 = load i32*, i32** %5, align 8
  %304 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %305 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %304, i32 0, i32 2
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %305, align 8
  %307 = load i64, i64* %11, align 8
  %308 = sub i64 %307, 1
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %7, align 4
  %313 = call i64 @search_variable(i32* %303, i32 %311, i32 %312)
  store i64 %313, i64* %21, align 8
  %314 = load i64, i64* %21, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %337

316:                                              ; preds = %302
  %317 = load i32*, i32** %15, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  store i32 132, i32* %320, align 4
  %321 = load i64, i64* %21, align 8
  %322 = lshr i64 %321, 8
  %323 = trunc i64 %322 to i32
  %324 = load i32*, i32** %15, align 8
  %325 = load i32, i32* %9, align 4
  %326 = add nsw i32 %325, 2
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32 %323, i32* %328, align 4
  %329 = load i64, i64* %21, align 8
  %330 = and i64 %329, 255
  %331 = trunc i64 %330 to i32
  %332 = load i32*, i32** %15, align 8
  %333 = load i32, i32* %9, align 4
  %334 = add nsw i32 %333, 3
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %332, i64 %335
  store i32 %331, i32* %336, align 4
  br label %337

337:                                              ; preds = %316, %302
  br label %338

338:                                              ; preds = %337, %262
  br label %471

339:                                              ; preds = %45
  %340 = load i32*, i32** %15, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  %345 = call i8* @PEEK_B(i32* %344)
  %346 = ptrtoint i8* %345 to i64
  store i64 %346, i64* %10, align 8
  %347 = load i32*, i32** %15, align 8
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = getelementptr inbounds i32, i32* %350, i64 2
  %352 = call i8* @PEEK_B(i32* %351)
  %353 = ptrtoint i8* %352 to i64
  store i64 %353, i64* %11, align 8
  %354 = load i32*, i32** %15, align 8
  %355 = load i32, i32* %9, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = getelementptr inbounds i32, i32* %357, i64 3
  %359 = call i8* @PEEK_B(i32* %358)
  store i8* %359, i8** %12, align 8
  %360 = load i8*, i8** %12, align 8
  %361 = getelementptr i8, i8* %360, i64 1
  %362 = ptrtoint i8* %361 to i32
  store i32 %362, i32* %22, align 4
  %363 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %364 = load i32, i32* %7, align 4
  %365 = load i32, i32* %22, align 4
  %366 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %367 = call %struct.TYPE_9__* @search_irep(%struct.TYPE_9__* %363, i32 %364, i32 %365, %struct.TYPE_9__* %366)
  store %struct.TYPE_9__* %367, %struct.TYPE_9__** %23, align 8
  %368 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %369 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %368, i32 0, i32 2
  %370 = load %struct.TYPE_10__*, %struct.TYPE_10__** %369, align 8
  %371 = load i64, i64* %11, align 8
  %372 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %373 = call i32 @irep_argc(%struct.TYPE_9__* %372)
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @potential_upvar_p(%struct.TYPE_10__* %370, i64 %371, i32 %373, i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %422

379:                                              ; preds = %339
  %380 = load i32*, i32** %5, align 8
  %381 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 2
  %383 = load %struct.TYPE_10__*, %struct.TYPE_10__** %382, align 8
  %384 = load i64, i64* %11, align 8
  %385 = sub i64 %384, 1
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %383, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* %7, align 4
  %390 = call i64 @search_variable(i32* %380, i32 %388, i32 %389)
  store i64 %390, i64* %24, align 8
  %391 = load i64, i64* %24, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %421

393:                                              ; preds = %379
  %394 = load i32*, i32** %15, align 8
  %395 = load i32, i32* %9, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32 128, i32* %397, align 4
  %398 = load i64, i64* %10, align 8
  %399 = trunc i64 %398 to i32
  %400 = load i32*, i32** %15, align 8
  %401 = load i32, i32* %9, align 4
  %402 = add nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  store i32 %399, i32* %404, align 4
  %405 = load i64, i64* %24, align 8
  %406 = lshr i64 %405, 8
  %407 = trunc i64 %406 to i32
  %408 = load i32*, i32** %15, align 8
  %409 = load i32, i32* %9, align 4
  %410 = add nsw i32 %409, 2
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, i32* %408, i64 %411
  store i32 %407, i32* %412, align 4
  %413 = load i64, i64* %24, align 8
  %414 = and i64 %413, 255
  %415 = trunc i64 %414 to i32
  %416 = load i32*, i32** %15, align 8
  %417 = load i32, i32* %9, align 4
  %418 = add nsw i32 %417, 3
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %416, i64 %419
  store i32 %415, i32* %420, align 4
  br label %421

421:                                              ; preds = %393, %379
  br label %422

422:                                              ; preds = %421, %339
  br label %471

423:                                              ; preds = %45
  %424 = load i32*, i32** %15, align 8
  %425 = load i32, i32* %9, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  %429 = call i8* @PEEK_B(i32* %428)
  %430 = ptrtoint i8* %429 to i32
  store i32 %430, i32* %13, align 4
  %431 = load i32*, i32** @mrb_insn_size1, align 8
  %432 = load i32, i32* %13, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, 1
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, %436
  store i32 %438, i32* %9, align 4
  br label %39

439:                                              ; preds = %45
  %440 = load i32*, i32** %15, align 8
  %441 = load i32, i32* %9, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = getelementptr inbounds i32, i32* %443, i64 1
  %445 = call i8* @PEEK_B(i32* %444)
  %446 = ptrtoint i8* %445 to i32
  store i32 %446, i32* %13, align 4
  %447 = load i32*, i32** @mrb_insn_size2, align 8
  %448 = load i32, i32* %13, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32, i32* %447, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %451, 1
  %453 = load i32, i32* %9, align 4
  %454 = add nsw i32 %453, %452
  store i32 %454, i32* %9, align 4
  br label %39

455:                                              ; preds = %45
  %456 = load i32*, i32** %15, align 8
  %457 = load i32, i32* %9, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32, i32* %456, i64 %458
  %460 = getelementptr inbounds i32, i32* %459, i64 1
  %461 = call i8* @PEEK_B(i32* %460)
  %462 = ptrtoint i8* %461 to i32
  store i32 %462, i32* %13, align 4
  %463 = load i32*, i32** @mrb_insn_size3, align 8
  %464 = load i32, i32* %13, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = add nsw i32 %467, 1
  %469 = load i32, i32* %9, align 4
  %470 = add nsw i32 %469, %468
  store i32 %470, i32* %9, align 4
  br label %39

471:                                              ; preds = %45, %422, %338, %261, %145, %110, %69, %52
  %472 = load i64*, i64** @mrb_insn_size, align 8
  %473 = load i32, i32* %13, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i64, i64* %472, i64 %474
  %476 = load i64, i64* %475, align 8
  %477 = load i32, i32* %9, align 4
  %478 = sext i32 %477 to i64
  %479 = add nsw i64 %478, %476
  %480 = trunc i64 %479 to i32
  store i32 %480, i32* %9, align 4
  br label %39

481:                                              ; preds = %39
  ret void
}

declare dso_local i32 @irep_argc(%struct.TYPE_9__*) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i64 @PEEK_S(i32*) #1

declare dso_local i8* @PEEK_B(i32*) #1

declare dso_local i64 @search_variable(i32*, i32, i32) #1

declare dso_local i32 @potential_upvar_p(%struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_9__* @search_irep(%struct.TYPE_9__*, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

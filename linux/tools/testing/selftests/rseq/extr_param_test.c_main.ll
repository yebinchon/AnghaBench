; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/rseq/extr_param_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loop_cnt = common dso_local global i8** null, align 8
@opt_modulo = common dso_local global i8* null, align 8
@opt_sleep = common dso_local global i8* null, align 8
@opt_yield = common dso_local global i32 0, align 4
@opt_signal = common dso_local global i32 0, align 4
@opt_disable_rseq = common dso_local global i32 0, align 4
@opt_disable_mod = common dso_local global i8* null, align 8
@opt_threads = common dso_local global i8* null, align 8
@opt_reps = common dso_local global i32 0, align 4
@opt_test = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@opt_mb = common dso_local global i32 0, align 4
@loop_cnt_1 = common dso_local global i8* null, align 8
@loop_cnt_2 = common dso_local global i8* null, align 8
@loop_cnt_3 = common dso_local global i8* null, align 8
@loop_cnt_4 = common dso_local global i8* null, align 8
@loop_cnt_5 = common dso_local global i8* null, align 8
@loop_cnt_6 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"spinlock\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"linked list\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"buffer\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"memcpy buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"counter increment\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %7

7:                                                ; preds = %233, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %236

11:                                               ; preds = %7
  %12 = load i8**, i8*** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 45
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %233

22:                                               ; preds = %11
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %228 [
    i32 49, label %31
    i32 50, label %31
    i32 51, label %31
    i32 52, label %31
    i32 53, label %31
    i32 54, label %31
    i32 55, label %31
    i32 56, label %31
    i32 57, label %31
    i32 109, label %62
    i32 115, label %88
    i32 121, label %114
    i32 107, label %115
    i32 100, label %116
    i32 68, label %117
    i32 116, label %143
    i32 114, label %169
    i32 104, label %195
    i32 84, label %199
    i32 118, label %226
    i32 77, label %227
  ]

31:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 2
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @show_usage(i32 %37, i8** %38)
  br label %292

40:                                               ; preds = %31
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @atol(i8* %46)
  %48 = load i8**, i8*** @loop_cnt, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = sub nsw i32 %56, 48
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %48, i64 %58
  store i8* %47, i8** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %232

62:                                               ; preds = %22
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 2
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = load i8**, i8*** %5, align 8
  %70 = call i32 @show_usage(i32 %68, i8** %69)
  br label %292

71:                                               ; preds = %62
  %72 = load i8**, i8*** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %72, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i8* @atol(i8* %77)
  store i8* %78, i8** @opt_modulo, align 8
  %79 = load i8*, i8** @opt_modulo, align 8
  %80 = icmp ult i8* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* %4, align 4
  %83 = load i8**, i8*** %5, align 8
  %84 = call i32 @show_usage(i32 %82, i8** %83)
  br label %292

85:                                               ; preds = %71
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %232

88:                                               ; preds = %22
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 2
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* %4, align 4
  %95 = load i8**, i8*** %5, align 8
  %96 = call i32 @show_usage(i32 %94, i8** %95)
  br label %292

97:                                               ; preds = %88
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @atol(i8* %103)
  store i8* %104, i8** @opt_sleep, align 8
  %105 = load i8*, i8** @opt_sleep, align 8
  %106 = icmp ult i8* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load i32, i32* %4, align 4
  %109 = load i8**, i8*** %5, align 8
  %110 = call i32 @show_usage(i32 %108, i8** %109)
  br label %292

111:                                              ; preds = %97
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %232

114:                                              ; preds = %22
  store i32 1, i32* @opt_yield, align 4
  br label %232

115:                                              ; preds = %22
  store i32 1, i32* @opt_signal, align 4
  br label %232

116:                                              ; preds = %22
  store i32 1, i32* @opt_disable_rseq, align 4
  br label %232

117:                                              ; preds = %22
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 2
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* %4, align 4
  %124 = load i8**, i8*** %5, align 8
  %125 = call i32 @show_usage(i32 %123, i8** %124)
  br label %292

126:                                              ; preds = %117
  %127 = load i8**, i8*** %5, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %127, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i8* @atol(i8* %132)
  store i8* %133, i8** @opt_disable_mod, align 8
  %134 = load i8*, i8** @opt_disable_mod, align 8
  %135 = icmp ult i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i32, i32* %4, align 4
  %138 = load i8**, i8*** %5, align 8
  %139 = call i32 @show_usage(i32 %137, i8** %138)
  br label %292

140:                                              ; preds = %126
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %232

143:                                              ; preds = %22
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 2
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* %4, align 4
  %150 = load i8**, i8*** %5, align 8
  %151 = call i32 @show_usage(i32 %149, i8** %150)
  br label %292

152:                                              ; preds = %143
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i8* @atol(i8* %158)
  store i8* %159, i8** @opt_threads, align 8
  %160 = load i8*, i8** @opt_threads, align 8
  %161 = icmp ult i8* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* %4, align 4
  %164 = load i8**, i8*** %5, align 8
  %165 = call i32 @show_usage(i32 %163, i8** %164)
  br label %292

166:                                              ; preds = %152
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %232

169:                                              ; preds = %22
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 2
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %169
  %175 = load i32, i32* %4, align 4
  %176 = load i8**, i8*** %5, align 8
  %177 = call i32 @show_usage(i32 %175, i8** %176)
  br label %292

178:                                              ; preds = %169
  %179 = load i8**, i8*** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @atoll(i8* %184)
  store i32 %185, i32* @opt_reps, align 4
  %186 = load i32, i32* @opt_reps, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load i32, i32* %4, align 4
  %190 = load i8**, i8*** %5, align 8
  %191 = call i32 @show_usage(i32 %189, i8** %190)
  br label %292

192:                                              ; preds = %178
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %232

195:                                              ; preds = %22
  %196 = load i32, i32* %4, align 4
  %197 = load i8**, i8*** %5, align 8
  %198 = call i32 @show_usage(i32 %196, i8** %197)
  br label %291

199:                                              ; preds = %22
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 2
  %203 = icmp slt i32 %200, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32, i32* %4, align 4
  %206 = load i8**, i8*** %5, align 8
  %207 = call i32 @show_usage(i32 %205, i8** %206)
  br label %292

208:                                              ; preds = %199
  %209 = load i8**, i8*** %5, align 8
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  store i32 %216, i32* @opt_test, align 4
  %217 = load i32, i32* @opt_test, align 4
  switch i32 %217, label %219 [
    i32 115, label %218
    i32 108, label %218
    i32 105, label %218
    i32 98, label %218
    i32 109, label %218
  ]

218:                                              ; preds = %208, %208, %208, %208, %208
  br label %223

219:                                              ; preds = %208
  %220 = load i32, i32* %4, align 4
  %221 = load i8**, i8*** %5, align 8
  %222 = call i32 @show_usage(i32 %220, i8** %221)
  br label %292

223:                                              ; preds = %218
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %6, align 4
  br label %232

226:                                              ; preds = %22
  store i32 1, i32* @verbose, align 4
  br label %232

227:                                              ; preds = %22
  store i32 1, i32* @opt_mb, align 4
  br label %232

228:                                              ; preds = %22
  %229 = load i32, i32* %4, align 4
  %230 = load i8**, i8*** %5, align 8
  %231 = call i32 @show_usage(i32 %229, i8** %230)
  br label %292

232:                                              ; preds = %227, %226, %223, %192, %166, %140, %116, %115, %114, %111, %85, %40
  br label %233

233:                                              ; preds = %232, %21
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %7

236:                                              ; preds = %7
  %237 = load i8**, i8*** @loop_cnt, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 1
  %239 = load i8*, i8** %238, align 8
  store i8* %239, i8** @loop_cnt_1, align 8
  %240 = load i8**, i8*** @loop_cnt, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 2
  %242 = load i8*, i8** %241, align 8
  store i8* %242, i8** @loop_cnt_2, align 8
  %243 = load i8**, i8*** @loop_cnt, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 3
  %245 = load i8*, i8** %244, align 8
  store i8* %245, i8** @loop_cnt_3, align 8
  %246 = load i8**, i8*** @loop_cnt, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 4
  %248 = load i8*, i8** %247, align 8
  store i8* %248, i8** @loop_cnt_4, align 8
  %249 = load i8**, i8*** @loop_cnt, align 8
  %250 = getelementptr inbounds i8*, i8** %249, i64 5
  %251 = load i8*, i8** %250, align 8
  store i8* %251, i8** @loop_cnt_5, align 8
  %252 = load i8**, i8*** @loop_cnt, align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 6
  %254 = load i8*, i8** %253, align 8
  store i8* %254, i8** @loop_cnt_6, align 8
  %255 = call i64 (...) @set_signal_handler()
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %236
  br label %292

258:                                              ; preds = %236
  %259 = load i32, i32* @opt_disable_rseq, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %258
  %262 = call i64 (...) @rseq_register_current_thread()
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %292

265:                                              ; preds = %261, %258
  %266 = load i32, i32* @opt_test, align 4
  switch i32 %266, label %282 [
    i32 115, label %267
    i32 108, label %270
    i32 98, label %273
    i32 109, label %276
    i32 105, label %279
  ]

267:                                              ; preds = %265
  %268 = call i32 @printf_verbose(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %269 = call i32 (...) @test_percpu_spinlock()
  br label %282

270:                                              ; preds = %265
  %271 = call i32 @printf_verbose(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %272 = call i32 (...) @test_percpu_list()
  br label %282

273:                                              ; preds = %265
  %274 = call i32 @printf_verbose(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %275 = call i32 (...) @test_percpu_buffer()
  br label %282

276:                                              ; preds = %265
  %277 = call i32 @printf_verbose(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %278 = call i32 (...) @test_percpu_memcpy_buffer()
  br label %282

279:                                              ; preds = %265
  %280 = call i32 @printf_verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %281 = call i32 (...) @test_percpu_inc()
  br label %282

282:                                              ; preds = %265, %279, %276, %273, %270, %267
  %283 = load i32, i32* @opt_disable_rseq, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %290, label %285

285:                                              ; preds = %282
  %286 = call i64 (...) @rseq_unregister_current_thread()
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %285
  %289 = call i32 (...) @abort() #3
  unreachable

290:                                              ; preds = %285, %282
  br label %291

291:                                              ; preds = %290, %195
  store i32 0, i32* %3, align 4
  br label %293

292:                                              ; preds = %264, %257, %228, %219, %204, %188, %174, %162, %148, %136, %122, %107, %93, %81, %67, %36
  store i32 -1, i32* %3, align 4
  br label %293

293:                                              ; preds = %292, %291
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local i32 @show_usage(i32, i8**) #1

declare dso_local i8* @atol(i8*) #1

declare dso_local i32 @atoll(i8*) #1

declare dso_local i64 @set_signal_handler(...) #1

declare dso_local i64 @rseq_register_current_thread(...) #1

declare dso_local i32 @printf_verbose(i8*) #1

declare dso_local i32 @test_percpu_spinlock(...) #1

declare dso_local i32 @test_percpu_list(...) #1

declare dso_local i32 @test_percpu_buffer(...) #1

declare dso_local i32 @test_percpu_memcpy_buffer(...) #1

declare dso_local i32 @test_percpu_inc(...) #1

declare dso_local i64 @rseq_unregister_current_thread(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

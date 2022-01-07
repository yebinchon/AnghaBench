; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_s_select.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-io/src/extr_io.c_mrb_io_s_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.mrb_io = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@E_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wrong number of arguments (%i for 1..4)\00", align 1
@MRB_TT_ARRAY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"select failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_io_s_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_io_s_select(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timeval*, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.mrb_io*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.timeval, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @mrb_get_args(i32* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32** %6, i32* %7)
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %38, label %43

38:                                               ; preds = %35, %2
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @E_ARGUMENT_ERROR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mrb_raisef(i32* %39, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %38, %35
  %44 = call i32 (...) @mrb_nil_value()
  store i32 %44, i32* %12, align 4
  %45 = call i32 (...) @mrb_nil_value()
  store i32 %45, i32* %11, align 4
  %46 = call i32 (...) @mrb_nil_value()
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sgt i32 %47, 3
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 2
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i64 @mrb_nil_p(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store %struct.timeval* null, %struct.timeval** %14, align 8
  br label %86

75:                                               ; preds = %67
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call { i64, i64 } @time2timeval(i32* %76, i32 %77)
  %79 = bitcast %struct.timeval* %30 to { i64, i64 }*
  %80 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 0
  %81 = extractvalue { i64, i64 } %78, 0
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %79, i32 0, i32 1
  %83 = extractvalue { i64, i64 } %78, 1
  store i64 %83, i64* %82, align 8
  %84 = bitcast %struct.timeval* %15 to i8*
  %85 = bitcast %struct.timeval* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  store %struct.timeval* %15, %struct.timeval** %14, align 8
  br label %86

86:                                               ; preds = %75, %74
  %87 = call i32 @FD_ZERO(i32* %16)
  %88 = load i32, i32* %8, align 4
  %89 = call i64 @mrb_nil_p(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %150, label %91

91:                                               ; preds = %86
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MRB_TT_ARRAY, align 4
  %95 = call i32 @mrb_check_type(i32* %92, i32 %93, i32 %94)
  store i32* %17, i32** %20, align 8
  %96 = load i32*, i32** %20, align 8
  %97 = call i32 @FD_ZERO(i32* %96)
  store i32 0, i32* %28, align 4
  br label %98

98:                                               ; preds = %140, %91
  %99 = load i32, i32* %28, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @RARRAY_LEN(i32 %100)
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %98
  %104 = load i32, i32* %8, align 4
  %105 = call i32* @RARRAY_PTR(i32 %104)
  %106 = load i32, i32* %28, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %9, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call %struct.mrb_io* @io_get_open_fptr(i32* %110, i32 %111)
  store %struct.mrb_io* %112, %struct.mrb_io** %23, align 8
  %113 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %114 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** %20, align 8
  %117 = call i32 @FD_SET(i32 %115, i32* %116)
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @mrb_io_read_data_pending(i32* %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %103
  %123 = load i32, i32* %24, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %24, align 4
  %125 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %126 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @FD_SET(i32 %127, i32* %16)
  br label %129

129:                                              ; preds = %122, %103
  %130 = load i32, i32* %26, align 4
  %131 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %132 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %137 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %26, align 4
  br label %139

139:                                              ; preds = %135, %129
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %28, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %28, align 4
  br label %98

143:                                              ; preds = %98
  %144 = load i32, i32* %24, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  store i64 0, i64* %148, align 8
  store %struct.timeval* %15, %struct.timeval** %14, align 8
  br label %149

149:                                              ; preds = %146, %143
  br label %151

150:                                              ; preds = %86
  store i32* null, i32** %20, align 8
  br label %151

151:                                              ; preds = %150, %149
  %152 = load i32, i32* %10, align 4
  %153 = call i64 @mrb_nil_p(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %216, label %155

155:                                              ; preds = %151
  %156 = load i32*, i32** %4, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @MRB_TT_ARRAY, align 4
  %159 = call i32 @mrb_check_type(i32* %156, i32 %157, i32 %158)
  store i32* %18, i32** %21, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = call i32 @FD_ZERO(i32* %160)
  store i32 0, i32* %28, align 4
  br label %162

162:                                              ; preds = %212, %155
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @RARRAY_LEN(i32 %164)
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %215

167:                                              ; preds = %162
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i32* @RARRAY_PTR(i32 %169)
  %171 = load i32, i32* %28, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call %struct.mrb_io* @io_get_open_fptr(i32* %168, i32 %174)
  store %struct.mrb_io* %175, %struct.mrb_io** %23, align 8
  %176 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %177 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %21, align 8
  %180 = call i32 @FD_SET(i32 %178, i32* %179)
  %181 = load i32, i32* %26, align 4
  %182 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %183 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %167
  %187 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %188 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %26, align 4
  br label %190

190:                                              ; preds = %186, %167
  %191 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %192 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %190
  %196 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %197 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %21, align 8
  %200 = call i32 @FD_SET(i32 %198, i32* %199)
  %201 = load i32, i32* %26, align 4
  %202 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %203 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %201, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %195
  %207 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %208 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %26, align 4
  br label %210

210:                                              ; preds = %206, %195
  br label %211

211:                                              ; preds = %210, %190
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %28, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %28, align 4
  br label %162

215:                                              ; preds = %162
  br label %217

216:                                              ; preds = %151
  store i32* null, i32** %21, align 8
  br label %217

217:                                              ; preds = %216, %215
  %218 = load i32, i32* %11, align 4
  %219 = call i64 @mrb_nil_p(i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %282, label %221

221:                                              ; preds = %217
  %222 = load i32*, i32** %4, align 8
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @MRB_TT_ARRAY, align 4
  %225 = call i32 @mrb_check_type(i32* %222, i32 %223, i32 %224)
  store i32* %19, i32** %22, align 8
  %226 = load i32*, i32** %22, align 8
  %227 = call i32 @FD_ZERO(i32* %226)
  store i32 0, i32* %28, align 4
  br label %228

228:                                              ; preds = %278, %221
  %229 = load i32, i32* %28, align 4
  %230 = load i32, i32* %11, align 4
  %231 = call i32 @RARRAY_LEN(i32 %230)
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %233, label %281

233:                                              ; preds = %228
  %234 = load i32*, i32** %4, align 8
  %235 = load i32, i32* %11, align 4
  %236 = call i32* @RARRAY_PTR(i32 %235)
  %237 = load i32, i32* %28, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = call %struct.mrb_io* @io_get_open_fptr(i32* %234, i32 %240)
  store %struct.mrb_io* %241, %struct.mrb_io** %23, align 8
  %242 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %243 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %22, align 8
  %246 = call i32 @FD_SET(i32 %244, i32* %245)
  %247 = load i32, i32* %26, align 4
  %248 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %249 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %256

252:                                              ; preds = %233
  %253 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %254 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %26, align 4
  br label %256

256:                                              ; preds = %252, %233
  %257 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %258 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %277

261:                                              ; preds = %256
  %262 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %263 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %22, align 8
  %266 = call i32 @FD_SET(i32 %264, i32* %265)
  %267 = load i32, i32* %26, align 4
  %268 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %269 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %261
  %273 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %274 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %26, align 4
  br label %276

276:                                              ; preds = %272, %261
  br label %277

277:                                              ; preds = %276, %256
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %28, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %28, align 4
  br label %228

281:                                              ; preds = %228
  br label %283

282:                                              ; preds = %217
  store i32* null, i32** %22, align 8
  br label %283

283:                                              ; preds = %282, %281
  %284 = load i32, i32* %26, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %26, align 4
  br label %286

286:                                              ; preds = %305, %283
  %287 = load i32, i32* %26, align 4
  %288 = load i32*, i32** %20, align 8
  %289 = load i32*, i32** %21, align 8
  %290 = load i32*, i32** %22, align 8
  %291 = load %struct.timeval*, %struct.timeval** %14, align 8
  %292 = call i32 @select(i32 %287, i32* %288, i32* %289, i32* %290, %struct.timeval* %291)
  store i32 %292, i32* %29, align 4
  %293 = load i32, i32* %29, align 4
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %295, label %307

295:                                              ; preds = %286
  %296 = load i64, i64* @errno, align 8
  %297 = load i64, i64* @EINTR, align 8
  %298 = icmp ne i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i32*, i32** %4, align 8
  %301 = call i32 @mrb_sys_fail(i32* %300, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %302

302:                                              ; preds = %299, %295
  %303 = load %struct.timeval*, %struct.timeval** %14, align 8
  %304 = icmp eq %struct.timeval* %303, null
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %286

306:                                              ; preds = %302
  store i32 1, i32* %27, align 4
  br label %307

307:                                              ; preds = %306, %286
  %308 = load i32, i32* %24, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %29, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = call i32 (...) @mrb_nil_value()
  store i32 %314, i32* %3, align 4
  br label %543

315:                                              ; preds = %310, %307
  %316 = load i32*, i32** %4, align 8
  %317 = call i32 @mrb_ary_new_capa(i32* %316, i32 3)
  store i32 %317, i32* %25, align 4
  %318 = load i32*, i32** %4, align 8
  %319 = load i32, i32* %25, align 4
  %320 = load i32*, i32** %20, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %325

322:                                              ; preds = %315
  %323 = load i32*, i32** %4, align 8
  %324 = call i32 @mrb_ary_new(i32* %323)
  br label %328

325:                                              ; preds = %315
  %326 = load i32*, i32** %4, align 8
  %327 = call i32 @mrb_ary_new_capa(i32* %326, i32 0)
  br label %328

328:                                              ; preds = %325, %322
  %329 = phi i32 [ %324, %322 ], [ %327, %325 ]
  %330 = call i32 @mrb_ary_push(i32* %318, i32 %319, i32 %329)
  %331 = load i32*, i32** %4, align 8
  %332 = load i32, i32* %25, align 4
  %333 = load i32*, i32** %21, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %338

335:                                              ; preds = %328
  %336 = load i32*, i32** %4, align 8
  %337 = call i32 @mrb_ary_new(i32* %336)
  br label %341

338:                                              ; preds = %328
  %339 = load i32*, i32** %4, align 8
  %340 = call i32 @mrb_ary_new_capa(i32* %339, i32 0)
  br label %341

341:                                              ; preds = %338, %335
  %342 = phi i32 [ %337, %335 ], [ %340, %338 ]
  %343 = call i32 @mrb_ary_push(i32* %331, i32 %332, i32 %342)
  %344 = load i32*, i32** %4, align 8
  %345 = load i32, i32* %25, align 4
  %346 = load i32*, i32** %22, align 8
  %347 = icmp ne i32* %346, null
  br i1 %347, label %348, label %351

348:                                              ; preds = %341
  %349 = load i32*, i32** %4, align 8
  %350 = call i32 @mrb_ary_new(i32* %349)
  br label %354

351:                                              ; preds = %341
  %352 = load i32*, i32** %4, align 8
  %353 = call i32 @mrb_ary_new_capa(i32* %352, i32 0)
  br label %354

354:                                              ; preds = %351, %348
  %355 = phi i32 [ %350, %348 ], [ %353, %351 ]
  %356 = call i32 @mrb_ary_push(i32* %344, i32 %345, i32 %355)
  %357 = load i32, i32* %27, align 4
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %541

359:                                              ; preds = %354
  %360 = load i32*, i32** %20, align 8
  %361 = icmp ne i32* %360, null
  br i1 %361, label %362, label %408

362:                                              ; preds = %359
  %363 = load i32, i32* %25, align 4
  %364 = call i32* @RARRAY_PTR(i32 %363)
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %13, align 4
  store i32 0, i32* %28, align 4
  br label %367

367:                                              ; preds = %404, %362
  %368 = load i32, i32* %28, align 4
  %369 = load i32, i32* %8, align 4
  %370 = call i32 @RARRAY_LEN(i32 %369)
  %371 = icmp slt i32 %368, %370
  br i1 %371, label %372, label %407

372:                                              ; preds = %367
  %373 = load i32*, i32** %4, align 8
  %374 = load i32, i32* %8, align 4
  %375 = call i32* @RARRAY_PTR(i32 %374)
  %376 = load i32, i32* %28, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = call %struct.mrb_io* @io_get_open_fptr(i32* %373, i32 %379)
  store %struct.mrb_io* %380, %struct.mrb_io** %23, align 8
  %381 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %382 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32*, i32** %20, align 8
  %385 = call i64 @FD_ISSET(i32 %383, i32* %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %393, label %387

387:                                              ; preds = %372
  %388 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %389 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 4
  %391 = call i64 @FD_ISSET(i32 %390, i32* %16)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %387, %372
  %394 = load i32*, i32** %4, align 8
  %395 = load i32, i32* %13, align 4
  %396 = load i32, i32* %8, align 4
  %397 = call i32* @RARRAY_PTR(i32 %396)
  %398 = load i32, i32* %28, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @mrb_ary_push(i32* %394, i32 %395, i32 %401)
  br label %403

403:                                              ; preds = %393, %387
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %28, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %28, align 4
  br label %367

407:                                              ; preds = %367
  br label %408

408:                                              ; preds = %407, %359
  %409 = load i32*, i32** %21, align 8
  %410 = icmp ne i32* %409, null
  br i1 %410, label %411, label %474

411:                                              ; preds = %408
  %412 = load i32, i32* %25, align 4
  %413 = call i32* @RARRAY_PTR(i32 %412)
  %414 = getelementptr inbounds i32, i32* %413, i64 1
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %13, align 4
  store i32 0, i32* %28, align 4
  br label %416

416:                                              ; preds = %470, %411
  %417 = load i32, i32* %28, align 4
  %418 = load i32, i32* %10, align 4
  %419 = call i32 @RARRAY_LEN(i32 %418)
  %420 = icmp slt i32 %417, %419
  br i1 %420, label %421, label %473

421:                                              ; preds = %416
  %422 = load i32*, i32** %4, align 8
  %423 = load i32, i32* %10, align 4
  %424 = call i32* @RARRAY_PTR(i32 %423)
  %425 = load i32, i32* %28, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds i32, i32* %424, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call %struct.mrb_io* @io_get_open_fptr(i32* %422, i32 %428)
  store %struct.mrb_io* %429, %struct.mrb_io** %23, align 8
  %430 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %431 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = load i32*, i32** %21, align 8
  %434 = call i64 @FD_ISSET(i32 %432, i32* %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %446

436:                                              ; preds = %421
  %437 = load i32*, i32** %4, align 8
  %438 = load i32, i32* %13, align 4
  %439 = load i32, i32* %10, align 4
  %440 = call i32* @RARRAY_PTR(i32 %439)
  %441 = load i32, i32* %28, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @mrb_ary_push(i32* %437, i32 %438, i32 %444)
  br label %469

446:                                              ; preds = %421
  %447 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %448 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = icmp sge i32 %449, 0
  br i1 %450, label %451, label %468

451:                                              ; preds = %446
  %452 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %453 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** %21, align 8
  %456 = call i64 @FD_ISSET(i32 %454, i32* %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %468

458:                                              ; preds = %451
  %459 = load i32*, i32** %4, align 8
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* %10, align 4
  %462 = call i32* @RARRAY_PTR(i32 %461)
  %463 = load i32, i32* %28, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = call i32 @mrb_ary_push(i32* %459, i32 %460, i32 %466)
  br label %468

468:                                              ; preds = %458, %451, %446
  br label %469

469:                                              ; preds = %468, %436
  br label %470

470:                                              ; preds = %469
  %471 = load i32, i32* %28, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %28, align 4
  br label %416

473:                                              ; preds = %416
  br label %474

474:                                              ; preds = %473, %408
  %475 = load i32*, i32** %22, align 8
  %476 = icmp ne i32* %475, null
  br i1 %476, label %477, label %540

477:                                              ; preds = %474
  %478 = load i32, i32* %25, align 4
  %479 = call i32* @RARRAY_PTR(i32 %478)
  %480 = getelementptr inbounds i32, i32* %479, i64 2
  %481 = load i32, i32* %480, align 4
  store i32 %481, i32* %13, align 4
  store i32 0, i32* %28, align 4
  br label %482

482:                                              ; preds = %536, %477
  %483 = load i32, i32* %28, align 4
  %484 = load i32, i32* %11, align 4
  %485 = call i32 @RARRAY_LEN(i32 %484)
  %486 = icmp slt i32 %483, %485
  br i1 %486, label %487, label %539

487:                                              ; preds = %482
  %488 = load i32*, i32** %4, align 8
  %489 = load i32, i32* %11, align 4
  %490 = call i32* @RARRAY_PTR(i32 %489)
  %491 = load i32, i32* %28, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = call %struct.mrb_io* @io_get_open_fptr(i32* %488, i32 %494)
  store %struct.mrb_io* %495, %struct.mrb_io** %23, align 8
  %496 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %497 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = load i32*, i32** %22, align 8
  %500 = call i64 @FD_ISSET(i32 %498, i32* %499)
  %501 = icmp ne i64 %500, 0
  br i1 %501, label %502, label %512

502:                                              ; preds = %487
  %503 = load i32*, i32** %4, align 8
  %504 = load i32, i32* %13, align 4
  %505 = load i32, i32* %11, align 4
  %506 = call i32* @RARRAY_PTR(i32 %505)
  %507 = load i32, i32* %28, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %506, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @mrb_ary_push(i32* %503, i32 %504, i32 %510)
  br label %535

512:                                              ; preds = %487
  %513 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %514 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %513, i32 0, i32 1
  %515 = load i32, i32* %514, align 4
  %516 = icmp sge i32 %515, 0
  br i1 %516, label %517, label %534

517:                                              ; preds = %512
  %518 = load %struct.mrb_io*, %struct.mrb_io** %23, align 8
  %519 = getelementptr inbounds %struct.mrb_io, %struct.mrb_io* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load i32*, i32** %22, align 8
  %522 = call i64 @FD_ISSET(i32 %520, i32* %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %534

524:                                              ; preds = %517
  %525 = load i32*, i32** %4, align 8
  %526 = load i32, i32* %13, align 4
  %527 = load i32, i32* %11, align 4
  %528 = call i32* @RARRAY_PTR(i32 %527)
  %529 = load i32, i32* %28, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %528, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = call i32 @mrb_ary_push(i32* %525, i32 %526, i32 %532)
  br label %534

534:                                              ; preds = %524, %517, %512
  br label %535

535:                                              ; preds = %534, %502
  br label %536

536:                                              ; preds = %535
  %537 = load i32, i32* %28, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %28, align 4
  br label %482

539:                                              ; preds = %482
  br label %540

540:                                              ; preds = %539, %474
  br label %541

541:                                              ; preds = %540, %354
  %542 = load i32, i32* %25, align 4
  store i32 %542, i32* %3, align 4
  br label %543

543:                                              ; preds = %541, %313
  %544 = load i32, i32* %3, align 4
  ret i32 %544
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32**, i32*) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local { i64, i64 } @time2timeval(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @mrb_check_type(i32*, i32, i32) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

declare dso_local %struct.mrb_io* @io_get_open_fptr(i32*, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @mrb_io_read_data_pending(i32*, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @mrb_sys_fail(i32*, i8*) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

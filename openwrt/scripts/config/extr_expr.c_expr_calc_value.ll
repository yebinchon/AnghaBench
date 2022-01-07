; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_calc_value.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_expr.c_expr_calc_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.expr* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.expr* }
%union.string_value = type { i64 }

@k_string = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"expr_calc_value: %d?\0A\00", align 1
@no = common dso_local global i32 0, align 4
@S_STRING = common dso_local global i32 0, align 4
@k_invalid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot compare \22%s\22 and \22%s\22\0A\00", align 1
@k_unsigned = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"expr_calc_value: relation %d?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_calc_value(%struct.expr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.expr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.string_value, align 8
  %11 = alloca %union.string_value, align 8
  %12 = alloca i32, align 4
  store %struct.expr* %0, %struct.expr** %3, align 8
  %13 = load i32, i32* @k_string, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @k_string, align 4
  store i32 %14, i32* %9, align 4
  %15 = bitcast %union.string_value* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = bitcast %union.string_value* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.expr*, %struct.expr** %3, align 8
  %18 = icmp ne %struct.expr* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @yes, align 4
  store i32 %20, i32* %2, align 4
  br label %277

21:                                               ; preds = %1
  %22 = load %struct.expr*, %struct.expr** %3, align 8
  %23 = getelementptr inbounds %struct.expr, %struct.expr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %75 [
    i32 129, label %25
    i32 137, label %38
    i32 130, label %52
    i32 131, label %66
    i32 136, label %74
    i32 135, label %74
    i32 134, label %74
    i32 133, label %74
    i32 132, label %74
    i32 128, label %74
  ]

25:                                               ; preds = %21
  %26 = load %struct.expr*, %struct.expr** %3, align 8
  %27 = getelementptr inbounds %struct.expr, %struct.expr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @sym_calc_value(%struct.TYPE_9__* %29)
  %31 = load %struct.expr*, %struct.expr** %3, align 8
  %32 = getelementptr inbounds %struct.expr, %struct.expr* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  br label %277

38:                                               ; preds = %21
  %39 = load %struct.expr*, %struct.expr** %3, align 8
  %40 = getelementptr inbounds %struct.expr, %struct.expr* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.expr*, %struct.expr** %41, align 8
  %43 = call i32 @expr_calc_value(%struct.expr* %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.expr*, %struct.expr** %3, align 8
  %45 = getelementptr inbounds %struct.expr, %struct.expr* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.expr*, %struct.expr** %46, align 8
  %48 = call i32 @expr_calc_value(%struct.expr* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @EXPR_AND(i32 %49, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %277

52:                                               ; preds = %21
  %53 = load %struct.expr*, %struct.expr** %3, align 8
  %54 = getelementptr inbounds %struct.expr, %struct.expr* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load %struct.expr*, %struct.expr** %55, align 8
  %57 = call i32 @expr_calc_value(%struct.expr* %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.expr*, %struct.expr** %3, align 8
  %59 = getelementptr inbounds %struct.expr, %struct.expr* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.expr*, %struct.expr** %60, align 8
  %62 = call i32 @expr_calc_value(%struct.expr* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @EXPR_OR(i32 %63, i32 %64)
  store i32 %65, i32* %2, align 4
  br label %277

66:                                               ; preds = %21
  %67 = load %struct.expr*, %struct.expr** %3, align 8
  %68 = getelementptr inbounds %struct.expr, %struct.expr* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load %struct.expr*, %struct.expr** %69, align 8
  %71 = call i32 @expr_calc_value(%struct.expr* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @EXPR_NOT(i32 %72)
  store i32 %73, i32* %2, align 4
  br label %277

74:                                               ; preds = %21, %21, %21, %21, %21, %21
  br label %81

75:                                               ; preds = %21
  %76 = load %struct.expr*, %struct.expr** %3, align 8
  %77 = getelementptr inbounds %struct.expr, %struct.expr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @no, align 4
  store i32 %80, i32* %2, align 4
  br label %277

81:                                               ; preds = %74
  %82 = load %struct.expr*, %struct.expr** %3, align 8
  %83 = getelementptr inbounds %struct.expr, %struct.expr* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = call i32 @sym_calc_value(%struct.TYPE_9__* %85)
  %87 = load %struct.expr*, %struct.expr** %3, align 8
  %88 = getelementptr inbounds %struct.expr, %struct.expr* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = call i32 @sym_calc_value(%struct.TYPE_9__* %90)
  %92 = load %struct.expr*, %struct.expr** %3, align 8
  %93 = getelementptr inbounds %struct.expr, %struct.expr* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i8* @sym_get_string_value(%struct.TYPE_9__* %95)
  store i8* %96, i8** %6, align 8
  %97 = load %struct.expr*, %struct.expr** %3, align 8
  %98 = getelementptr inbounds %struct.expr, %struct.expr* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = call i8* @sym_get_string_value(%struct.TYPE_9__* %100)
  store i8* %101, i8** %7, align 8
  %102 = load %struct.expr*, %struct.expr** %3, align 8
  %103 = getelementptr inbounds %struct.expr, %struct.expr* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @S_STRING, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %81
  %111 = load %struct.expr*, %struct.expr** %3, align 8
  %112 = getelementptr inbounds %struct.expr, %struct.expr* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @S_STRING, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %110, %81
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.expr*, %struct.expr** %3, align 8
  %122 = getelementptr inbounds %struct.expr, %struct.expr* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @expr_parse_string(i8* %120, i32 %126, %union.string_value* %10)
  store i32 %127, i32* %8, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = load %struct.expr*, %struct.expr** %3, align 8
  %130 = getelementptr inbounds %struct.expr, %struct.expr* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @expr_parse_string(i8* %128, i32 %134, %union.string_value* %11)
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %119, %110
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @k_string, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @k_string, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140, %136
  %145 = load i8*, i8** %6, align 8
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @strcmp(i8* %145, i8* %146)
  store i32 %147, i32* %12, align 4
  br label %213

148:                                              ; preds = %140
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @k_invalid, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @k_invalid, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %175

156:                                              ; preds = %152, %148
  %157 = load %struct.expr*, %struct.expr** %3, align 8
  %158 = getelementptr inbounds %struct.expr, %struct.expr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 136
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load %struct.expr*, %struct.expr** %3, align 8
  %163 = getelementptr inbounds %struct.expr, %struct.expr* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 128
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i8*, i8** %6, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %167, i8* %168)
  %170 = load i32, i32* @no, align 4
  store i32 %170, i32* %2, align 4
  br label %277

171:                                              ; preds = %161, %156
  %172 = load i8*, i8** %6, align 8
  %173 = load i8*, i8** %7, align 8
  %174 = call i32 @strcmp(i8* %172, i8* %173)
  store i32 %174, i32* %12, align 4
  br label %212

175:                                              ; preds = %152
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @k_unsigned, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %175
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @k_unsigned, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %179, %175
  %184 = bitcast %union.string_value* %10 to i64*
  %185 = load i64, i64* %184, align 8
  %186 = bitcast %union.string_value* %11 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = icmp sgt i64 %185, %187
  %189 = zext i1 %188 to i32
  %190 = bitcast %union.string_value* %10 to i64*
  %191 = load i64, i64* %190, align 8
  %192 = bitcast %union.string_value* %11 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = icmp slt i64 %191, %193
  %195 = zext i1 %194 to i32
  %196 = sub nsw i32 %189, %195
  store i32 %196, i32* %12, align 4
  br label %211

197:                                              ; preds = %179
  %198 = bitcast %union.string_value* %10 to i64*
  %199 = load i64, i64* %198, align 8
  %200 = bitcast %union.string_value* %11 to i64*
  %201 = load i64, i64* %200, align 8
  %202 = icmp sgt i64 %199, %201
  %203 = zext i1 %202 to i32
  %204 = bitcast %union.string_value* %10 to i64*
  %205 = load i64, i64* %204, align 8
  %206 = bitcast %union.string_value* %11 to i64*
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %205, %207
  %209 = zext i1 %208 to i32
  %210 = sub nsw i32 %203, %209
  store i32 %210, i32* %12, align 4
  br label %211

211:                                              ; preds = %197, %183
  br label %212

212:                                              ; preds = %211, %171
  br label %213

213:                                              ; preds = %212, %144
  %214 = load %struct.expr*, %struct.expr** %3, align 8
  %215 = getelementptr inbounds %struct.expr, %struct.expr* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  switch i32 %216, label %271 [
    i32 136, label %217
    i32 135, label %226
    i32 134, label %235
    i32 133, label %244
    i32 132, label %253
    i32 128, label %262
  ]

217:                                              ; preds = %213
  %218 = load i32, i32* %12, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = load i32, i32* @no, align 4
  br label %224

222:                                              ; preds = %217
  %223 = load i32, i32* @yes, align 4
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %221, %220 ], [ %223, %222 ]
  store i32 %225, i32* %2, align 4
  br label %277

226:                                              ; preds = %213
  %227 = load i32, i32* %12, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* @yes, align 4
  br label %233

231:                                              ; preds = %226
  %232 = load i32, i32* @no, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  store i32 %234, i32* %2, align 4
  br label %277

235:                                              ; preds = %213
  %236 = load i32, i32* %12, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32, i32* @yes, align 4
  br label %242

240:                                              ; preds = %235
  %241 = load i32, i32* @no, align 4
  br label %242

242:                                              ; preds = %240, %238
  %243 = phi i32 [ %239, %238 ], [ %241, %240 ]
  store i32 %243, i32* %2, align 4
  br label %277

244:                                              ; preds = %213
  %245 = load i32, i32* %12, align 4
  %246 = icmp sle i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = load i32, i32* @yes, align 4
  br label %251

249:                                              ; preds = %244
  %250 = load i32, i32* @no, align 4
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %248, %247 ], [ %250, %249 ]
  store i32 %252, i32* %2, align 4
  br label %277

253:                                              ; preds = %213
  %254 = load i32, i32* %12, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %253
  %257 = load i32, i32* @yes, align 4
  br label %260

258:                                              ; preds = %253
  %259 = load i32, i32* @no, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = phi i32 [ %257, %256 ], [ %259, %258 ]
  store i32 %261, i32* %2, align 4
  br label %277

262:                                              ; preds = %213
  %263 = load i32, i32* %12, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = load i32, i32* @yes, align 4
  br label %269

267:                                              ; preds = %262
  %268 = load i32, i32* @no, align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  store i32 %270, i32* %2, align 4
  br label %277

271:                                              ; preds = %213
  %272 = load %struct.expr*, %struct.expr** %3, align 8
  %273 = getelementptr inbounds %struct.expr, %struct.expr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* @no, align 4
  store i32 %276, i32* %2, align 4
  br label %277

277:                                              ; preds = %271, %269, %260, %251, %242, %233, %224, %166, %75, %66, %52, %38, %25, %19
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sym_calc_value(%struct.TYPE_9__*) #2

declare dso_local i32 @EXPR_AND(i32, i32) #2

declare dso_local i32 @EXPR_OR(i32, i32) #2

declare dso_local i32 @EXPR_NOT(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @sym_get_string_value(%struct.TYPE_9__*) #2

declare dso_local i32 @expr_parse_string(i8*, i32, %union.string_value*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

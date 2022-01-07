; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_do_hash.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_do_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i64 }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@R_HASH_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"rahash2: Invalid hashing algorithm specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"rahash2: Invalid file size\0A\00", align 1
@to = common dso_local global i64 0, align 8
@from = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"rahash2: Invalid -f -t range\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"rahash2: Unknown file size\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@incremental = common dso_local global i64 0, align 8
@R_HASH_ALL = common dso_local global i32 0, align 4
@s = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@iterations = common dso_local global i64 0, align 8
@_s = common dso_local global %struct.TYPE_9__* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Warning: Seed ignored on per-block hashing.\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.TYPE_7__*, i32, i32, i32, i32*)* @do_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hash(i8* %0, i8* %1, %struct.TYPE_7__* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 @r_hash_name_to_bits(i8* %33)
  store i32 %34, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %23, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* @R_HASH_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %7
  %39 = call i32 @eprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %375

40:                                               ; preds = %7
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @r_io_desc_size(i32 %43)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %375

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 0, %54
  %56 = sdiv i32 %53, %55
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %12, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %17, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i64, i64* @to, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* @to, align 8
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* @from, align 8
  %74 = load i64, i64* @to, align 8
  %75 = icmp sgt i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %375

78:                                               ; preds = %72
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp eq i64 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @eprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %375

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32* @calloc(i32 1, i32 %86)
  store i32* %87, i32** %20, align 8
  %88 = load i32*, i32** %20, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  store i32 1, i32* %8, align 4
  br label %375

91:                                               ; preds = %84
  %92 = load i32, i32* %18, align 4
  %93 = call i32* @r_hash_new(i32 1, i32 %92)
  store i32* %93, i32** %19, align 8
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 106
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i64, i64* @incremental, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %268

101:                                              ; preds = %98
  store i32 1, i32* %22, align 4
  br label %102

102:                                              ; preds = %256, %101
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* @R_HASH_ALL, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %259

106:                                              ; preds = %102
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %22, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %255

111:                                              ; preds = %106
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %18, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %24, align 4
  %115 = load i32, i32* %24, align 4
  %116 = call i32 @r_hash_size(i32 %115)
  store i32 %116, i32* %25, align 4
  %117 = load i32*, i32** %19, align 8
  %118 = load i32, i32* %22, align 4
  %119 = call i32 @r_hash_do_begin(i32* %117, i32 %118)
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 1), align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %111
  %123 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 2), align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32*, i32** %19, align 8
  %127 = load i32, i32* %24, align 4
  %128 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 1), align 8
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 0), align 8
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i32 @do_hash_internal(i32* %126, i32 %127, i32* %128, i32 %129, i32 %130, i32 0, i32 %131)
  br label %133

133:                                              ; preds = %125, %122, %111
  %134 = load i64, i64* @from, align 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %171, %133
  %137 = load i32, i32* %16, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @to, align 8
  %140 = icmp slt i64 %138, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %136
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = load i64, i64* @to, align 8
  %147 = icmp sgt i64 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load i64, i64* @to, align 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %149, %151
  br label %156

153:                                              ; preds = %141
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  br label %156

156:                                              ; preds = %153, %148
  %157 = phi i64 [ %152, %148 ], [ %155, %153 ]
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %26, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %20, align 8
  %162 = load i32, i32* %26, align 4
  %163 = call i32 @r_io_pread_at(%struct.TYPE_7__* %159, i32 %160, i32* %161, i32 %162)
  %164 = load i32*, i32** %19, align 8
  %165 = load i32, i32* %24, align 4
  %166 = load i32*, i32** %20, align 8
  %167 = load i32, i32* %26, align 4
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @do_hash_internal(i32* %164, i32 %165, i32* %166, i32 %167, i32 %168, i32 0, i32 %169)
  br label %171

171:                                              ; preds = %156
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %16, align 4
  br label %136

175:                                              ; preds = %136
  %176 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 1), align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 2), align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = load i32*, i32** %19, align 8
  %183 = load i32, i32* %24, align 4
  %184 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 1), align 8
  %185 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 0), align 8
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %14, align 4
  %188 = call i32 @do_hash_internal(i32* %182, i32 %183, i32* %184, i32 %185, i32 %186, i32 0, i32 %187)
  br label %189

189:                                              ; preds = %181, %178, %175
  %190 = load i32*, i32** %19, align 8
  %191 = load i32, i32* %22, align 4
  %192 = call i32 @r_hash_do_end(i32* %190, i32 %191)
  %193 = load i64, i64* @iterations, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load i32*, i32** %19, align 8
  %197 = load i32, i32* %22, align 4
  %198 = load i64, i64* @iterations, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_s, align 8
  %200 = call i32 @r_hash_do_spice(i32* %196, i32 %197, i64 %198, %struct.TYPE_9__* %199)
  br label %201

201:                                              ; preds = %195, %189
  %202 = load i32, i32* %22, align 4
  %203 = call i32* @r_hash_name(i32 %202)
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  br label %256

207:                                              ; preds = %201
  %208 = load i32, i32* %13, align 4
  %209 = icmp eq i32 %208, 106
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* %23, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 0, i32* %23, align 4
  br label %216

214:                                              ; preds = %210
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %213
  br label %217

217:                                              ; preds = %216, %207
  %218 = load i32, i32* @quiet, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 106
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i8*, i8** %9, align 8
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %224)
  br label %226

226:                                              ; preds = %223, %220, %217
  %227 = load i32*, i32** %19, align 8
  %228 = load i32, i32* %22, align 4
  %229 = load i32, i32* %25, align 4
  %230 = load i32, i32* @quiet, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %235

233:                                              ; preds = %226
  %234 = load i32, i32* %13, align 4
  br label %235

235:                                              ; preds = %233, %232
  %236 = phi i32 [ 110, %232 ], [ %234, %233 ]
  %237 = trunc i32 %236 to i8
  %238 = load i32, i32* %14, align 4
  %239 = call i32 @do_hash_print(i32* %227, i32 %228, i32 %229, i8 signext %237, i32 %238)
  %240 = load i32, i32* @quiet, align 4
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i8*, i8** %9, align 8
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %243)
  br label %254

245:                                              ; preds = %235
  %246 = load i32, i32* @quiet, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %248, %245
  br label %254

254:                                              ; preds = %253, %242
  br label %255

255:                                              ; preds = %254, %106
  br label %256

256:                                              ; preds = %255, %206
  %257 = load i32, i32* %22, align 4
  %258 = shl i32 %257, 1
  store i32 %258, i32* %22, align 4
  br label %102

259:                                              ; preds = %102
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_s, align 8
  %261 = icmp ne %struct.TYPE_9__* %260, null
  br i1 %261, label %262, label %267

262:                                              ; preds = %259
  %263 = load %struct.TYPE_9__*, %struct.TYPE_9__** @_s, align 8
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @free(i32* %265)
  br label %267

267:                                              ; preds = %262, %259
  br label %359

268:                                              ; preds = %98
  %269 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @s, i32 0, i32 1), align 8
  %270 = icmp ne i32* %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = call i32 @eprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %268
  store i32 1, i32* %22, align 4
  br label %274

274:                                              ; preds = %355, %273
  %275 = load i32, i32* %22, align 4
  %276 = load i32, i32* @R_HASH_ALL, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %358

278:                                              ; preds = %274
  %279 = load i32, i32* %18, align 4
  %280 = load i32, i32* %22, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %354

283:                                              ; preds = %278
  %284 = load i32, i32* %22, align 4
  %285 = load i32, i32* %18, align 4
  %286 = and i32 %284, %285
  store i32 %286, i32* %31, align 4
  %287 = load i64, i64* @from, align 8
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %29, align 4
  %289 = load i64, i64* @to, align 8
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %30, align 4
  %291 = load i64, i64* @from, align 8
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %27, align 4
  %293 = load i64, i64* @to, align 8
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %28, align 4
  %295 = load i32, i32* %27, align 4
  store i32 %295, i32* %16, align 4
  br label %296

296:                                              ; preds = %340, %283
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %28, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %344

300:                                              ; preds = %296
  %301 = load i32, i32* %16, align 4
  %302 = load i32, i32* %12, align 4
  %303 = add nsw i32 %301, %302
  %304 = load i32, i32* %17, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %300
  %307 = load i32, i32* %12, align 4
  br label %312

308:                                              ; preds = %300
  %309 = load i32, i32* %17, align 4
  %310 = load i32, i32* %16, align 4
  %311 = sub nsw i32 %309, %310
  br label %312

312:                                              ; preds = %308, %306
  %313 = phi i32 [ %307, %306 ], [ %311, %308 ]
  store i32 %313, i32* %32, align 4
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %315 = load i32, i32* %16, align 4
  %316 = load i32*, i32** %20, align 8
  %317 = load i32, i32* %12, align 4
  %318 = call i32 @r_io_pread_at(%struct.TYPE_7__* %314, i32 %315, i32* %316, i32 %317)
  %319 = load i32, i32* %16, align 4
  %320 = sext i32 %319 to i64
  store i64 %320, i64* @from, align 8
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* %12, align 4
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  store i64 %324, i64* @to, align 8
  %325 = load i64, i64* @to, align 8
  %326 = load i32, i32* %17, align 4
  %327 = sext i32 %326 to i64
  %328 = icmp sgt i64 %325, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %312
  %330 = load i32, i32* %17, align 4
  %331 = sext i32 %330 to i64
  store i64 %331, i64* @to, align 8
  br label %332

332:                                              ; preds = %329, %312
  %333 = load i32*, i32** %19, align 8
  %334 = load i32, i32* %31, align 4
  %335 = load i32*, i32** %20, align 8
  %336 = load i32, i32* %32, align 4
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %14, align 4
  %339 = call i32 @do_hash_internal(i32* %333, i32 %334, i32* %335, i32 %336, i32 %337, i32 1, i32 %338)
  br label %340

340:                                              ; preds = %332
  %341 = load i32, i32* %12, align 4
  %342 = load i32, i32* %16, align 4
  %343 = add nsw i32 %342, %341
  store i32 %343, i32* %16, align 4
  br label %296

344:                                              ; preds = %296
  %345 = load i32*, i32** %19, align 8
  %346 = load i32, i32* %31, align 4
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* %14, align 4
  %349 = call i32 @do_hash_internal(i32* %345, i32 %346, i32* null, i32 0, i32 %347, i32 1, i32 %348)
  %350 = load i32, i32* %29, align 4
  %351 = sext i32 %350 to i64
  store i64 %351, i64* @from, align 8
  %352 = load i32, i32* %30, align 4
  %353 = sext i32 %352 to i64
  store i64 %353, i64* @to, align 8
  br label %354

354:                                              ; preds = %344, %278
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %22, align 4
  %357 = shl i32 %356, 1
  store i32 %357, i32* %22, align 4
  br label %274

358:                                              ; preds = %274
  br label %359

359:                                              ; preds = %358, %267
  %360 = load i32, i32* %13, align 4
  %361 = icmp eq i32 %360, 106
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %364

364:                                              ; preds = %362, %359
  %365 = load i32*, i32** %19, align 8
  %366 = load i32*, i32** %15, align 8
  %367 = load i32, i32* %18, align 4
  %368 = call i32 @r_hash_size(i32 %367)
  %369 = call i32 @compare_hashes(i32* %365, i32* %366, i32 %368, i32* %21)
  %370 = load i32*, i32** %19, align 8
  %371 = call i32 @r_hash_free(i32* %370)
  %372 = load i32*, i32** %20, align 8
  %373 = call i32 @free(i32* %372)
  %374 = load i32, i32* %21, align 4
  store i32 %374, i32* %8, align 4
  br label %375

375:                                              ; preds = %364, %90, %82, %76, %47, %38
  %376 = load i32, i32* %8, align 4
  ret i32 %376
}

declare dso_local i32 @r_hash_name_to_bits(i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @r_io_desc_size(i32) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32* @r_hash_new(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @r_hash_size(i32) #1

declare dso_local i32 @r_hash_do_begin(i32*, i32) #1

declare dso_local i32 @do_hash_internal(i32*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @r_io_pread_at(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @r_hash_do_end(i32*, i32) #1

declare dso_local i32 @r_hash_do_spice(i32*, i32, i64, %struct.TYPE_9__*) #1

declare dso_local i32* @r_hash_name(i32) #1

declare dso_local i32 @do_hash_print(i32*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @compare_hashes(i32*, i32*, i32, i32*) #1

declare dso_local i32 @r_hash_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

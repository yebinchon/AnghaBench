; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_build_startup_packet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-protocol3.c_build_startup_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i64, i32 }
%struct.TYPE_5__ = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"database\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"replication\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"application_name\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"client_encoding\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, %struct.TYPE_5__*)* @build_startup_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_startup_packet(%struct.TYPE_6__* %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pg_hton32(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = call i32 @memcpy(i8* %21, i32* %10, i32 4)
  br label %23

23:                                               ; preds = %13, %3
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %77

32:                                               ; preds = %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = call i8* @strcpy(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 5
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %7, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @strcpy(i8* %61, i8* %64)
  br label %66

66:                                               ; preds = %57, %50
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add i64 %70, 1
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %32, %23
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %127

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %127

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90
  %92 = load i8*, i8** %5, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = call i8* @strcpy(i8* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, 9
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %7, align 4
  %105 = load i8*, i8** %5, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %116

107:                                              ; preds = %100
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @strcpy(i8* %111, i8* %114)
  br label %116

116:                                              ; preds = %107, %100
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strlen(i8* %119)
  %121 = add i64 %120, 1
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, %121
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %82, %77
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %177

132:                                              ; preds = %127
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 0
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140
  %142 = load i8*, i8** %5, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = load i8*, i8** %5, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = call i8* @strcpy(i8* %148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %144, %141
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, 12
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %7, align 4
  %155 = load i8*, i8** %5, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load i8*, i8** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i8*, i8** %163, align 8
  %165 = call i8* @strcpy(i8* %161, i8* %164)
  br label %166

166:                                              ; preds = %157, %150
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @strlen(i8* %169)
  %171 = add i64 %170, 1
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = add i64 %173, %171
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %132, %127
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %227

182:                                              ; preds = %177
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %227

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190
  %192 = load i8*, i8** %5, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = call i8* @strcpy(i8* %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 %202, 8
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %7, align 4
  %205 = load i8*, i8** %5, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %216

207:                                              ; preds = %200
  %208 = load i8*, i8** %5, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = call i8* @strcpy(i8* %211, i8* %214)
  br label %216

216:                                              ; preds = %207, %200
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = call i64 @strlen(i8* %219)
  %221 = add i64 %220, 1
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = add i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %216
  br label %227

227:                                              ; preds = %226, %182, %177
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 7
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %289

232:                                              ; preds = %227
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 4
  %235 = load i8*, i8** %234, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 4
  %240 = load i8*, i8** %239, align 8
  br label %245

241:                                              ; preds = %232
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 5
  %244 = load i8*, i8** %243, align 8
  br label %245

245:                                              ; preds = %241, %237
  %246 = phi i8* [ %240, %237 ], [ %244, %241 ]
  store i8* %246, i8** %9, align 8
  %247 = load i8*, i8** %9, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %288

249:                                              ; preds = %245
  %250 = load i8*, i8** %9, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 0
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %288

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255
  %257 = load i8*, i8** %5, align 8
  %258 = icmp ne i8* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load i8*, i8** %5, align 8
  %261 = load i32, i32* %7, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = call i8* @strcpy(i8* %263, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %265

265:                                              ; preds = %259, %256
  %266 = load i32, i32* %7, align 4
  %267 = sext i32 %266 to i64
  %268 = add i64 %267, 17
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %7, align 4
  %270 = load i8*, i8** %5, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %279

272:                                              ; preds = %265
  %273 = load i8*, i8** %5, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8, i8* %273, i64 %275
  %277 = load i8*, i8** %9, align 8
  %278 = call i8* @strcpy(i8* %276, i8* %277)
  br label %279

279:                                              ; preds = %272, %265
  %280 = load i8*, i8** %9, align 8
  %281 = call i64 @strlen(i8* %280)
  %282 = add i64 %281, 1
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = add i64 %284, %282
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %7, align 4
  br label %287

287:                                              ; preds = %279
  br label %288

288:                                              ; preds = %287, %249, %245
  br label %289

289:                                              ; preds = %288, %227
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 6
  %292 = load i8*, i8** %291, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %339

294:                                              ; preds = %289
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 6
  %297 = load i8*, i8** %296, align 8
  %298 = getelementptr inbounds i8, i8* %297, i64 0
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %339

302:                                              ; preds = %294
  br label %303

303:                                              ; preds = %302
  %304 = load i8*, i8** %5, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %312

306:                                              ; preds = %303
  %307 = load i8*, i8** %5, align 8
  %308 = load i32, i32* %7, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i8, i8* %307, i64 %309
  %311 = call i8* @strcpy(i8* %310, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %312

312:                                              ; preds = %306, %303
  %313 = load i32, i32* %7, align 4
  %314 = sext i32 %313 to i64
  %315 = add i64 %314, 16
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %7, align 4
  %317 = load i8*, i8** %5, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %328

319:                                              ; preds = %312
  %320 = load i8*, i8** %5, align 8
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %320, i64 %322
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 6
  %326 = load i8*, i8** %325, align 8
  %327 = call i8* @strcpy(i8* %323, i8* %326)
  br label %328

328:                                              ; preds = %319, %312
  %329 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 6
  %331 = load i8*, i8** %330, align 8
  %332 = call i64 @strlen(i8* %331)
  %333 = add i64 %332, 1
  %334 = load i32, i32* %7, align 4
  %335 = sext i32 %334 to i64
  %336 = add i64 %335, %333
  %337 = trunc i64 %336 to i32
  store i32 %337, i32* %7, align 4
  br label %338

338:                                              ; preds = %328
  br label %339

339:                                              ; preds = %338, %294, %289
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %340, %struct.TYPE_5__** %8, align 8
  br label %341

341:                                              ; preds = %399, %339
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %402

346:                                              ; preds = %341
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 1
  %349 = load i64, i64* %348, align 8
  %350 = call i8* @getenv(i64 %349)
  store i8* %350, i8** %9, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %398

352:                                              ; preds = %346
  %353 = load i8*, i8** %9, align 8
  %354 = call i64 @pg_strcasecmp(i8* %353, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %397

356:                                              ; preds = %352
  br label %357

357:                                              ; preds = %356
  %358 = load i8*, i8** %5, align 8
  %359 = icmp ne i8* %358, null
  br i1 %359, label %360, label %369

360:                                              ; preds = %357
  %361 = load i8*, i8** %5, align 8
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  %367 = load i8*, i8** %366, align 8
  %368 = call i8* @strcpy(i8* %364, i8* %367)
  br label %369

369:                                              ; preds = %360, %357
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = call i64 @strlen(i8* %372)
  %374 = add i64 %373, 1
  %375 = load i32, i32* %7, align 4
  %376 = sext i32 %375 to i64
  %377 = add i64 %376, %374
  %378 = trunc i64 %377 to i32
  store i32 %378, i32* %7, align 4
  %379 = load i8*, i8** %5, align 8
  %380 = icmp ne i8* %379, null
  br i1 %380, label %381, label %388

381:                                              ; preds = %369
  %382 = load i8*, i8** %5, align 8
  %383 = load i32, i32* %7, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i8, i8* %382, i64 %384
  %386 = load i8*, i8** %9, align 8
  %387 = call i8* @strcpy(i8* %385, i8* %386)
  br label %388

388:                                              ; preds = %381, %369
  %389 = load i8*, i8** %9, align 8
  %390 = call i64 @strlen(i8* %389)
  %391 = add i64 %390, 1
  %392 = load i32, i32* %7, align 4
  %393 = sext i32 %392 to i64
  %394 = add i64 %393, %391
  %395 = trunc i64 %394 to i32
  store i32 %395, i32* %7, align 4
  br label %396

396:                                              ; preds = %388
  br label %397

397:                                              ; preds = %396, %352
  br label %398

398:                                              ; preds = %397, %346
  br label %399

399:                                              ; preds = %398
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i32 1
  store %struct.TYPE_5__* %401, %struct.TYPE_5__** %8, align 8
  br label %341

402:                                              ; preds = %341
  %403 = load i8*, i8** %5, align 8
  %404 = icmp ne i8* %403, null
  br i1 %404, label %405, label %410

405:                                              ; preds = %402
  %406 = load i8*, i8** %5, align 8
  %407 = load i32, i32* %7, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  store i8 0, i8* %409, align 1
  br label %410

410:                                              ; preds = %405, %402
  %411 = load i32, i32* %7, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %7, align 4
  %413 = load i32, i32* %7, align 4
  ret i32 %413
}

declare dso_local i32 @pg_hton32(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getenv(i64) #1

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

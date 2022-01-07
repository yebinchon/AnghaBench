; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadAttributesText.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_copy.c_CopyReadAttributesText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i8**, i32, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i8*, i32 }
%struct.TYPE_6__ = type { i64, i8* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_BAD_COPY_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"extra data after last expected column\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @CopyReadAttributesText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CopyReadAttributesText(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %4, align 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_BAD_COPY_FILE_FORMAT, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  store i32 0, i32* %2, align 4
  br label %333

41:                                               ; preds = %1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = call i32 @resetStringInfo(%struct.TYPE_8__* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %48, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @enlargeStringInfo(%struct.TYPE_8__* %56, i64 %60)
  br label %62

62:                                               ; preds = %54, %41
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %7, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 6
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  store i8* %79, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %310, %62
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i8**, i8*** %92, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call i8** @repalloc(i8** %93, i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 2
  store i8** %100, i8*** %102, align 8
  br label %103

103:                                              ; preds = %86, %80
  %104 = load i8*, i8** %7, align 8
  store i8* %104, i8** %10, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %105, i8** %111, align 8
  br label %112

112:                                              ; preds = %251, %103
  %113 = load i8*, i8** %7, align 8
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp uge i8* %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %255

118:                                              ; preds = %112
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  %121 = load i8, i8* %119, align 1
  store i8 %121, i8* %14, align 1
  %122 = load i8, i8* %14, align 1
  %123 = sext i8 %122 to i32
  %124 = load i8, i8* %4, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  store i32 1, i32* %9, align 4
  br label %255

128:                                              ; preds = %118
  %129 = load i8, i8* %14, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 92
  br i1 %131, label %132, label %251

132:                                              ; preds = %128
  %133 = load i8*, i8** %7, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = icmp uge i8* %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %255

137:                                              ; preds = %132
  %138 = load i8*, i8** %7, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %7, align 8
  %140 = load i8, i8* %138, align 1
  store i8 %140, i8* %14, align 1
  %141 = load i8, i8* %14, align 1
  %142 = sext i8 %141 to i32
  switch i32 %142, label %250 [
    i32 48, label %143
    i32 49, label %143
    i32 50, label %143
    i32 51, label %143
    i32 52, label %143
    i32 53, label %143
    i32 54, label %143
    i32 55, label %143
    i32 120, label %196
    i32 98, label %244
    i32 102, label %245
    i32 110, label %246
    i32 114, label %247
    i32 116, label %248
    i32 118, label %249
  ]

143:                                              ; preds = %137, %137, %137, %137, %137, %137, %137, %137
  %144 = load i8, i8* %14, align 1
  %145 = call i32 @OCTVALUE(i8 signext %144)
  store i32 %145, i32* %15, align 4
  %146 = load i8*, i8** %7, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = icmp ult i8* %146, %147
  br i1 %148, label %149, label %183

149:                                              ; preds = %143
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  store i8 %151, i8* %14, align 1
  %152 = load i8, i8* %14, align 1
  %153 = call i32 @ISOCTAL(i8 signext %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %149
  %156 = load i8*, i8** %7, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %7, align 8
  %158 = load i32, i32* %15, align 4
  %159 = shl i32 %158, 3
  %160 = load i8, i8* %14, align 1
  %161 = call i32 @OCTVALUE(i8 signext %160)
  %162 = add nsw i32 %159, %161
  store i32 %162, i32* %15, align 4
  %163 = load i8*, i8** %7, align 8
  %164 = load i8*, i8** %8, align 8
  %165 = icmp ult i8* %163, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %155
  %167 = load i8*, i8** %7, align 8
  %168 = load i8, i8* %167, align 1
  store i8 %168, i8* %14, align 1
  %169 = load i8, i8* %14, align 1
  %170 = call i32 @ISOCTAL(i8 signext %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = load i8*, i8** %7, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %7, align 8
  %175 = load i32, i32* %15, align 4
  %176 = shl i32 %175, 3
  %177 = load i8, i8* %14, align 1
  %178 = call i32 @OCTVALUE(i8 signext %177)
  %179 = add nsw i32 %176, %178
  store i32 %179, i32* %15, align 4
  br label %180

180:                                              ; preds = %172, %166
  br label %181

181:                                              ; preds = %180, %155
  br label %182

182:                                              ; preds = %181, %149
  br label %183

183:                                              ; preds = %182, %143
  %184 = load i32, i32* %15, align 4
  %185 = and i32 %184, 255
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %14, align 1
  %187 = load i8, i8* %14, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %183
  %191 = load i8, i8* %14, align 1
  %192 = call i32 @IS_HIGHBIT_SET(i8 signext %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190, %183
  store i32 1, i32* %13, align 4
  br label %195

195:                                              ; preds = %194, %190
  br label %250

196:                                              ; preds = %137
  %197 = load i8*, i8** %7, align 8
  %198 = load i8*, i8** %8, align 8
  %199 = icmp ult i8* %197, %198
  br i1 %199, label %200, label %243

200:                                              ; preds = %196
  %201 = load i8*, i8** %7, align 8
  %202 = load i8, i8* %201, align 1
  store i8 %202, i8* %16, align 1
  %203 = load i8, i8* %16, align 1
  %204 = call i32 @isxdigit(i8 zeroext %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %242

206:                                              ; preds = %200
  %207 = load i8, i8* %16, align 1
  %208 = call i32 @GetDecimalFromHex(i8 signext %207)
  store i32 %208, i32* %17, align 4
  %209 = load i8*, i8** %7, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %7, align 8
  %211 = load i8*, i8** %7, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = icmp ult i8* %211, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %206
  %215 = load i8*, i8** %7, align 8
  %216 = load i8, i8* %215, align 1
  store i8 %216, i8* %16, align 1
  %217 = load i8, i8* %16, align 1
  %218 = call i32 @isxdigit(i8 zeroext %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %214
  %221 = load i8*, i8** %7, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %7, align 8
  %223 = load i32, i32* %17, align 4
  %224 = shl i32 %223, 4
  %225 = load i8, i8* %16, align 1
  %226 = call i32 @GetDecimalFromHex(i8 signext %225)
  %227 = add nsw i32 %224, %226
  store i32 %227, i32* %17, align 4
  br label %228

228:                                              ; preds = %220, %214
  br label %229

229:                                              ; preds = %228, %206
  %230 = load i32, i32* %17, align 4
  %231 = and i32 %230, 255
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %14, align 1
  %233 = load i8, i8* %14, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %229
  %237 = load i8, i8* %14, align 1
  %238 = call i32 @IS_HIGHBIT_SET(i8 signext %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236, %229
  store i32 1, i32* %13, align 4
  br label %241

241:                                              ; preds = %240, %236
  br label %242

242:                                              ; preds = %241, %200
  br label %243

243:                                              ; preds = %242, %196
  br label %250

244:                                              ; preds = %137
  store i8 8, i8* %14, align 1
  br label %250

245:                                              ; preds = %137
  store i8 12, i8* %14, align 1
  br label %250

246:                                              ; preds = %137
  store i8 10, i8* %14, align 1
  br label %250

247:                                              ; preds = %137
  store i8 13, i8* %14, align 1
  br label %250

248:                                              ; preds = %137
  store i8 9, i8* %14, align 1
  br label %250

249:                                              ; preds = %137
  store i8 11, i8* %14, align 1
  br label %250

250:                                              ; preds = %137, %249, %248, %247, %246, %245, %244, %243, %195
  br label %251

251:                                              ; preds = %250, %128
  %252 = load i8, i8* %14, align 1
  %253 = load i8*, i8** %6, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %6, align 8
  store i8 %252, i8* %253, align 1
  br label %112

255:                                              ; preds = %136, %127, %117
  %256 = load i8*, i8** %11, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = ptrtoint i8* %256 to i64
  %259 = ptrtoint i8* %257 to i64
  %260 = sub i64 %258, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %12, align 4
  %262 = load i32, i32* %12, align 4
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = icmp eq i32 %262, %265
  br i1 %266, label %267, label %282

267:                                              ; preds = %255
  %268 = load i8*, i8** %10, align 8
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i64 @strncmp(i8* %268, i32 %271, i32 %272)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %267
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 2
  %278 = load i8**, i8*** %277, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %278, i64 %280
  store i8* null, i8** %281, align 8
  br label %302

282:                                              ; preds = %267, %255
  %283 = load i32, i32* %13, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %282
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 2
  %288 = load i8**, i8*** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i8*, i8** %288, i64 %290
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %18, align 8
  %293 = load i8*, i8** %18, align 8
  %294 = load i8*, i8** %6, align 8
  %295 = load i8*, i8** %18, align 8
  %296 = ptrtoint i8* %294 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = call i32 @pg_verifymbstr(i8* %293, i32 %299, i32 0)
  br label %301

301:                                              ; preds = %285, %282
  br label %302

302:                                              ; preds = %301, %275
  %303 = load i8*, i8** %6, align 8
  %304 = getelementptr inbounds i8, i8* %303, i32 1
  store i8* %304, i8** %6, align 8
  store i8 0, i8* %303, align 1
  %305 = load i32, i32* %5, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %5, align 4
  %307 = load i32, i32* %9, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %310, label %309

309:                                              ; preds = %302
  br label %311

310:                                              ; preds = %302
  br label %80

311:                                              ; preds = %309
  %312 = load i8*, i8** %6, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 -1
  store i8* %313, i8** %6, align 8
  %314 = load i8*, i8** %6, align 8
  %315 = load i8, i8* %314, align 1
  %316 = sext i8 %315 to i32
  %317 = icmp eq i32 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i32 @Assert(i32 %318)
  %320 = load i8*, i8** %6, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 1
  %324 = load i8*, i8** %323, align 8
  %325 = ptrtoint i8* %320 to i64
  %326 = ptrtoint i8* %324 to i64
  %327 = sub i64 %325, %326
  %328 = trunc i64 %327 to i32
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 4
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 2
  store i32 %328, i32* %331, align 8
  %332 = load i32, i32* %5, align 4
  store i32 %332, i32* %2, align 4
  br label %333

333:                                              ; preds = %311, %40
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_8__*) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_8__*, i64) #1

declare dso_local i8** @repalloc(i8**, i32) #1

declare dso_local i32 @OCTVALUE(i8 signext) #1

declare dso_local i32 @ISOCTAL(i8 signext) #1

declare dso_local i32 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i32 @isxdigit(i8 zeroext) #1

declare dso_local i32 @GetDecimalFromHex(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @pg_verifymbstr(i8*, i32, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

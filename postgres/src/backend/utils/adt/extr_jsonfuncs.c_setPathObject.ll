; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_setPathObject.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_setPathObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8* }

@JB_PATH_CREATE_OR_INSERT = common dso_local global i32 0, align 4
@jbvString = common dso_local global i8* null, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@JB_PATH_INSERT_BEFORE = common dso_local global i32 0, align 4
@JB_PATH_INSERT_AFTER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot replace existing key\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Try using the function jsonb_set to replace key value.\00", align 1
@JB_PATH_DELETE = common dso_local global i32 0, align 4
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@WJB_BEGIN_OBJECT = common dso_local global i64 0, align 8
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@WJB_END_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32*, i32, i32**, i32, i32*, i32, i32)* @setPathObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setPathObject(i32** %0, i32* %1, i32* %2, i32 %3, i32** %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_8__, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_8__, align 8
  %26 = alloca i32, align 4
  store i32** %0, i32*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32** %4, i32*** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %22, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %9
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %9
  store i32 1, i32* %22, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %17, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %38
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* @JB_PATH_CREATE_OR_INSERT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %46
  %52 = load i8*, i8** @jbvString, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @VARSIZE_ANY_EXHDR(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @VARDATA_ANY(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  %72 = load i32**, i32*** %14, align 8
  %73 = load i64, i64* @WJB_KEY, align 8
  %74 = call i32 @pushJsonbValue(i32** %72, i64 %73, %struct.TYPE_8__* %23)
  %75 = load i32**, i32*** %14, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = call i32 @addJsonbToParseState(i32** %75, i32* %76)
  br label %78

78:                                               ; preds = %51, %46, %41, %38
  store i32 0, i32* %20, align 4
  br label %79

79:                                               ; preds = %281, %78
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %17, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %284

83:                                               ; preds = %79
  %84 = load i32**, i32*** %10, align 8
  %85 = call i64 @JsonbIteratorNext(i32** %84, %struct.TYPE_8__* %21, i32 1)
  store i64 %85, i64* %24, align 8
  %86 = load i64, i64* %24, align 8
  %87 = load i64, i64* @WJB_KEY, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @Assert(i32 %89)
  %91 = load i32, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %171, label %93

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @VARSIZE_ANY_EXHDR(i32 %102)
  %104 = icmp eq i64 %97, %103
  br i1 %104, label %105, label %171

105:                                              ; preds = %93
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i8* @VARDATA_ANY(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @memcmp(i8* %109, i8* %115, i64 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %171

122:                                              ; preds = %105
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %13, align 4
  %125 = sub nsw i32 %124, 1
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %156

127:                                              ; preds = %122
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* @JB_PATH_INSERT_BEFORE, align 4
  %130 = load i32, i32* @JB_PATH_INSERT_AFTER, align 4
  %131 = or i32 %129, %130
  %132 = and i32 %128, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* @ERROR, align 4
  %136 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %137 = call i32 @errcode(i32 %136)
  %138 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %139 = call i32 @errhint(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %140 = call i32 @ereport(i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %134, %127
  %142 = load i32**, i32*** %10, align 8
  %143 = call i64 @JsonbIteratorNext(i32** %142, %struct.TYPE_8__* %19, i32 1)
  store i64 %143, i64* %24, align 8
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* @JB_PATH_DELETE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = load i32**, i32*** %14, align 8
  %150 = load i64, i64* @WJB_KEY, align 8
  %151 = call i32 @pushJsonbValue(i32** %149, i64 %150, %struct.TYPE_8__* %21)
  %152 = load i32**, i32*** %14, align 8
  %153 = load i32*, i32** %16, align 8
  %154 = call i32 @addJsonbToParseState(i32** %152, i32* %153)
  br label %155

155:                                              ; preds = %148, %141
  store i32 1, i32* %22, align 4
  br label %170

156:                                              ; preds = %122
  %157 = load i32**, i32*** %14, align 8
  %158 = load i64, i64* %24, align 8
  %159 = call i32 @pushJsonbValue(i32** %157, i64 %158, %struct.TYPE_8__* %21)
  %160 = load i32**, i32*** %10, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i32**, i32*** %14, align 8
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  %167 = load i32*, i32** %16, align 8
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @setPath(i32** %160, i32* %161, i32* %162, i32 %163, i32** %164, i32 %166, i32* %167, i32 %168)
  br label %170

170:                                              ; preds = %156, %155
  br label %280

171:                                              ; preds = %105, %93, %83
  %172 = load i32, i32* %18, align 4
  %173 = load i32, i32* @JB_PATH_CREATE_OR_INSERT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %216

176:                                              ; preds = %171
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %216, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %13, align 4
  %182 = sub nsw i32 %181, 1
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %216

184:                                              ; preds = %179
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %17, align 4
  %187 = sub nsw i32 %186, 1
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %216

189:                                              ; preds = %184
  %190 = load i8*, i8** @jbvString, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i8* %190, i8** %191, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load i32, i32* %15, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @VARSIZE_ANY_EXHDR(i32 %196)
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i64 %197, i64* %200, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @VARDATA_ANY(i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  %210 = load i32**, i32*** %14, align 8
  %211 = load i64, i64* @WJB_KEY, align 8
  %212 = call i32 @pushJsonbValue(i32** %210, i64 %211, %struct.TYPE_8__* %25)
  %213 = load i32**, i32*** %14, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = call i32 @addJsonbToParseState(i32** %213, i32* %214)
  br label %216

216:                                              ; preds = %189, %184, %179, %176, %171
  %217 = load i32**, i32*** %14, align 8
  %218 = load i64, i64* %24, align 8
  %219 = call i32 @pushJsonbValue(i32** %217, i64 %218, %struct.TYPE_8__* %21)
  %220 = load i32**, i32*** %10, align 8
  %221 = call i64 @JsonbIteratorNext(i32** %220, %struct.TYPE_8__* %19, i32 0)
  store i64 %221, i64* %24, align 8
  %222 = load i32**, i32*** %14, align 8
  %223 = load i64, i64* %24, align 8
  %224 = load i64, i64* %24, align 8
  %225 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %226 = icmp slt i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %216
  br label %229

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %227
  %230 = phi %struct.TYPE_8__* [ %19, %227 ], [ null, %228 ]
  %231 = call i32 @pushJsonbValue(i32** %222, i64 %223, %struct.TYPE_8__* %230)
  %232 = load i64, i64* %24, align 8
  %233 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %239, label %235

235:                                              ; preds = %229
  %236 = load i64, i64* %24, align 8
  %237 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %279

239:                                              ; preds = %235, %229
  store i32 1, i32* %26, align 4
  br label %240

240:                                              ; preds = %275, %239
  %241 = load i32, i32* %26, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %278

243:                                              ; preds = %240
  %244 = load i32**, i32*** %10, align 8
  %245 = call i64 @JsonbIteratorNext(i32** %244, %struct.TYPE_8__* %19, i32 0)
  store i64 %245, i64* %24, align 8
  %246 = load i64, i64* %24, align 8
  %247 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %243
  %250 = load i64, i64* %24, align 8
  %251 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249, %243
  %254 = load i32, i32* %26, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %26, align 4
  br label %256

256:                                              ; preds = %253, %249
  %257 = load i64, i64* %24, align 8
  %258 = load i64, i64* @WJB_END_ARRAY, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %256
  %261 = load i64, i64* %24, align 8
  %262 = load i64, i64* @WJB_END_OBJECT, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %260, %256
  %265 = load i32, i32* %26, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %26, align 4
  br label %267

267:                                              ; preds = %264, %260
  %268 = load i32**, i32*** %14, align 8
  %269 = load i64, i64* %24, align 8
  %270 = load i64, i64* %24, align 8
  %271 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %272 = icmp slt i64 %270, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  br label %275

274:                                              ; preds = %267
  br label %275

275:                                              ; preds = %274, %273
  %276 = phi %struct.TYPE_8__* [ %19, %273 ], [ null, %274 ]
  %277 = call i32 @pushJsonbValue(i32** %268, i64 %269, %struct.TYPE_8__* %276)
  br label %240

278:                                              ; preds = %240
  br label %279

279:                                              ; preds = %278, %235
  br label %280

280:                                              ; preds = %279, %170
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %20, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %20, align 4
  br label %79

284:                                              ; preds = %79
  ret void
}

declare dso_local i64 @VARSIZE_ANY_EXHDR(i32) #1

declare dso_local i8* @VARDATA_ANY(i32) #1

declare dso_local i32 @pushJsonbValue(i32**, i64, %struct.TYPE_8__*) #1

declare dso_local i32 @addJsonbToParseState(i32**, i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @setPath(i32**, i32*, i32*, i32, i32**, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_setPathArray.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonfuncs.c_setPathArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"path element at position %d is not an integer: \22%s\22\00", align 1
@JB_PATH_CREATE_OR_INSERT = common dso_local global i32 0, align 4
@JB_PATH_INSERT_BEFORE = common dso_local global i32 0, align 4
@JB_PATH_CREATE = common dso_local global i32 0, align 4
@JB_PATH_INSERT_AFTER = common dso_local global i32 0, align 4
@JB_PATH_REPLACE = common dso_local global i32 0, align 4
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@WJB_BEGIN_OBJECT = common dso_local global i64 0, align 8
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@WJB_END_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32*, i32, i32**, i32, i32*, i32, i32)* @setPathArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setPathArray(i32** %0, i32* %1, i32* %2, i32 %3, i32** %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
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
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %78

31:                                               ; preds = %9
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %78, label %38

38:                                               ; preds = %31
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @TextDatumGetCString(i32 %43)
  store i8* %44, i8** %23, align 8
  store i64 0, i64* @errno, align 8
  %45 = load i8*, i8** %23, align 8
  %46 = call i64 @strtol(i8* %45, i8** %25, i32 10)
  store i64 %46, i64* %24, align 8
  %47 = load i64, i64* @errno, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %38
  %50 = load i8*, i8** %25, align 8
  %51 = load i8*, i8** %23, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %25, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %24, align 8
  %60 = load i64, i64* @INT_MAX, align 8
  %61 = icmp sgt i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %24, align 8
  %64 = load i64, i64* @INT_MIN, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62, %58, %53, %49, %38
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i8*, i8** %23, align 8
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %71, i8* %72)
  %74 = call i32 @ereport(i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %66, %62
  %76 = load i64, i64* %24, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %20, align 4
  br label %80

78:                                               ; preds = %31, %9
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %20, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = load i32, i32* %20, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i32, i32* %20, align 4
  %85 = sub nsw i32 0, %84
  %86 = load i32, i32* %17, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, i64* @INT_MIN, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %20, align 4
  br label %95

91:                                               ; preds = %83
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %20, align 4
  br label %95

95:                                               ; preds = %91, %88
  br label %96

96:                                               ; preds = %95, %80
  %97 = load i32, i32* %20, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %103, %99, %96
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* @INT_MIN, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %17, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %13, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %113
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* @JB_PATH_CREATE_OR_INSERT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i32*, i32** %16, align 8
  %125 = icmp ne i32* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @Assert(i32 %126)
  %128 = load i32**, i32*** %14, align 8
  %129 = load i32*, i32** %16, align 8
  %130 = call i32 @addJsonbToParseState(i32** %128, i32* %129)
  store i32 1, i32* %22, align 4
  br label %131

131:                                              ; preds = %123, %118, %113, %110
  store i32 0, i32* %21, align 4
  br label %132

132:                                              ; preds = %281, %131
  %133 = load i32, i32* %21, align 4
  %134 = load i32, i32* %17, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %284

136:                                              ; preds = %132
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %20, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %197

140:                                              ; preds = %136
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %197

144:                                              ; preds = %140
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp eq i32 %145, %147
  br i1 %148, label %149, label %185

149:                                              ; preds = %144
  %150 = load i32**, i32*** %10, align 8
  %151 = call i64 @JsonbIteratorNext(i32** %150, i32* %19, i32 1)
  store i64 %151, i64* %26, align 8
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* @JB_PATH_INSERT_BEFORE, align 4
  %154 = load i32, i32* @JB_PATH_CREATE, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %149
  %159 = load i32**, i32*** %14, align 8
  %160 = load i32*, i32** %16, align 8
  %161 = call i32 @addJsonbToParseState(i32** %159, i32* %160)
  br label %162

162:                                              ; preds = %158, %149
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* @JB_PATH_INSERT_AFTER, align 4
  %165 = load i32, i32* @JB_PATH_INSERT_BEFORE, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i32**, i32*** %14, align 8
  %171 = load i64, i64* %26, align 8
  %172 = call i32 @pushJsonbValue(i32** %170, i64 %171, i32* %19)
  br label %173

173:                                              ; preds = %169, %162
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @JB_PATH_INSERT_AFTER, align 4
  %176 = load i32, i32* @JB_PATH_REPLACE, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32**, i32*** %14, align 8
  %182 = load i32*, i32** %16, align 8
  %183 = call i32 @addJsonbToParseState(i32** %181, i32* %182)
  br label %184

184:                                              ; preds = %180, %173
  store i32 1, i32* %22, align 4
  br label %196

185:                                              ; preds = %144
  %186 = load i32**, i32*** %10, align 8
  %187 = load i32*, i32** %11, align 8
  %188 = load i32*, i32** %12, align 8
  %189 = load i32, i32* %13, align 4
  %190 = load i32**, i32*** %14, align 8
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  %193 = load i32*, i32** %16, align 8
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @setPath(i32** %186, i32* %187, i32* %188, i32 %189, i32** %190, i32 %192, i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %185, %184
  br label %280

197:                                              ; preds = %140, %136
  %198 = load i32**, i32*** %10, align 8
  %199 = call i64 @JsonbIteratorNext(i32** %198, i32* %19, i32 0)
  store i64 %199, i64* %26, align 8
  %200 = load i32**, i32*** %14, align 8
  %201 = load i64, i64* %26, align 8
  %202 = load i64, i64* %26, align 8
  %203 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %207

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %205
  %208 = phi i32* [ %19, %205 ], [ null, %206 ]
  %209 = call i32 @pushJsonbValue(i32** %200, i64 %201, i32* %208)
  %210 = load i64, i64* %26, align 8
  %211 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %207
  %214 = load i64, i64* %26, align 8
  %215 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %257

217:                                              ; preds = %213, %207
  store i32 1, i32* %27, align 4
  br label %218

218:                                              ; preds = %253, %217
  %219 = load i32, i32* %27, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %256

221:                                              ; preds = %218
  %222 = load i32**, i32*** %10, align 8
  %223 = call i64 @JsonbIteratorNext(i32** %222, i32* %19, i32 0)
  store i64 %223, i64* %26, align 8
  %224 = load i64, i64* %26, align 8
  %225 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %231, label %227

227:                                              ; preds = %221
  %228 = load i64, i64* %26, align 8
  %229 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %227, %221
  %232 = load i32, i32* %27, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %27, align 4
  br label %234

234:                                              ; preds = %231, %227
  %235 = load i64, i64* %26, align 8
  %236 = load i64, i64* @WJB_END_ARRAY, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %242, label %238

238:                                              ; preds = %234
  %239 = load i64, i64* %26, align 8
  %240 = load i64, i64* @WJB_END_OBJECT, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %238, %234
  %243 = load i32, i32* %27, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %27, align 4
  br label %245

245:                                              ; preds = %242, %238
  %246 = load i32**, i32*** %14, align 8
  %247 = load i64, i64* %26, align 8
  %248 = load i64, i64* %26, align 8
  %249 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %250 = icmp slt i64 %248, %249
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  br label %253

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %252, %251
  %254 = phi i32* [ %19, %251 ], [ null, %252 ]
  %255 = call i32 @pushJsonbValue(i32** %246, i64 %247, i32* %254)
  br label %218

256:                                              ; preds = %218
  br label %257

257:                                              ; preds = %256, %213
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* @JB_PATH_CREATE_OR_INSERT, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %279

262:                                              ; preds = %257
  %263 = load i32, i32* %22, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %279, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %15, align 4
  %267 = load i32, i32* %13, align 4
  %268 = sub nsw i32 %267, 1
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %270, label %279

270:                                              ; preds = %265
  %271 = load i32, i32* %21, align 4
  %272 = load i32, i32* %17, align 4
  %273 = sub nsw i32 %272, 1
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = load i32**, i32*** %14, align 8
  %277 = load i32*, i32** %16, align 8
  %278 = call i32 @addJsonbToParseState(i32** %276, i32* %277)
  br label %279

279:                                              ; preds = %275, %270, %265, %262, %257
  br label %280

280:                                              ; preds = %279, %196
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %21, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %21, align 4
  br label %132

284:                                              ; preds = %132
  ret void
}

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @addJsonbToParseState(i32**, i32*) #1

declare dso_local i64 @JsonbIteratorNext(i32**, i32*, i32) #1

declare dso_local i32 @pushJsonbValue(i32**, i64, i32*) #1

declare dso_local i32 @setPath(i32**, i32*, i32*, i32, i32**, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

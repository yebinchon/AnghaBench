; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendQueryGuts.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQsendQueryGuts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"function requires at least protocol version 3.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"length must be given for binary parameter\0A\00", align 1
@PGQUERY_EXTENDED = common dso_local global i32 0, align 4
@PGASYNC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i8*, i32, i32*, i8**, i32*, i32*, i32)* @PQsendQueryGuts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PQsendQueryGuts(%struct.TYPE_10__* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i8** %5, i8*** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PG_PROTOCOL_MAJOR(i32 %24)
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %9
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = call i32 @libpq_gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @printfPQExpBuffer(i32* %29, i32 %30)
  store i32 0, i32* %10, align 4
  br label %318

32:                                               ; preds = %9
  %33 = load i8*, i8** %12, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %94

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %37 = call i64 @pqPutMsgStart(i8 signext 80, i32 0, %struct.TYPE_10__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = call i64 @pqPuts(i8* %40, %struct.TYPE_10__* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %12, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %47 = call i64 @pqPuts(i8* %45, %struct.TYPE_10__* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39, %35
  br label %317

50:                                               ; preds = %44
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  %54 = load i32*, i32** %15, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = call i64 @pqPutInt(i32 %57, i32 2, %struct.TYPE_10__* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %317

62:                                               ; preds = %56
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i32*, i32** %15, align 8
  %69 = load i32, i32* %20, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = call i64 @pqPutInt(i32 %72, i32 4, %struct.TYPE_10__* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %317

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %20, align 4
  br label %63

81:                                               ; preds = %63
  br label %88

82:                                               ; preds = %53, %50
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %84 = call i64 @pqPutInt(i32 0, i32 2, %struct.TYPE_10__* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %317

87:                                               ; preds = %82
  br label %88

88:                                               ; preds = %87, %81
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %90 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %317

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %32
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %96 = call i64 @pqPutMsgStart(i8 signext 66, i32 0, %struct.TYPE_10__* %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %100 = call i64 @pqPuts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %13, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %105 = call i64 @pqPuts(i8* %103, %struct.TYPE_10__* %104)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %98, %94
  br label %317

108:                                              ; preds = %102
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %140

111:                                              ; preds = %108
  %112 = load i32*, i32** %18, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %140

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %117 = call i64 @pqPutInt(i32 %115, i32 2, %struct.TYPE_10__* %116)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %317

120:                                              ; preds = %114
  store i32 0, i32* %20, align 4
  br label %121

121:                                              ; preds = %136, %120
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %121
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %20, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %132 = call i64 @pqPutInt(i32 %130, i32 2, %struct.TYPE_10__* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %317

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %20, align 4
  br label %121

139:                                              ; preds = %121
  br label %146

140:                                              ; preds = %111, %108
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %142 = call i64 @pqPutInt(i32 0, i32 2, %struct.TYPE_10__* %141)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %317

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %139
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %149 = call i64 @pqPutInt(i32 %147, i32 2, %struct.TYPE_10__* %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %317

152:                                              ; preds = %146
  store i32 0, i32* %20, align 4
  br label %153

153:                                              ; preds = %223, %152
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %226

157:                                              ; preds = %153
  %158 = load i8**, i8*** %16, align 8
  %159 = icmp ne i8** %158, null
  br i1 %159, label %160, label %216

160:                                              ; preds = %157
  %161 = load i8**, i8*** %16, align 8
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %216

167:                                              ; preds = %160
  %168 = load i32*, i32** %18, align 8
  %169 = icmp ne i32* %168, null
  br i1 %169, label %170, label %192

170:                                              ; preds = %167
  %171 = load i32*, i32** %18, align 8
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load i32*, i32** %17, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load i32*, i32** %17, align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %21, align 4
  br label %191

186:                                              ; preds = %177
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 3
  %189 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %190 = call i32 @printfPQExpBuffer(i32* %188, i32 %189)
  br label %317

191:                                              ; preds = %180
  br label %199

192:                                              ; preds = %170, %167
  %193 = load i8**, i8*** %16, align 8
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @strlen(i8* %197)
  store i32 %198, i32* %21, align 4
  br label %199

199:                                              ; preds = %192, %191
  %200 = load i32, i32* %21, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %202 = call i64 @pqPutInt(i32 %200, i32 4, %struct.TYPE_10__* %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %199
  %205 = load i8**, i8*** %16, align 8
  %206 = load i32, i32* %20, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load i32, i32* %21, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %212 = call i64 @pqPutnchar(i8* %209, i32 %210, %struct.TYPE_10__* %211)
  %213 = icmp slt i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204, %199
  br label %317

215:                                              ; preds = %204
  br label %222

216:                                              ; preds = %160, %157
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %218 = call i64 @pqPutInt(i32 -1, i32 4, %struct.TYPE_10__* %217)
  %219 = icmp slt i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %216
  br label %317

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %215
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %20, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %20, align 4
  br label %153

226:                                              ; preds = %153
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %228 = call i64 @pqPutInt(i32 1, i32 2, %struct.TYPE_10__* %227)
  %229 = icmp slt i64 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* %19, align 4
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %233 = call i64 @pqPutInt(i32 %231, i32 2, %struct.TYPE_10__* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %230, %226
  br label %317

236:                                              ; preds = %230
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %238 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %237)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %317

241:                                              ; preds = %236
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %243 = call i64 @pqPutMsgStart(i8 signext 68, i32 0, %struct.TYPE_10__* %242)
  %244 = icmp slt i64 %243, 0
  br i1 %244, label %257, label %245

245:                                              ; preds = %241
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %247 = call i64 @pqPutc(i8 signext 80, %struct.TYPE_10__* %246)
  %248 = icmp slt i64 %247, 0
  br i1 %248, label %257, label %249

249:                                              ; preds = %245
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %251 = call i64 @pqPuts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %250)
  %252 = icmp slt i64 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %249
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %255 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %254)
  %256 = icmp slt i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253, %249, %245, %241
  br label %317

258:                                              ; preds = %253
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %260 = call i64 @pqPutMsgStart(i8 signext 69, i32 0, %struct.TYPE_10__* %259)
  %261 = icmp slt i64 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %258
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %264 = call i64 @pqPuts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %263)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %274, label %266

266:                                              ; preds = %262
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %268 = call i64 @pqPutInt(i32 0, i32 4, %struct.TYPE_10__* %267)
  %269 = icmp slt i64 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %266
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %272 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %271)
  %273 = icmp slt i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %270, %266, %262, %258
  br label %317

275:                                              ; preds = %270
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %277 = call i64 @pqPutMsgStart(i8 signext 83, i32 0, %struct.TYPE_10__* %276)
  %278 = icmp slt i64 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %281 = call i64 @pqPutMsgEnd(%struct.TYPE_10__* %280)
  %282 = icmp slt i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %279, %275
  br label %317

284:                                              ; preds = %279
  %285 = load i32, i32* @PGQUERY_EXTENDED, align 4
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 8
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %284
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 1
  %295 = load i32*, i32** %294, align 8
  %296 = call i32 @free(i32* %295)
  br label %297

297:                                              ; preds = %292, %284
  %298 = load i8*, i8** %12, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %305

300:                                              ; preds = %297
  %301 = load i8*, i8** %12, align 8
  %302 = call i32* @strdup(i8* %301)
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 1
  store i32* %302, i32** %304, align 8
  br label %308

305:                                              ; preds = %297
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  store i32* null, i32** %307, align 8
  br label %308

308:                                              ; preds = %305, %300
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %310 = call i64 @pqFlush(%struct.TYPE_10__* %309)
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  br label %317

313:                                              ; preds = %308
  %314 = load i32, i32* @PGASYNC_BUSY, align 4
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 0
  store i32 %314, i32* %316, align 8
  store i32 1, i32* %10, align 4
  br label %318

317:                                              ; preds = %312, %283, %274, %257, %240, %235, %220, %214, %186, %151, %144, %134, %119, %107, %92, %86, %76, %61, %49
  store i32 0, i32* %10, align 4
  br label %318

318:                                              ; preds = %317, %313, %27
  %319 = load i32, i32* %10, align 4
  ret i32 %319
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @pqPutMsgStart(i8 signext, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @pqPuts(i8*, %struct.TYPE_10__*) #1

declare dso_local i64 @pqPutInt(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @pqPutMsgEnd(%struct.TYPE_10__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pqPutnchar(i8*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @pqPutc(i8 signext, %struct.TYPE_10__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i64 @pqFlush(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

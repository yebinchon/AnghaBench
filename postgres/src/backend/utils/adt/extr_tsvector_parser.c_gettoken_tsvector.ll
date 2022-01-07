; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_parser.c_gettoken_tsvector.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_parser.c_gettoken_tsvector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i64, i64 }

@WAITWORD = common dso_local global i32 0, align 4
@WAITENDCMPLX = common dso_local global i32 0, align 4
@WAITNEXTCHAR = common dso_local global i32 0, align 4
@WAITENDWORD = common dso_local global i32 0, align 4
@PRSSYNTAXERROR = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"there is no escaped character: \22%s\22\00", align 1
@RESIZEPRSBUF = common dso_local global i32 0, align 4
@RETURN_TOKEN = common dso_local global i32 0, align 4
@INPOSINFO = common dso_local global i32 0, align 4
@WAITCHARCMPLX = common dso_local global i32 0, align 4
@WAITPOSINFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"wrong position info in tsvector: \22%s\22\00", align 1
@WAITPOSDELIM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"unrecognized state in gettoken_tsvector: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gettoken_tsvector(%struct.TYPE_3__* %0, i8** %1, i32* %2, i32** %3, i32* %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* @WAITWORD, align 4
  store i32 %22, i32* %15, align 4
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %6, %359, %639
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @WAITWORD, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %110

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  ret i32 0

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @t_iseq(i8* %43, i8 signext 39)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @WAITENDCMPLX, align 4
  store i32 %47, i32* %15, align 4
  br label %108

48:                                               ; preds = %40, %35
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @t_iseq(i8* %56, i8 signext 92)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @WAITNEXTCHAR, align 4
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* @WAITENDWORD, align 4
  store i32 %61, i32* %13, align 4
  br label %107

62:                                               ; preds = %53, %48
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @ISOPERATOR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @t_iseq(i8* %81, i8 signext 34)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78, %67
  %85 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %106

86:                                               ; preds = %78, %73
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @t_isspace(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %86
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @COPYCHAR(i8* %93, i8* %96)
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @pg_mblen(i8* %100)
  %102 = load i8*, i8** %14, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %14, align 8
  %104 = load i32, i32* @WAITENDWORD, align 4
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %92, %86
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %59
  br label %108

108:                                              ; preds = %107, %46
  br label %109

109:                                              ; preds = %108
  br label %639

110:                                              ; preds = %23
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* @WAITNEXTCHAR, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %149

114:                                              ; preds = %110
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %124 = call i32 @errcode(i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = call i32 @ereport(i32 %122, i32 %128)
  br label %148

130:                                              ; preds = %114
  %131 = load i32, i32* @RESIZEPRSBUF, align 4
  %132 = load i8*, i8** %14, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @COPYCHAR(i8* %132, i8* %135)
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i64 @pg_mblen(i8* %139)
  %141 = load i8*, i8** %14, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 %140
  store i8* %142, i8** %14, align 8
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i32
  %146 = call i32 @Assert(i32 %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %15, align 4
  br label %148

148:                                              ; preds = %130, %121
  br label %638

149:                                              ; preds = %110
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @WAITENDWORD, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %255

153:                                              ; preds = %149
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i64 @t_iseq(i8* %161, i8 signext 92)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %158
  %165 = load i32, i32* @WAITNEXTCHAR, align 4
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* @WAITENDWORD, align 4
  store i32 %166, i32* %13, align 4
  br label %254

167:                                              ; preds = %158, %153
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @t_isspace(i8* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %202, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %202, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @ISOPERATOR(i8* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %185, %180
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %214

196:                                              ; preds = %191
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @t_iseq(i8* %199, i8 signext 34)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %196, %185, %173, %167
  %203 = load i32, i32* @RESIZEPRSBUF, align 4
  %204 = load i8*, i8** %14, align 8
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i8*, i8** %206, align 8
  %208 = icmp eq i8* %204, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %211

211:                                              ; preds = %209, %202
  %212 = load i8*, i8** %14, align 8
  store i8 0, i8* %212, align 1
  %213 = load i32, i32* @RETURN_TOKEN, align 4
  br label %253

214:                                              ; preds = %196, %191
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @t_iseq(i8* %217, i8 signext 58)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %239

220:                                              ; preds = %214
  %221 = load i8*, i8** %14, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = icmp eq i8* %221, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %228

228:                                              ; preds = %226, %220
  %229 = load i8*, i8** %14, align 8
  store i8 0, i8* %229, align 1
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %228
  %235 = load i32, i32* @RETURN_TOKEN, align 4
  br label %238

236:                                              ; preds = %228
  %237 = load i32, i32* @INPOSINFO, align 4
  store i32 %237, i32* %15, align 4
  br label %238

238:                                              ; preds = %236, %234
  br label %252

239:                                              ; preds = %214
  %240 = load i32, i32* @RESIZEPRSBUF, align 4
  %241 = load i8*, i8** %14, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @COPYCHAR(i8* %241, i8* %244)
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = call i64 @pg_mblen(i8* %248)
  %250 = load i8*, i8** %14, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 %249
  store i8* %251, i8** %14, align 8
  br label %252

252:                                              ; preds = %239, %238
  br label %253

253:                                              ; preds = %252, %211
  br label %254

254:                                              ; preds = %253, %164
  br label %637

255:                                              ; preds = %149
  %256 = load i32, i32* %15, align 4
  %257 = load i32, i32* @WAITENDCMPLX, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %311

259:                                              ; preds = %255
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %259
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 1
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @t_iseq(i8* %267, i8 signext 39)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load i32, i32* @WAITCHARCMPLX, align 4
  store i32 %271, i32* %15, align 4
  br label %310

272:                                              ; preds = %264, %259
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %272
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @t_iseq(i8* %280, i8 signext 92)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = load i32, i32* @WAITNEXTCHAR, align 4
  store i32 %284, i32* %15, align 4
  %285 = load i32, i32* @WAITENDCMPLX, align 4
  store i32 %285, i32* %13, align 4
  br label %309

286:                                              ; preds = %277, %272
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %286
  %294 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %308

295:                                              ; preds = %286
  %296 = load i32, i32* @RESIZEPRSBUF, align 4
  %297 = load i8*, i8** %14, align 8
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @COPYCHAR(i8* %297, i8* %300)
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = call i64 @pg_mblen(i8* %304)
  %306 = load i8*, i8** %14, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 %305
  store i8* %307, i8** %14, align 8
  br label %308

308:                                              ; preds = %295, %293
  br label %309

309:                                              ; preds = %308, %283
  br label %310

310:                                              ; preds = %309, %270
  br label %636

311:                                              ; preds = %255
  %312 = load i32, i32* %15, align 4
  %313 = load i32, i32* @WAITCHARCMPLX, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %361

315:                                              ; preds = %311
  %316 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 4
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %340, label %320

320:                                              ; preds = %315
  %321 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 1
  %323 = load i8*, i8** %322, align 8
  %324 = call i64 @t_iseq(i8* %323, i8 signext 39)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %340

326:                                              ; preds = %320
  %327 = load i32, i32* @RESIZEPRSBUF, align 4
  %328 = load i8*, i8** %14, align 8
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 1
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @COPYCHAR(i8* %328, i8* %331)
  %333 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 1
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @pg_mblen(i8* %335)
  %337 = load i8*, i8** %14, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 %336
  store i8* %338, i8** %14, align 8
  %339 = load i32, i32* @WAITENDCMPLX, align 4
  store i32 %339, i32* %15, align 4
  br label %360

340:                                              ; preds = %320, %315
  %341 = load i32, i32* @RESIZEPRSBUF, align 4
  %342 = load i8*, i8** %14, align 8
  store i8 0, i8* %342, align 1
  %343 = load i8*, i8** %14, align 8
  %344 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = icmp eq i8* %343, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %340
  %349 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %350

350:                                              ; preds = %348, %340
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = load i32, i32* @RETURN_TOKEN, align 4
  br label %359

357:                                              ; preds = %350
  %358 = load i32, i32* @WAITPOSINFO, align 4
  store i32 %358, i32* %15, align 4
  br label %359

359:                                              ; preds = %357, %355
  br label %23

360:                                              ; preds = %326
  br label %635

361:                                              ; preds = %311
  %362 = load i32, i32* %15, align 4
  %363 = load i32, i32* @WAITPOSINFO, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %376

365:                                              ; preds = %361
  %366 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %367 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = call i64 @t_iseq(i8* %368, i8 signext 58)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %373

371:                                              ; preds = %365
  %372 = load i32, i32* @INPOSINFO, align 4
  store i32 %372, i32* %15, align 4
  br label %375

373:                                              ; preds = %365
  %374 = load i32, i32* @RETURN_TOKEN, align 4
  br label %375

375:                                              ; preds = %373, %371
  br label %634

376:                                              ; preds = %361
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* @INPOSINFO, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %456

380:                                              ; preds = %376
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 1
  %383 = load i8*, i8** %382, align 8
  %384 = call i64 @t_isdigit(i8* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %453

386:                                              ; preds = %380
  %387 = load i32, i32* %18, align 4
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %396

389:                                              ; preds = %386
  store i32 4, i32* %18, align 4
  %390 = load i32, i32* %18, align 4
  %391 = sext i32 %390 to i64
  %392 = mul i64 4, %391
  %393 = trunc i64 %392 to i32
  %394 = call i64 @palloc(i32 %393)
  %395 = inttoptr i64 %394 to i32*
  store i32* %395, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %412

396:                                              ; preds = %386
  %397 = load i32, i32* %17, align 4
  %398 = add nsw i32 %397, 1
  %399 = load i32, i32* %18, align 4
  %400 = icmp sge i32 %398, %399
  br i1 %400, label %401, label %411

401:                                              ; preds = %396
  %402 = load i32, i32* %18, align 4
  %403 = mul nsw i32 %402, 2
  store i32 %403, i32* %18, align 4
  %404 = load i32*, i32** %16, align 8
  %405 = load i32, i32* %18, align 4
  %406 = sext i32 %405 to i64
  %407 = mul i64 4, %406
  %408 = trunc i64 %407 to i32
  %409 = call i64 @repalloc(i32* %404, i32 %408)
  %410 = inttoptr i64 %409 to i32*
  store i32* %410, i32** %16, align 8
  br label %411

411:                                              ; preds = %401, %396
  br label %412

412:                                              ; preds = %411, %389
  %413 = load i32, i32* %17, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %17, align 4
  %415 = load i32*, i32** %16, align 8
  %416 = load i32, i32* %17, align 4
  %417 = sub nsw i32 %416, 1
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 1
  %423 = load i8*, i8** %422, align 8
  %424 = call i32 @atoi(i8* %423)
  %425 = call i32 @LIMITPOS(i32 %424)
  %426 = call i32 @WEP_SETPOS(i32 %420, i32 %425)
  %427 = load i32*, i32** %16, align 8
  %428 = load i32, i32* %17, align 4
  %429 = sub nsw i32 %428, 1
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  %432 = load i32, i32* %431, align 4
  %433 = call i64 @WEP_GETPOS(i32 %432)
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %444

435:                                              ; preds = %412
  %436 = load i32, i32* @ERROR, align 4
  %437 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %438 = call i32 @errcode(i32 %437)
  %439 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %440 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %441)
  %443 = call i32 @ereport(i32 %436, i32 %442)
  br label %444

444:                                              ; preds = %435, %412
  %445 = load i32*, i32** %16, align 8
  %446 = load i32, i32* %17, align 4
  %447 = sub nsw i32 %446, 1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %445, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @WEP_SETWEIGHT(i32 %450, i32 0)
  %452 = load i32, i32* @WAITPOSDELIM, align 4
  store i32 %452, i32* %15, align 4
  br label %455

453:                                              ; preds = %380
  %454 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %455

455:                                              ; preds = %453, %444
  br label %633

456:                                              ; preds = %376
  %457 = load i32, i32* %15, align 4
  %458 = load i32, i32* @WAITPOSDELIM, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %628

460:                                              ; preds = %456
  %461 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %462 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %461, i32 0, i32 1
  %463 = load i8*, i8** %462, align 8
  %464 = call i64 @t_iseq(i8* %463, i8 signext 44)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %468

466:                                              ; preds = %460
  %467 = load i32, i32* @INPOSINFO, align 4
  store i32 %467, i32* %15, align 4
  br label %627

468:                                              ; preds = %460
  %469 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %469, i32 0, i32 1
  %471 = load i8*, i8** %470, align 8
  %472 = call i64 @t_iseq(i8* %471, i8 signext 97)
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %486, label %474

474:                                              ; preds = %468
  %475 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %476 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %475, i32 0, i32 1
  %477 = load i8*, i8** %476, align 8
  %478 = call i64 @t_iseq(i8* %477, i8 signext 65)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %486, label %480

480:                                              ; preds = %474
  %481 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %482 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %481, i32 0, i32 1
  %483 = load i8*, i8** %482, align 8
  %484 = call i64 @t_iseq(i8* %483, i8 signext 42)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %486, label %505

486:                                              ; preds = %480, %474, %468
  %487 = load i32*, i32** %16, align 8
  %488 = load i32, i32* %17, align 4
  %489 = sub nsw i32 %488, 1
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i32, i32* %487, i64 %490
  %492 = load i32, i32* %491, align 4
  %493 = call i64 @WEP_GETWEIGHT(i32 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %497

495:                                              ; preds = %486
  %496 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %497

497:                                              ; preds = %495, %486
  %498 = load i32*, i32** %16, align 8
  %499 = load i32, i32* %17, align 4
  %500 = sub nsw i32 %499, 1
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @WEP_SETWEIGHT(i32 %503, i32 3)
  br label %626

505:                                              ; preds = %480
  %506 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %507 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %506, i32 0, i32 1
  %508 = load i8*, i8** %507, align 8
  %509 = call i64 @t_iseq(i8* %508, i8 signext 98)
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %517, label %511

511:                                              ; preds = %505
  %512 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %513 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %512, i32 0, i32 1
  %514 = load i8*, i8** %513, align 8
  %515 = call i64 @t_iseq(i8* %514, i8 signext 66)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %536

517:                                              ; preds = %511, %505
  %518 = load i32*, i32** %16, align 8
  %519 = load i32, i32* %17, align 4
  %520 = sub nsw i32 %519, 1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %518, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = call i64 @WEP_GETWEIGHT(i32 %523)
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %517
  %527 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %528

528:                                              ; preds = %526, %517
  %529 = load i32*, i32** %16, align 8
  %530 = load i32, i32* %17, align 4
  %531 = sub nsw i32 %530, 1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %529, i64 %532
  %534 = load i32, i32* %533, align 4
  %535 = call i32 @WEP_SETWEIGHT(i32 %534, i32 2)
  br label %625

536:                                              ; preds = %511
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 1
  %539 = load i8*, i8** %538, align 8
  %540 = call i64 @t_iseq(i8* %539, i8 signext 99)
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %548, label %542

542:                                              ; preds = %536
  %543 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %544 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %543, i32 0, i32 1
  %545 = load i8*, i8** %544, align 8
  %546 = call i64 @t_iseq(i8* %545, i8 signext 67)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %567

548:                                              ; preds = %542, %536
  %549 = load i32*, i32** %16, align 8
  %550 = load i32, i32* %17, align 4
  %551 = sub nsw i32 %550, 1
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %549, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = call i64 @WEP_GETWEIGHT(i32 %554)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %548
  %558 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %559

559:                                              ; preds = %557, %548
  %560 = load i32*, i32** %16, align 8
  %561 = load i32, i32* %17, align 4
  %562 = sub nsw i32 %561, 1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %560, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @WEP_SETWEIGHT(i32 %565, i32 1)
  br label %624

567:                                              ; preds = %542
  %568 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %569 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %568, i32 0, i32 1
  %570 = load i8*, i8** %569, align 8
  %571 = call i64 @t_iseq(i8* %570, i8 signext 100)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %579, label %573

573:                                              ; preds = %567
  %574 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %574, i32 0, i32 1
  %576 = load i8*, i8** %575, align 8
  %577 = call i64 @t_iseq(i8* %576, i8 signext 68)
  %578 = icmp ne i64 %577, 0
  br i1 %578, label %579, label %598

579:                                              ; preds = %573, %567
  %580 = load i32*, i32** %16, align 8
  %581 = load i32, i32* %17, align 4
  %582 = sub nsw i32 %581, 1
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds i32, i32* %580, i64 %583
  %585 = load i32, i32* %584, align 4
  %586 = call i64 @WEP_GETWEIGHT(i32 %585)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %590

588:                                              ; preds = %579
  %589 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %590

590:                                              ; preds = %588, %579
  %591 = load i32*, i32** %16, align 8
  %592 = load i32, i32* %17, align 4
  %593 = sub nsw i32 %592, 1
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %591, i64 %594
  %596 = load i32, i32* %595, align 4
  %597 = call i32 @WEP_SETWEIGHT(i32 %596, i32 0)
  br label %623

598:                                              ; preds = %573
  %599 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %600 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %599, i32 0, i32 1
  %601 = load i8*, i8** %600, align 8
  %602 = call i64 @t_isspace(i8* %601)
  %603 = icmp ne i64 %602, 0
  br i1 %603, label %611, label %604

604:                                              ; preds = %598
  %605 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %606 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %605, i32 0, i32 1
  %607 = load i8*, i8** %606, align 8
  %608 = load i8, i8* %607, align 1
  %609 = sext i8 %608 to i32
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %613

611:                                              ; preds = %604, %598
  %612 = load i32, i32* @RETURN_TOKEN, align 4
  br label %622

613:                                              ; preds = %604
  %614 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %615 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %614, i32 0, i32 1
  %616 = load i8*, i8** %615, align 8
  %617 = call i64 @t_isdigit(i8* %616)
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %621, label %619

619:                                              ; preds = %613
  %620 = load i32, i32* @PRSSYNTAXERROR, align 4
  br label %621

621:                                              ; preds = %619, %613
  br label %622

622:                                              ; preds = %621, %611
  br label %623

623:                                              ; preds = %622, %590
  br label %624

624:                                              ; preds = %623, %559
  br label %625

625:                                              ; preds = %624, %528
  br label %626

626:                                              ; preds = %625, %497
  br label %627

627:                                              ; preds = %626, %466
  br label %632

628:                                              ; preds = %456
  %629 = load i32, i32* @ERROR, align 4
  %630 = load i32, i32* %15, align 4
  %631 = call i32 @elog(i32 %629, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %630)
  br label %632

632:                                              ; preds = %628, %627
  br label %633

633:                                              ; preds = %632, %455
  br label %634

634:                                              ; preds = %633, %375
  br label %635

635:                                              ; preds = %634, %360
  br label %636

636:                                              ; preds = %635, %310
  br label %637

637:                                              ; preds = %636, %254
  br label %638

638:                                              ; preds = %637, %148
  br label %639

639:                                              ; preds = %638, %109
  %640 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %640, i32 0, i32 1
  %642 = load i8*, i8** %641, align 8
  %643 = call i64 @pg_mblen(i8* %642)
  %644 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %645 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %644, i32 0, i32 1
  %646 = load i8*, i8** %645, align 8
  %647 = getelementptr inbounds i8, i8* %646, i64 %643
  store i8* %647, i8** %645, align 8
  br label %23
}

declare dso_local i64 @t_iseq(i8*, i8 signext) #1

declare dso_local i64 @ISOPERATOR(i8*) #1

declare dso_local i64 @t_isspace(i8*) #1

declare dso_local i32 @COPYCHAR(i8*, i8*) #1

declare dso_local i64 @pg_mblen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @t_isdigit(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i64 @repalloc(i32*, i32) #1

declare dso_local i32 @WEP_SETPOS(i32, i32) #1

declare dso_local i32 @LIMITPOS(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @WEP_GETPOS(i32) #1

declare dso_local i32 @WEP_SETWEIGHT(i32, i32) #1

declare dso_local i64 @WEP_GETWEIGHT(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

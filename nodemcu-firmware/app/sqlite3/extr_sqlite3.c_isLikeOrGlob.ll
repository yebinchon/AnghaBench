; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_isLikeOrGlob.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_isLikeOrGlob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i32*, i32* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_21__, i32, %struct.TYPE_19__ }
%struct.TYPE_21__ = type { i8* }
%struct.TYPE_19__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_24__* }

@TK_VARIABLE = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_TEXT = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i32 0, align 4
@TK_STRING = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@SQLITE_AFF_TEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_24__*, %struct.TYPE_24__**, i32*, i32*)* @isLikeOrGlob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLikeOrGlob(%struct.TYPE_22__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__** %2, %struct.TYPE_24__*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %35 = call i32 @sqlite3IsLikeFunction(i32* %31, %struct.TYPE_24__* %32, i32* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %282

38:                                               ; preds = %5
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %41, align 8
  store %struct.TYPE_23__* %42, %struct.TYPE_23__** %15, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i64 1
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %14, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %53, align 8
  %55 = call %struct.TYPE_24__* @sqlite3ExprSkipCollate(%struct.TYPE_24__* %54)
  store %struct.TYPE_24__* %55, %struct.TYPE_24__** %13, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %21, align 4
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* @TK_VARIABLE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %38
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %23, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %24, align 4
  %69 = load i32*, i32** %23, align 8
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %72 = call i32* @sqlite3VdbeGetBoundValue(i32* %69, i32 %70, i32 %71)
  store i32* %72, i32** %20, align 8
  %73 = load i32*, i32** %20, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %84

75:                                               ; preds = %62
  %76 = load i32*, i32** %20, align 8
  %77 = call i64 @sqlite3_value_type(i32* %76)
  %78 = load i64, i64* @SQLITE_TEXT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load i32*, i32** %20, align 8
  %82 = call i64 @sqlite3_value_text(i32* %81)
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %12, align 8
  br label %84

84:                                               ; preds = %80, %75, %62
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %24, align 4
  %89 = call i32 @sqlite3VdbeSetVarmask(i32* %87, i32 %88)
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @TK_VARIABLE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %101, label %95

95:                                               ; preds = %84
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @TK_REGISTER, align 4
  %100 = icmp eq i32 %98, %99
  br label %101

101:                                              ; preds = %95, %84
  %102 = phi i1 [ true, %84 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  br label %115

105:                                              ; preds = %38
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* @TK_STRING, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %12, align 8
  br label %114

114:                                              ; preds = %109, %105
  br label %115

115:                                              ; preds = %114, %101
  %116 = load i8*, i8** %12, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %275

118:                                              ; preds = %115
  %119 = load i8*, i8** %12, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = call i64 @sqlite3Isdigit(i8 signext %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load i8*, i8** %12, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 45
  br i1 %129, label %130, label %152

130:                                              ; preds = %124, %118
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* @TK_COLUMN, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %148, label %137

137:                                              ; preds = %130
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %139 = call i64 @sqlite3ExprAffinity(%struct.TYPE_24__* %138)
  %140 = load i64, i64* @SQLITE_AFF_TEXT, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = call i64 @IsVirtual(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142, %137, %130
  %149 = load i32*, i32** %20, align 8
  %150 = call i32 @sqlite3ValueFree(i32* %149)
  store i32 0, i32* %6, align 4
  br label %282

151:                                              ; preds = %142
  br label %152

152:                                              ; preds = %151, %124
  store i32 0, i32* %17, align 4
  br label %153

153:                                              ; preds = %181, %152
  %154 = load i8*, i8** %12, align 8
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  store i32 %159, i32* %16, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %153
  %162 = load i32, i32* %16, align 4
  %163 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %162, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load i32, i32* %16, align 4
  %169 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 1
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %168, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %167
  %174 = load i32, i32* %16, align 4
  %175 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 2
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %174, %177
  br label %179

179:                                              ; preds = %173, %167, %161, %153
  %180 = phi i1 [ false, %167 ], [ false, %161 ], [ false, %153 ], [ %178, %173 ]
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = load i32, i32* %17, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %17, align 4
  br label %153

184:                                              ; preds = %179
  %185 = load i32, i32* %17, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %273

187:                                              ; preds = %184
  %188 = load i8*, i8** %12, align 8
  %189 = load i32, i32* %17, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 255, %194
  br i1 %195, label %196, label %273

196:                                              ; preds = %187
  %197 = load i32, i32* %16, align 4
  %198 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %197, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %196
  %203 = load i8*, i8** %12, align 8
  %204 = load i32, i32* %17, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %203, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br label %211

211:                                              ; preds = %202, %196
  %212 = phi i1 [ false, %196 ], [ %210, %202 ]
  %213 = zext i1 %212 to i32
  %214 = load i32*, i32** %10, align 8
  store i32 %213, i32* %214, align 4
  %215 = load i32*, i32** %19, align 8
  %216 = load i32, i32* @TK_STRING, align 4
  %217 = load i8*, i8** %12, align 8
  %218 = call %struct.TYPE_24__* @sqlite3Expr(i32* %215, i32 %216, i8* %217)
  store %struct.TYPE_24__* %218, %struct.TYPE_24__** %25, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %220 = icmp ne %struct.TYPE_24__* %219, null
  br i1 %220, label %221, label %229

221:                                              ; preds = %211
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  store i8 0, i8* %228, align 1
  br label %229

229:                                              ; preds = %221, %211
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %231 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  store %struct.TYPE_24__* %230, %struct.TYPE_24__** %231, align 8
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* @TK_VARIABLE, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %272

235:                                              ; preds = %229
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  store i32* %238, i32** %26, align 8
  %239 = load i32*, i32** %26, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @sqlite3VdbeSetVarmask(i32* %239, i32 %242)
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %271

247:                                              ; preds = %235
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 1
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %271

256:                                              ; preds = %247
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %258 = call i32 @sqlite3GetTempReg(%struct.TYPE_22__* %257)
  store i32 %258, i32* %27, align 4
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %261 = load i32, i32* %27, align 4
  %262 = call i32 @sqlite3ExprCodeTarget(%struct.TYPE_22__* %259, %struct.TYPE_24__* %260, i32 %261)
  %263 = load i32*, i32** %26, align 8
  %264 = load i32*, i32** %26, align 8
  %265 = call i64 @sqlite3VdbeCurrentAddr(i32* %264)
  %266 = sub nsw i64 %265, 1
  %267 = call i32 @sqlite3VdbeChangeP3(i32* %263, i64 %266, i32 0)
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %269 = load i32, i32* %27, align 4
  %270 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_22__* %268, i32 %269)
  br label %271

271:                                              ; preds = %256, %247, %235
  br label %272

272:                                              ; preds = %271, %229
  br label %274

273:                                              ; preds = %187, %184
  store i8* null, i8** %12, align 8
  br label %274

274:                                              ; preds = %273, %272
  br label %275

275:                                              ; preds = %274, %115
  %276 = load i8*, i8** %12, align 8
  %277 = icmp ne i8* %276, null
  %278 = zext i1 %277 to i32
  store i32 %278, i32* %22, align 4
  %279 = load i32*, i32** %20, align 8
  %280 = call i32 @sqlite3ValueFree(i32* %279)
  %281 = load i32, i32* %22, align 4
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %275, %148, %37
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @sqlite3IsLikeFunction(i32*, %struct.TYPE_24__*, i32*, i8*) #1

declare dso_local %struct.TYPE_24__* @sqlite3ExprSkipCollate(%struct.TYPE_24__*) #1

declare dso_local i32* @sqlite3VdbeGetBoundValue(i32*, i32, i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3VdbeSetVarmask(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3Isdigit(i8 signext) #1

declare dso_local i64 @sqlite3ExprAffinity(%struct.TYPE_24__*) #1

declare dso_local i64 @IsVirtual(i32) #1

declare dso_local i32 @sqlite3ValueFree(i32*) #1

declare dso_local %struct.TYPE_24__* @sqlite3Expr(i32*, i32, i8*) #1

declare dso_local i32 @sqlite3GetTempReg(%struct.TYPE_22__*) #1

declare dso_local i32 @sqlite3ExprCodeTarget(%struct.TYPE_22__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3VdbeChangeP3(i32*, i64, i32) #1

declare dso_local i64 @sqlite3VdbeCurrentAddr(i32*) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

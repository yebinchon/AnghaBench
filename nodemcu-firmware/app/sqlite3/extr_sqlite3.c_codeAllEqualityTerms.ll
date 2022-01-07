; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_codeAllEqualityTerms.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_codeAllEqualityTerms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, %struct.TYPE_19__*, i32* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_23__**, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64*, i32 }

@WHERE_VIRTUALTABLE = common dso_local global i32 0, align 4
@OP_Last = common dso_local global i32 0, align 4
@OP_Rewind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"begin skip-scan on %s\00", align 1
@OP_Goto = common dso_local global i32 0, align 4
@OP_SeekLT = common dso_local global i32 0, align 4
@OP_SeekGT = common dso_local global i32 0, align 4
@OP_Column = common dso_local global i32 0, align 4
@XN_EXPR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@TERM_CODED = common dso_local global i32 0, align 4
@TERM_VIRTUAL = common dso_local global i32 0, align 4
@OP_SCopy = common dso_local global i32 0, align 4
@WO_IN = common dso_local global i32 0, align 4
@EP_xIsSelect = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i8 0, align 1
@WO_ISNULL = common dso_local global i32 0, align 4
@TERM_IS = common dso_local global i32 0, align 4
@OP_IsNull = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_25__*, i32, i32, i8**)* @codeAllEqualityTerms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codeAllEqualityTerms(%struct.TYPE_26__* %0, %struct.TYPE_25__* %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8** %4, i8*** %10, align 8
  %24 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %16, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @WHERE_VIRTUALTABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %49, align 8
  store %struct.TYPE_27__* %50, %struct.TYPE_27__** %14, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %52 = icmp ne %struct.TYPE_27__* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %18, align 4
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %78 = call i32 @sqlite3IndexAffinityStr(%struct.TYPE_19__* %76, %struct.TYPE_27__* %77)
  %79 = call i8* @sqlite3DbStrDup(%struct.TYPE_19__* %73, i32 %78)
  store i8* %79, i8** %20, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %5
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %82, %5
  %90 = phi i1 [ true, %5 ], [ %88, %82 ]
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i32, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %193

95:                                               ; preds = %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %21, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @OP_Last, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @OP_Rewind, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load i32, i32* %21, align 4
  %109 = call i32 @sqlite3VdbeAddOp1(i32* %99, i32 %107, i32 %108)
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @VdbeCoverageIf(i32* %110, i32 %113)
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @VdbeCoverageIf(i32* %115, i32 %118)
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  %126 = call i32 @VdbeComment(i32* %125)
  %127 = load i32*, i32** %13, align 8
  %128 = load i32, i32* @OP_Goto, align 4
  %129 = call i32 @sqlite3VdbeAddOp0(i32* %127, i32 %128)
  store i32 %129, i32* %17, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %106
  %134 = load i32, i32* @OP_SeekLT, align 4
  br label %137

135:                                              ; preds = %106
  %136 = load i32, i32* @OP_SeekGT, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load i32, i32* %21, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @sqlite3VdbeAddOp4Int(i32* %130, i32 %138, i32 %139, i32 0, i32 %140, i32 %141)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %8, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i32 @VdbeCoverageIf(i32* %145, i32 %148)
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @VdbeCoverageIf(i32* %150, i32 %153)
  %155 = load i32*, i32** %13, align 8
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @sqlite3VdbeJumpHere(i32* %155, i32 %156)
  store i32 0, i32* %17, align 4
  br label %158

158:                                              ; preds = %189, %137
  %159 = load i32, i32* %17, align 4
  %160 = load i32, i32* %12, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %192

162:                                              ; preds = %158
  %163 = load i32*, i32** %13, align 8
  %164 = load i32, i32* @OP_Column, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i32 @sqlite3VdbeAddOp3(i32* %163, i32 %164, i32 %165, i32 %166, i32 %169)
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @XN_EXPR, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @testcase(i32 %180)
  %182 = load i32*, i32** %13, align 8
  %183 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %184 = load i32, i32* %17, align 4
  %185 = call i32 @explainIndexColumnName(%struct.TYPE_27__* %183, i32 %184)
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i32*
  %188 = call i32 @VdbeComment(i32* %187)
  br label %189

189:                                              ; preds = %162
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %17, align 4
  br label %158

192:                                              ; preds = %158
  br label %193

193:                                              ; preds = %192, %89
  %194 = load i8*, i8** %20, align 8
  %195 = icmp eq i8* %194, null
  br i1 %195, label %202, label %196

196:                                              ; preds = %193
  %197 = load i8*, i8** %20, align 8
  %198 = call i64 @strlen(i8* %197)
  %199 = trunc i64 %198 to i32
  %200 = load i32, i32* %11, align 4
  %201 = icmp sge i32 %199, %200
  br label %202

202:                                              ; preds = %196, %193
  %203 = phi i1 [ true, %193 ], [ %201, %196 ]
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load i32, i32* %12, align 4
  store i32 %206, i32* %17, align 4
  br label %207

207:                                              ; preds = %370, %202
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %11, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %373

211:                                              ; preds = %207
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %213, align 8
  %215 = load i32, i32* %17, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %214, i64 %216
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %217, align 8
  store %struct.TYPE_23__* %218, %struct.TYPE_23__** %15, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %220 = icmp ne %struct.TYPE_23__* %219, null
  %221 = zext i1 %220 to i32
  %222 = call i32 @assert(i32 %221)
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @TERM_CODED, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @testcase(i32 %229)
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @TERM_VIRTUAL, align 4
  %235 = and i32 %233, %234
  %236 = call i32 @testcase(i32 %235)
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* %18, align 4
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %242, %243
  %245 = call i32 @codeEqualityTerm(%struct.TYPE_26__* %237, %struct.TYPE_23__* %238, %struct.TYPE_25__* %239, i32 %240, i32 %241, i32 %244)
  store i32 %245, i32* %22, align 4
  %246 = load i32, i32* %22, align 4
  %247 = load i32, i32* %18, align 4
  %248 = load i32, i32* %17, align 4
  %249 = add nsw i32 %247, %248
  %250 = icmp ne i32 %246, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %211
  %252 = load i32, i32* %19, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %259

254:                                              ; preds = %251
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %256 = load i32, i32* %18, align 4
  %257 = call i32 @sqlite3ReleaseTempReg(%struct.TYPE_26__* %255, i32 %256)
  %258 = load i32, i32* %22, align 4
  store i32 %258, i32* %18, align 4
  br label %267

259:                                              ; preds = %251
  %260 = load i32*, i32** %13, align 8
  %261 = load i32, i32* @OP_SCopy, align 4
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %263, %264
  %266 = call i32 @sqlite3VdbeAddOp2(i32* %260, i32 %261, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %259, %254
  br label %268

268:                                              ; preds = %267, %211
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @WO_IN, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %295

275:                                              ; preds = %268
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @EP_xIsSelect, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %294

284:                                              ; preds = %275
  %285 = load i8*, i8** %20, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %293

287:                                              ; preds = %284
  %288 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  %289 = load i8*, i8** %20, align 8
  %290 = load i32, i32* %17, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, i8* %289, i64 %291
  store i8 %288, i8* %292, align 1
  br label %293

293:                                              ; preds = %287, %284
  br label %294

294:                                              ; preds = %293, %275
  br label %369

295:                                              ; preds = %268
  %296 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %297 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @WO_ISNULL, align 4
  %300 = and i32 %298, %299
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %368

302:                                              ; preds = %295
  %303 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  store i32* %307, i32** %23, align 8
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @TERM_IS, align 4
  %312 = and i32 %310, %311
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %330

314:                                              ; preds = %302
  %315 = load i32*, i32** %23, align 8
  %316 = call i64 @sqlite3ExprCanBeNull(i32* %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %330

318:                                              ; preds = %314
  %319 = load i32*, i32** %13, align 8
  %320 = load i32, i32* @OP_IsNull, align 4
  %321 = load i32, i32* %18, align 4
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %321, %322
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @sqlite3VdbeAddOp2(i32* %319, i32 %320, i32 %323, i32 %326)
  %328 = load i32*, i32** %13, align 8
  %329 = call i32 @VdbeCoverage(i32* %328)
  br label %330

330:                                              ; preds = %318, %314, %302
  %331 = load i8*, i8** %20, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %367

333:                                              ; preds = %330
  %334 = load i32*, i32** %23, align 8
  %335 = load i8*, i8** %20, align 8
  %336 = load i32, i32* %17, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = call signext i8 @sqlite3CompareAffinity(i32* %334, i8 signext %339)
  %341 = sext i8 %340 to i32
  %342 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %345, label %351

345:                                              ; preds = %333
  %346 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  %347 = load i8*, i8** %20, align 8
  %348 = load i32, i32* %17, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %347, i64 %349
  store i8 %346, i8* %350, align 1
  br label %351

351:                                              ; preds = %345, %333
  %352 = load i32*, i32** %23, align 8
  %353 = load i8*, i8** %20, align 8
  %354 = load i32, i32* %17, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %353, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = call i64 @sqlite3ExprNeedsNoAffinityChange(i32* %352, i8 signext %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %351
  %361 = load i8, i8* @SQLITE_AFF_BLOB, align 1
  %362 = load i8*, i8** %20, align 8
  %363 = load i32, i32* %17, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i8, i8* %362, i64 %364
  store i8 %361, i8* %365, align 1
  br label %366

366:                                              ; preds = %360, %351
  br label %367

367:                                              ; preds = %366, %330
  br label %368

368:                                              ; preds = %367, %295
  br label %369

369:                                              ; preds = %368, %294
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %17, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %17, align 4
  br label %207

373:                                              ; preds = %207
  %374 = load i8*, i8** %20, align 8
  %375 = load i8**, i8*** %10, align 8
  store i8* %374, i8** %375, align 8
  %376 = load i32, i32* %18, align 4
  ret i32 %376
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3IndexAffinityStr(%struct.TYPE_19__*, %struct.TYPE_27__*) #1

declare dso_local i32 @sqlite3VdbeAddOp1(i32*, i32, i32) #1

declare dso_local i32 @VdbeCoverageIf(i32*, i32) #1

declare dso_local i32 @VdbeComment(i32*) #1

declare dso_local i32 @sqlite3VdbeAddOp0(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp4Int(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3VdbeJumpHere(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp3(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @explainIndexColumnName(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @codeEqualityTerm(%struct.TYPE_26__*, %struct.TYPE_23__*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @sqlite3ReleaseTempReg(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @sqlite3VdbeAddOp2(i32*, i32, i32, i32) #1

declare dso_local i64 @sqlite3ExprCanBeNull(i32*) #1

declare dso_local i32 @VdbeCoverage(i32*) #1

declare dso_local signext i8 @sqlite3CompareAffinity(i32*, i8 signext) #1

declare dso_local i64 @sqlite3ExprNeedsNoAffinityChange(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_valueFromExpr.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_valueFromExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i32, %struct.TYPE_24__, %struct.TYPE_26__* }
%struct.TYPE_24__ = type { i8*, i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { double, i32 }
%struct.ValueNewStat4Ctx = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@TK_UPLUS = common dso_local global i32 0, align 4
@TK_SPAN = common dso_local global i32 0, align 4
@TK_REGISTER = common dso_local global i32 0, align 4
@EP_TokenOnly = common dso_local global i32 0, align 4
@TK_CAST = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@TK_UMINUS = common dso_local global i32 0, align 4
@TK_INTEGER = common dso_local global i32 0, align 4
@TK_FLOAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TK_STRING = common dso_local global i32 0, align 4
@EP_IntValue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@SQLITE_AFF_BLOB = common dso_local global i32 0, align 4
@SQLITE_AFF_NUMERIC = common dso_local global i32 0, align 4
@MEM_IntReal = common dso_local global i32 0, align 4
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_BLOB = common dso_local global i32 0, align 4
@TK_TRUEFALSE = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@TK_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_26__*, i32, i32, %struct.TYPE_25__**, %struct.ValueNewStat4Ctx*)* @valueFromExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valueFromExpr(i32* %0, %struct.TYPE_26__* %1, i32 %2, i32 %3, %struct.TYPE_25__** %4, %struct.ValueNewStat4Ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__**, align 8
  %13 = alloca %struct.ValueNewStat4Ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_25__** %4, %struct.TYPE_25__*** %12, align 8
  store %struct.ValueNewStat4Ctx* %5, %struct.ValueNewStat4Ctx** %13, align 8
  store i8* null, i8** %15, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %16, align 8
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %22 = load i32, i32* @SQLITE_OK, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %24 = icmp ne %struct.TYPE_26__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %39, %6
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* @TK_UPLUS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @TK_SPAN, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i1 [ true, %27 ], [ %36, %33 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %9, align 8
  br label %27

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @TK_REGISTER, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @NEVER(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @EP_TokenOnly, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %63 = icmp eq %struct.ValueNewStat4Ctx* %62, null
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i1 [ true, %54 ], [ %63, %61 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @TK_CAST, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %64
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sqlite3AffinityType(i8* %75, i32 0)
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_26__*, %struct.TYPE_26__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %84 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %85 = call i32 @valueFromExpr(i32* %77, %struct.TYPE_26__* %80, i32 %81, i32 %82, %struct.TYPE_25__** %83, %struct.ValueNewStat4Ctx* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @testcase(i32 %89)
  %91 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %91, align 8
  %93 = icmp ne %struct.TYPE_25__* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %71
  %95 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %95, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @SQLITE_UTF8, align 4
  %99 = call i32 @sqlite3VdbeMemCast(%struct.TYPE_25__* %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SQLITE_UTF8, align 4
  %104 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_25__* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %71
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %7, align 4
  br label %459

107:                                              ; preds = %64
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @TK_UMINUS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TK_INTEGER, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TK_FLOAT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119, %111
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  store %struct.TYPE_26__* %130, %struct.TYPE_26__** %9, align 8
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %14, align 4
  store i32 -1, i32* %17, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %134

134:                                              ; preds = %127, %119, %107
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @TK_STRING, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %146, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @TK_FLOAT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* @TK_INTEGER, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %254

146:                                              ; preds = %142, %138, %134
  %147 = load i32*, i32** %8, align 8
  %148 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %149 = call %struct.TYPE_25__* @valueNew(i32* %147, %struct.ValueNewStat4Ctx* %148)
  store %struct.TYPE_25__* %149, %struct.TYPE_25__** %16, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %151 = icmp eq %struct.TYPE_25__* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %441

153:                                              ; preds = %146
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %155 = load i32, i32* @EP_IntValue, align 4
  %156 = call i64 @ExprHasProperty(%struct.TYPE_26__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* %17, align 4
  %166 = mul nsw i32 %164, %165
  %167 = call i32 @sqlite3VdbeMemSetInt64(%struct.TYPE_25__* %159, i32 %166)
  br label %185

168:                                              ; preds = %153
  %169 = load i32*, i32** %8, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @sqlite3MPrintf(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %170, i8* %174)
  store i8* %175, i8** %15, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %441

179:                                              ; preds = %168
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load i32, i32* @SQLITE_UTF8, align 4
  %183 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %184 = call i32 @sqlite3ValueSetStr(%struct.TYPE_25__* %180, i32 -1, i8* %181, i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %158
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @TK_INTEGER, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* @TK_FLOAT, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %189, %185
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @SQLITE_AFF_BLOB, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %199 = load i32, i32* @SQLITE_AFF_NUMERIC, align 4
  %200 = load i32, i32* @SQLITE_UTF8, align 4
  %201 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_25__* %198, i32 %199, i32 %200)
  br label %207

202:                                              ; preds = %193, %189
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @SQLITE_UTF8, align 4
  %206 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_25__* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MEM_IntReal, align 4
  %212 = and i32 %210, %211
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i32 @assert(i32 %214)
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MEM_Int, align 4
  %220 = load i32, i32* @MEM_IntReal, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @MEM_Real, align 4
  %223 = or i32 %221, %222
  %224 = and i32 %218, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %207
  %227 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %228 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @MEM_Int, align 4
  %231 = and i32 %229, %230
  %232 = call i32 @testcase(i32 %231)
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @MEM_Real, align 4
  %237 = and i32 %235, %236
  %238 = call i32 @testcase(i32 %237)
  %239 = load i32, i32* @MEM_Str, align 4
  %240 = xor i32 %239, -1
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = and i32 %243, %240
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %226, %207
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @SQLITE_UTF8, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_25__* %250, i32 %251)
  store i32 %252, i32* %19, align 4
  br label %253

253:                                              ; preds = %249, %245
  br label %437

254:                                              ; preds = %142
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* @TK_UMINUS, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %323

258:                                              ; preds = %254
  %259 = load i32, i32* @SQLITE_OK, align 4
  %260 = load i32*, i32** %8, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %262, align 8
  %264 = load i32, i32* %10, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %267 = call i32 @valueFromExpr(i32* %260, %struct.TYPE_26__* %263, i32 %264, i32 %265, %struct.TYPE_25__** %16, %struct.ValueNewStat4Ctx* %266)
  %268 = icmp eq i32 %259, %267
  br i1 %268, label %269, label %322

269:                                              ; preds = %258
  %270 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %271 = icmp ne %struct.TYPE_25__* %270, null
  br i1 %271, label %272, label %322

272:                                              ; preds = %269
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %274 = call i32 @sqlite3VdbeMemNumerify(%struct.TYPE_25__* %273)
  %275 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @MEM_Real, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %272
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 0
  %285 = load double, double* %284, align 8
  %286 = fneg double %285
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 0
  store double %286, double* %289, align 8
  br label %317

290:                                              ; preds = %272
  %291 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %292 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @SMALLEST_INT64, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %307

297:                                              ; preds = %290
  %298 = load i32, i32* @SMALLEST_INT64, align 4
  %299 = sitofp i32 %298 to double
  %300 = fneg double %299
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %302, i32 0, i32 0
  store double %300, double* %303, align 8
  %304 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %305 = load i32, i32* @MEM_Real, align 4
  %306 = call i32 @MemSetTypeFlag(%struct.TYPE_25__* %304, i32 %305)
  br label %316

307:                                              ; preds = %290
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %309 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = sub nsw i32 0, %311
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %314 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %314, i32 0, i32 1
  store i32 %312, i32* %315, align 8
  br label %316

316:                                              ; preds = %307, %297
  br label %317

317:                                              ; preds = %316, %281
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* %10, align 4
  %321 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_25__* %318, i32 %319, i32 %320)
  br label %322

322:                                              ; preds = %317, %269, %258
  br label %436

323:                                              ; preds = %254
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* @TK_NULL, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %337

327:                                              ; preds = %323
  %328 = load i32*, i32** %8, align 8
  %329 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %330 = call %struct.TYPE_25__* @valueNew(i32* %328, %struct.ValueNewStat4Ctx* %329)
  store %struct.TYPE_25__* %330, %struct.TYPE_25__** %16, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %332 = icmp eq %struct.TYPE_25__* %331, null
  br i1 %332, label %333, label %334

333:                                              ; preds = %327
  br label %441

334:                                              ; preds = %327
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %336 = call i32 @sqlite3VdbeMemSetNull(%struct.TYPE_25__* %335)
  br label %435

337:                                              ; preds = %323
  %338 = load i32, i32* %14, align 4
  %339 = load i32, i32* @TK_BLOB, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %406

341:                                              ; preds = %337
  %342 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %343 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %342, i32 0, i32 3
  %344 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = getelementptr inbounds i8, i8* %345, i64 0
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = icmp eq i32 %348, 120
  br i1 %349, label %359, label %350

350:                                              ; preds = %341
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 3
  %353 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %352, i32 0, i32 0
  %354 = load i8*, i8** %353, align 8
  %355 = getelementptr inbounds i8, i8* %354, i64 0
  %356 = load i8, i8* %355, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %357, 88
  br label %359

359:                                              ; preds = %350, %341
  %360 = phi i1 [ true, %341 ], [ %358, %350 ]
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %363, i32 0, i32 3
  %365 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 1
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i32
  %370 = icmp eq i32 %369, 39
  %371 = zext i1 %370 to i32
  %372 = call i32 @assert(i32 %371)
  %373 = load i32*, i32** %8, align 8
  %374 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %375 = call %struct.TYPE_25__* @valueNew(i32* %373, %struct.ValueNewStat4Ctx* %374)
  store %struct.TYPE_25__* %375, %struct.TYPE_25__** %16, align 8
  %376 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %377 = icmp ne %struct.TYPE_25__* %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %359
  br label %441

379:                                              ; preds = %359
  %380 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 0
  %383 = load i8*, i8** %382, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 2
  store i8* %384, i8** %15, align 8
  %385 = load i8*, i8** %15, align 8
  %386 = call i32 @sqlite3Strlen30(i8* %385)
  %387 = sub nsw i32 %386, 1
  store i32 %387, i32* %21, align 4
  %388 = load i8*, i8** %15, align 8
  %389 = load i32, i32* %21, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, i8* %388, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 39
  %395 = zext i1 %394 to i32
  %396 = call i32 @assert(i32 %395)
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %398 = load i32*, i32** %8, align 8
  %399 = load i8*, i8** %15, align 8
  %400 = load i32, i32* %21, align 4
  %401 = call i32 @sqlite3HexToBlob(i32* %398, i8* %399, i32 %400)
  %402 = load i32, i32* %21, align 4
  %403 = sdiv i32 %402, 2
  %404 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %405 = call i32 @sqlite3VdbeMemSetStr(%struct.TYPE_25__* %397, i32 %401, i32 %403, i32 0, i32 %404)
  br label %434

406:                                              ; preds = %337
  %407 = load i32, i32* %14, align 4
  %408 = load i32, i32* @TK_TRUEFALSE, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %433

410:                                              ; preds = %406
  %411 = load i32*, i32** %8, align 8
  %412 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %413 = call %struct.TYPE_25__* @valueNew(i32* %411, %struct.ValueNewStat4Ctx* %412)
  store %struct.TYPE_25__* %413, %struct.TYPE_25__** %16, align 8
  %414 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %415 = icmp ne %struct.TYPE_25__* %414, null
  br i1 %415, label %416, label %432

416:                                              ; preds = %410
  %417 = load i32, i32* @MEM_Int, align 4
  %418 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %419 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %418, i32 0, i32 0
  store i32 %417, i32* %419, align 8
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %421, i32 0, i32 0
  %423 = load i8*, i8** %422, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 4
  %425 = load i8, i8* %424, align 1
  %426 = sext i8 %425 to i32
  %427 = icmp eq i32 %426, 0
  %428 = zext i1 %427 to i32
  %429 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %430 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %429, i32 0, i32 1
  %431 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %430, i32 0, i32 1
  store i32 %428, i32* %431, align 8
  br label %432

432:                                              ; preds = %416, %410
  br label %433

433:                                              ; preds = %432, %406
  br label %434

434:                                              ; preds = %433, %379
  br label %435

435:                                              ; preds = %434, %334
  br label %436

436:                                              ; preds = %435, %322
  br label %437

437:                                              ; preds = %436, %253
  %438 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %439 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  store %struct.TYPE_25__* %438, %struct.TYPE_25__** %439, align 8
  %440 = load i32, i32* %19, align 4
  store i32 %440, i32* %7, align 4
  br label %459

441:                                              ; preds = %378, %333, %178, %152
  %442 = load i32*, i32** %8, align 8
  %443 = call i32 @sqlite3OomFault(i32* %442)
  %444 = load i32*, i32** %8, align 8
  %445 = load i8*, i8** %15, align 8
  %446 = call i32 @sqlite3DbFree(i32* %444, i8* %445)
  %447 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %12, align 8
  %448 = load %struct.TYPE_25__*, %struct.TYPE_25__** %447, align 8
  %449 = icmp eq %struct.TYPE_25__* %448, null
  %450 = zext i1 %449 to i32
  %451 = call i32 @assert(i32 %450)
  %452 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %453 = icmp eq %struct.ValueNewStat4Ctx* %452, null
  %454 = zext i1 %453 to i32
  %455 = call i32 @assert(i32 %454)
  %456 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %457 = call i32 @sqlite3ValueFree(%struct.TYPE_25__* %456)
  %458 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %458, i32* %7, align 4
  br label %459

459:                                              ; preds = %441, %437, %105
  %460 = load i32, i32* %7, align 4
  ret i32 %460
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3AffinityType(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeMemCast(%struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @sqlite3ValueApplyAffinity(%struct.TYPE_25__*, i32, i32) #1

declare dso_local %struct.TYPE_25__* @valueNew(i32*, %struct.ValueNewStat4Ctx*) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemSetInt64(%struct.TYPE_25__*, i32) #1

declare dso_local i8* @sqlite3MPrintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3ValueSetStr(%struct.TYPE_25__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemNumerify(%struct.TYPE_25__*) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemSetNull(%struct.TYPE_25__*) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3VdbeMemSetStr(%struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3HexToBlob(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3OomFault(i32*) #1

declare dso_local i32 @sqlite3DbFree(i32*, i8*) #1

declare dso_local i32 @sqlite3ValueFree(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_valueFromExpr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_valueFromExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i8*, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { double, i64 }
%struct.ValueNewStat4Ctx = type { i32 }

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
@MEM_Int = common dso_local global i32 0, align 4
@MEM_Real = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SMALLEST_INT64 = common dso_local global i64 0, align 8
@TK_NULL = common dso_local global i32 0, align 4
@TK_BLOB = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@TK_FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_25__*, i32, i32, %struct.TYPE_24__**, %struct.ValueNewStat4Ctx*)* @valueFromExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valueFromExpr(i32* %0, %struct.TYPE_25__* %1, i32 %2, i32 %3, %struct.TYPE_24__** %4, %struct.ValueNewStat4Ctx* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__**, align 8
  %13 = alloca %struct.ValueNewStat4Ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_24__** %4, %struct.TYPE_24__*** %12, align 8
  store %struct.ValueNewStat4Ctx* %5, %struct.ValueNewStat4Ctx** %13, align 8
  store i8* null, i8** %15, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %16, align 8
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %22 = load i32, i32* @SQLITE_OK, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %24 = icmp ne %struct.TYPE_25__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %39, %6
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
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
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %41, align 8
  store %struct.TYPE_25__* %42, %struct.TYPE_25__** %9, align 8
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
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 2
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
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @sqlite3AffinityType(i8* %75, i32 0)
  store i32 %76, i32* %20, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %84 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %85 = call i32 @valueFromExpr(i32* %77, %struct.TYPE_25__* %80, i32 %81, i32 %82, %struct.TYPE_24__** %83, %struct.ValueNewStat4Ctx* %84)
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @SQLITE_OK, align 4
  %88 = icmp ne i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 @testcase(i32 %89)
  %91 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %91, align 8
  %93 = icmp ne %struct.TYPE_24__* %92, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %71
  %95 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %95, align 8
  %97 = load i32, i32* %20, align 4
  %98 = load i32, i32* @SQLITE_UTF8, align 4
  %99 = call i32 @sqlite3VdbeMemCast(%struct.TYPE_24__* %96, i32 %97, i32 %98)
  %100 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @SQLITE_UTF8, align 4
  %104 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %71
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %7, align 4
  br label %408

107:                                              ; preds = %64
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @TK_UMINUS, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %107
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 4
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TK_INTEGER, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %111
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TK_FLOAT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %119, %111
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %9, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
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
  br i1 %145, label %146, label %232

146:                                              ; preds = %142, %138, %134
  %147 = load i32*, i32** %8, align 8
  %148 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %149 = call %struct.TYPE_24__* @valueNew(i32* %147, %struct.ValueNewStat4Ctx* %148)
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %16, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %151 = icmp eq %struct.TYPE_24__* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %390

153:                                              ; preds = %146
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %155 = load i32, i32* @EP_IntValue, align 4
  %156 = call i64 @ExprHasProperty(%struct.TYPE_25__* %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i32, i32* %17, align 4
  %166 = mul nsw i32 %164, %165
  %167 = call i32 @sqlite3VdbeMemSetInt64(%struct.TYPE_24__* %159, i32 %166)
  br label %185

168:                                              ; preds = %153
  %169 = load i32*, i32** %8, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @sqlite3MPrintf(i32* %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %170, i8* %174)
  store i8* %175, i8** %15, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %168
  br label %390

179:                                              ; preds = %168
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = load i32, i32* @SQLITE_UTF8, align 4
  %183 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %184 = call i32 @sqlite3ValueSetStr(%struct.TYPE_24__* %180, i32 -1, i8* %181, i32 %182, i32 %183)
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
  %198 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %199 = load i32, i32* @SQLITE_AFF_NUMERIC, align 4
  %200 = load i32, i32* @SQLITE_UTF8, align 4
  %201 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %198, i32 %199, i32 %200)
  br label %207

202:                                              ; preds = %193, %189
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @SQLITE_UTF8, align 4
  %206 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %197
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MEM_Int, align 4
  %212 = load i32, i32* @MEM_Real, align 4
  %213 = or i32 %211, %212
  %214 = and i32 %210, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %207
  %217 = load i32, i32* @MEM_Str, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %216, %207
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @SQLITE_UTF8, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_24__* %228, i32 %229)
  store i32 %230, i32* %19, align 4
  br label %231

231:                                              ; preds = %227, %223
  br label %386

232:                                              ; preds = %142
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* @TK_UMINUS, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %300

236:                                              ; preds = %232
  %237 = load i32, i32* @SQLITE_OK, align 4
  %238 = load i32*, i32** %8, align 8
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @sqlite3ValueFromExpr(i32* %238, %struct.TYPE_25__* %241, i32 %242, i32 %243, %struct.TYPE_24__** %16)
  %245 = icmp eq i32 %237, %244
  br i1 %245, label %246, label %299

246:                                              ; preds = %236
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %248 = icmp ne %struct.TYPE_24__* %247, null
  br i1 %248, label %249, label %299

249:                                              ; preds = %246
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %251 = call i32 @sqlite3VdbeMemNumerify(%struct.TYPE_24__* %250)
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* @MEM_Real, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %267

258:                                              ; preds = %249
  %259 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %260 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 0
  %262 = load double, double* %261, align 8
  %263 = fneg double %262
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 0
  store double %263, double* %266, align 8
  br label %294

267:                                              ; preds = %249
  %268 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %269 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @SMALLEST_INT64, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %284

274:                                              ; preds = %267
  %275 = load i64, i64* @SMALLEST_INT64, align 8
  %276 = sitofp i64 %275 to double
  %277 = fneg double %276
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %279 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  store double %277, double* %280, align 8
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %282 = load i32, i32* @MEM_Real, align 4
  %283 = call i32 @MemSetTypeFlag(%struct.TYPE_24__* %281, i32 %282)
  br label %293

284:                                              ; preds = %267
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = sub nsw i64 0, %288
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 1
  store i64 %289, i64* %292, align 8
  br label %293

293:                                              ; preds = %284, %274
  br label %294

294:                                              ; preds = %293, %258
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__* %295, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %294, %246, %236
  br label %385

300:                                              ; preds = %232
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* @TK_NULL, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %314

304:                                              ; preds = %300
  %305 = load i32*, i32** %8, align 8
  %306 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %307 = call %struct.TYPE_24__* @valueNew(i32* %305, %struct.ValueNewStat4Ctx* %306)
  store %struct.TYPE_24__* %307, %struct.TYPE_24__** %16, align 8
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %309 = icmp eq %struct.TYPE_24__* %308, null
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  br label %390

311:                                              ; preds = %304
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %313 = call i32 @sqlite3VdbeMemNumerify(%struct.TYPE_24__* %312)
  br label %384

314:                                              ; preds = %300
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* @TK_BLOB, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %383

318:                                              ; preds = %314
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 0
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 120
  br i1 %326, label %336, label %327

327:                                              ; preds = %318
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 0
  %333 = load i8, i8* %332, align 1
  %334 = sext i8 %333 to i32
  %335 = icmp eq i32 %334, 88
  br label %336

336:                                              ; preds = %327, %318
  %337 = phi i1 [ true, %318 ], [ %335, %327 ]
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 0
  %343 = load i8*, i8** %342, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = load i8, i8* %344, align 1
  %346 = sext i8 %345 to i32
  %347 = icmp eq i32 %346, 39
  %348 = zext i1 %347 to i32
  %349 = call i32 @assert(i32 %348)
  %350 = load i32*, i32** %8, align 8
  %351 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %352 = call %struct.TYPE_24__* @valueNew(i32* %350, %struct.ValueNewStat4Ctx* %351)
  store %struct.TYPE_24__* %352, %struct.TYPE_24__** %16, align 8
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %354 = icmp ne %struct.TYPE_24__* %353, null
  br i1 %354, label %356, label %355

355:                                              ; preds = %336
  br label %390

356:                                              ; preds = %336
  %357 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %358 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 2
  store i8* %361, i8** %15, align 8
  %362 = load i8*, i8** %15, align 8
  %363 = call i32 @sqlite3Strlen30(i8* %362)
  %364 = sub nsw i32 %363, 1
  store i32 %364, i32* %21, align 4
  %365 = load i8*, i8** %15, align 8
  %366 = load i32, i32* %21, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp eq i32 %370, 39
  %372 = zext i1 %371 to i32
  %373 = call i32 @assert(i32 %372)
  %374 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %375 = load i32*, i32** %8, align 8
  %376 = load i8*, i8** %15, align 8
  %377 = load i32, i32* %21, align 4
  %378 = call i32 @sqlite3HexToBlob(i32* %375, i8* %376, i32 %377)
  %379 = load i32, i32* %21, align 4
  %380 = sdiv i32 %379, 2
  %381 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %382 = call i32 @sqlite3VdbeMemSetStr(%struct.TYPE_24__* %374, i32 %378, i32 %380, i32 0, i32 %381)
  br label %383

383:                                              ; preds = %356, %314
  br label %384

384:                                              ; preds = %383, %311
  br label %385

385:                                              ; preds = %384, %299
  br label %386

386:                                              ; preds = %385, %231
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %388 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  store %struct.TYPE_24__* %387, %struct.TYPE_24__** %388, align 8
  %389 = load i32, i32* %19, align 4
  store i32 %389, i32* %7, align 4
  br label %408

390:                                              ; preds = %355, %310, %178, %152
  %391 = load i32*, i32** %8, align 8
  %392 = call i32 @sqlite3OomFault(i32* %391)
  %393 = load i32*, i32** %8, align 8
  %394 = load i8*, i8** %15, align 8
  %395 = call i32 @sqlite3DbFree(i32* %393, i8* %394)
  %396 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %12, align 8
  %397 = load %struct.TYPE_24__*, %struct.TYPE_24__** %396, align 8
  %398 = icmp eq %struct.TYPE_24__* %397, null
  %399 = zext i1 %398 to i32
  %400 = call i32 @assert(i32 %399)
  %401 = load %struct.ValueNewStat4Ctx*, %struct.ValueNewStat4Ctx** %13, align 8
  %402 = icmp eq %struct.ValueNewStat4Ctx* %401, null
  %403 = zext i1 %402 to i32
  %404 = call i32 @assert(i32 %403)
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %406 = call i32 @sqlite3ValueFree(%struct.TYPE_24__* %405)
  %407 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %407, i32* %7, align 4
  br label %408

408:                                              ; preds = %390, %386, %105
  %409 = load i32, i32* %7, align 4
  ret i32 %409
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3AffinityType(i8*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3VdbeMemCast(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @sqlite3ValueApplyAffinity(%struct.TYPE_24__*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @valueNew(i32*, %struct.ValueNewStat4Ctx*) #1

declare dso_local i64 @ExprHasProperty(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @sqlite3VdbeMemSetInt64(%struct.TYPE_24__*, i32) #1

declare dso_local i8* @sqlite3MPrintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sqlite3ValueSetStr(%struct.TYPE_24__*, i32, i8*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeChangeEncoding(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3ValueFromExpr(i32*, %struct.TYPE_25__*, i32, i32, %struct.TYPE_24__**) #1

declare dso_local i32 @sqlite3VdbeMemNumerify(%struct.TYPE_24__*) #1

declare dso_local i32 @MemSetTypeFlag(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3VdbeMemSetStr(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @sqlite3HexToBlob(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3OomFault(i32*) #1

declare dso_local i32 @sqlite3DbFree(i32*, i8*) #1

declare dso_local i32 @sqlite3ValueFree(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

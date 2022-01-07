; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_build_tuplestore_recursively.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_build_tuplestore_recursively.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i8* }

@INT32_STRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"SELECT %s, %s FROM %s WHERE %s = %s AND %s IS NOT NULL AND %s <> %s\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"SELECT %s, %s FROM %s WHERE %s = %s AND %s IS NOT NULL AND %s <> %s ORDER BY %s\00", align 1
@CONNECTBY_NCOLS = common dso_local global i32 0, align 4
@CONNECTBY_NCOLS_NOBRANCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_RECURSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"infinite recursion detected\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32*, i32, i32, i32, i32, %struct.TYPE_13__*, i32*)* @build_tuplestore_recursively to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_tuplestore_recursively(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32* %8, i32 %9, i32 %10, i32 %11, i32 %12, %struct.TYPE_13__* %13, i32* %14) #0 {
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_13__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_11__, align 8
  %36 = alloca i8**, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca %struct.TYPE_12__*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i64, align 8
  %49 = alloca %struct.TYPE_11__, align 8
  %50 = alloca %struct.TYPE_11__, align 8
  %51 = alloca %struct.TYPE_11__, align 8
  store i8* %0, i8** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32* %8, i32** %24, align 8
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %29, align 8
  store i32* %14, i32** %30, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %31, align 4
  %55 = load i32, i32* @INT32_STRLEN, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %39, align 8
  %58 = alloca i8, i64 %56, align 16
  store i64 %56, i64* %40, align 8
  %59 = load i32, i32* @INT32_STRLEN, align 4
  %60 = zext i32 %59 to i64
  %61 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %41, align 8
  %62 = load i32, i32* %25, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %15
  %65 = load i32, i32* %23, align 4
  %66 = load i32, i32* %25, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %44, align 4
  br label %320

69:                                               ; preds = %64, %15
  %70 = call i32 @initStringInfo(%struct.TYPE_11__* %35)
  %71 = load i32, i32* %27, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %16, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = load i8*, i8** %18, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load i8*, i8** %21, align 8
  %79 = call i32 @quote_literal_cstr(i8* %78)
  %80 = load i8*, i8** %16, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load i8*, i8** %17, align 8
  %83 = call i32 (%struct.TYPE_11__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i8* %74, i8* %75, i8* %76, i8* %77, i32 %79, i8* %80, i8* %81, i8* %82)
  store i32 0, i32* %34, align 4
  br label %96

84:                                               ; preds = %69
  %85 = load i8*, i8** %16, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i8*, i8** %18, align 8
  %88 = load i8*, i8** %17, align 8
  %89 = load i8*, i8** %21, align 8
  %90 = call i32 @quote_literal_cstr(i8* %89)
  %91 = load i8*, i8** %16, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = call i32 (%struct.TYPE_11__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_11__* %35, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8* %85, i8* %86, i8* %87, i8* %88, i32 %90, i8* %91, i8* %92, i8* %93, i8* %94)
  store i32 1, i32* %34, align 4
  br label %96

96:                                               ; preds = %84, %73
  %97 = load i32, i32* %26, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* @CONNECTBY_NCOLS, align 4
  %101 = load i32, i32* %34, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 8
  %105 = trunc i64 %104 to i32
  %106 = call i64 @palloc(i32 %105)
  %107 = inttoptr i64 %106 to i8**
  store i8** %107, i8*** %36, align 8
  br label %117

108:                                              ; preds = %96
  %109 = load i32, i32* @CONNECTBY_NCOLS_NOBRANCH, align 4
  %110 = load i32, i32* %34, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = call i64 @palloc(i32 %114)
  %116 = inttoptr i64 %115 to i8**
  store i8** %116, i8*** %36, align 8
  br label %117

117:                                              ; preds = %108, %99
  %118 = load i32, i32* %23, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %117
  %121 = load i8*, i8** %21, align 8
  %122 = load i8**, i8*** %36, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  store i8* %121, i8** %123, align 8
  %124 = load i8**, i8*** %36, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 1
  store i8* null, i8** %125, align 8
  %126 = load i32, i32* %23, align 4
  %127 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i8**, i8*** %36, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 2
  store i8* %58, i8** %129, align 8
  %130 = load i32, i32* %26, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = load i8*, i8** %21, align 8
  %134 = load i8**, i8*** %36, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 3
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %132, %120
  %137 = load i32, i32* %27, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load i32*, i32** %24, align 8
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %144 = load i32, i32* %26, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i8**, i8*** %36, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 4
  store i8* %61, i8** %148, align 8
  br label %152

149:                                              ; preds = %139
  %150 = load i8**, i8*** %36, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 3
  store i8* %61, i8** %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  br label %153

153:                                              ; preds = %152, %136
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %155 = load i8**, i8*** %36, align 8
  %156 = call i32 @BuildTupleFromCStrings(%struct.TYPE_13__* %154, i8** %155)
  store i32 %156, i32* %43, align 4
  %157 = load i32*, i32** %30, align 8
  %158 = load i32, i32* %43, align 4
  %159 = call i32 @tuplestore_puttuple(i32* %157, i32 %158)
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %23, align 4
  br label %162

162:                                              ; preds = %153, %117
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @SPI_execute(i8* %164, i32 1, i32 0)
  store i32 %165, i32* %32, align 4
  %166 = load i64, i64* @SPI_processed, align 8
  store i64 %166, i64* %33, align 8
  %167 = load i32, i32* %32, align 4
  %168 = load i32, i32* @SPI_OK_SELECT, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %319

170:                                              ; preds = %162
  %171 = load i64, i64* %33, align 8
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %319

173:                                              ; preds = %170
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SPI_tuptable, align 8
  store %struct.TYPE_12__* %174, %struct.TYPE_12__** %46, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %47, align 4
  %178 = load i32, i32* %31, align 4
  %179 = load i32, i32* %47, align 4
  %180 = call i32 @compatConnectbyTupleDescs(i32 %178, i32 %179)
  %181 = call i32 @initStringInfo(%struct.TYPE_11__* %49)
  %182 = call i32 @initStringInfo(%struct.TYPE_11__* %50)
  %183 = call i32 @initStringInfo(%struct.TYPE_11__* %51)
  store i64 0, i64* %48, align 8
  br label %184

184:                                              ; preds = %306, %173
  %185 = load i64, i64* %48, align 8
  %186 = load i64, i64* %33, align 8
  %187 = icmp slt i64 %185, %186
  br i1 %187, label %188, label %309

188:                                              ; preds = %184
  %189 = load i8*, i8** %22, align 8
  %190 = call i32 @appendStringInfoString(%struct.TYPE_11__* %49, i8* %189)
  %191 = load i8*, i8** %20, align 8
  %192 = load i8*, i8** %22, align 8
  %193 = load i8*, i8** %20, align 8
  %194 = call i32 (%struct.TYPE_11__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %191, i8* %192, i8* %193)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* %48, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %45, align 4
  %201 = load i32, i32* %45, align 4
  %202 = load i32, i32* %47, align 4
  %203 = call i8* @SPI_getvalue(i32 %201, i32 %202, i32 1)
  store i8* %203, i8** %37, align 8
  %204 = load i32, i32* %45, align 4
  %205 = load i32, i32* %47, align 4
  %206 = call i8* @SPI_getvalue(i32 %204, i32 %205, i32 2)
  store i8* %206, i8** %38, align 8
  %207 = load i32, i32* %23, align 4
  %208 = call i32 @sprintf(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %207)
  %209 = load i8*, i8** %37, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %229

211:                                              ; preds = %188
  %212 = load i8*, i8** %20, align 8
  %213 = load i8*, i8** %37, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = call i32 (%struct.TYPE_11__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_11__* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %212, i8* %213, i8* %214)
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = call i64 @strstr(i8* %217, i8* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %211
  %223 = load i32, i32* @ERROR, align 4
  %224 = load i32, i32* @ERRCODE_INVALID_RECURSION, align 4
  %225 = call i32 @errcode(i32 %224)
  %226 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %227 = call i32 @ereport(i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %222, %211
  br label %229

229:                                              ; preds = %228, %188
  %230 = load i8*, i8** %37, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i8*, i8** %20, align 8
  %234 = load i8*, i8** %37, align 8
  %235 = call i32 (%struct.TYPE_11__*, i8*, i8*, i8*, ...) @appendStringInfo(%struct.TYPE_11__* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %232, %229
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  store i8* %238, i8** %42, align 8
  %239 = load i8*, i8** %37, align 8
  %240 = load i8**, i8*** %36, align 8
  %241 = getelementptr inbounds i8*, i8** %240, i64 0
  store i8* %239, i8** %241, align 8
  %242 = load i8*, i8** %38, align 8
  %243 = load i8**, i8*** %36, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 1
  store i8* %242, i8** %244, align 8
  %245 = load i8**, i8*** %36, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 2
  store i8* %58, i8** %246, align 8
  %247 = load i32, i32* %26, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %236
  %250 = load i8*, i8** %42, align 8
  %251 = load i8**, i8*** %36, align 8
  %252 = getelementptr inbounds i8*, i8** %251, i64 3
  store i8* %250, i8** %252, align 8
  br label %253

253:                                              ; preds = %249, %236
  %254 = load i32, i32* %27, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %253
  %257 = load i32*, i32** %24, align 8
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  %260 = call i32 @sprintf(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %258)
  %261 = load i32, i32* %26, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %256
  %264 = load i8**, i8*** %36, align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 4
  store i8* %61, i8** %265, align 8
  br label %269

266:                                              ; preds = %256
  %267 = load i8**, i8*** %36, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 3
  store i8* %61, i8** %268, align 8
  br label %269

269:                                              ; preds = %266, %263
  br label %270

270:                                              ; preds = %269, %253
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %272 = load i8**, i8*** %36, align 8
  %273 = call i32 @BuildTupleFromCStrings(%struct.TYPE_13__* %271, i8** %272)
  store i32 %273, i32* %43, align 4
  %274 = load i32*, i32** %30, align 8
  %275 = load i32, i32* %43, align 4
  %276 = call i32 @tuplestore_puttuple(i32* %274, i32 %275)
  %277 = load i32, i32* %43, align 4
  %278 = call i32 @heap_freetuple(i32 %277)
  %279 = load i8*, i8** %37, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %298

281:                                              ; preds = %270
  %282 = load i8*, i8** %16, align 8
  %283 = load i8*, i8** %17, align 8
  %284 = load i8*, i8** %18, align 8
  %285 = load i8*, i8** %19, align 8
  %286 = load i8*, i8** %20, align 8
  %287 = load i8*, i8** %37, align 8
  %288 = load i8*, i8** %42, align 8
  %289 = load i32, i32* %23, align 4
  %290 = add nsw i32 %289, 1
  %291 = load i32*, i32** %24, align 8
  %292 = load i32, i32* %25, align 4
  %293 = load i32, i32* %26, align 4
  %294 = load i32, i32* %27, align 4
  %295 = load i32, i32* %28, align 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %297 = load i32*, i32** %30, align 8
  call void @build_tuplestore_recursively(i8* %282, i8* %283, i8* %284, i8* %285, i8* %286, i8* %287, i8* %288, i32 %290, i32* %291, i32 %292, i32 %293, i32 %294, i32 %295, %struct.TYPE_13__* %296, i32* %297)
  br label %298

298:                                              ; preds = %281, %270
  %299 = load i8*, i8** %37, align 8
  %300 = call i32 @xpfree(i8* %299)
  %301 = load i8*, i8** %38, align 8
  %302 = call i32 @xpfree(i8* %301)
  %303 = call i32 @resetStringInfo(%struct.TYPE_11__* %49)
  %304 = call i32 @resetStringInfo(%struct.TYPE_11__* %50)
  %305 = call i32 @resetStringInfo(%struct.TYPE_11__* %51)
  br label %306

306:                                              ; preds = %298
  %307 = load i64, i64* %48, align 8
  %308 = add nsw i64 %307, 1
  store i64 %308, i64* %48, align 8
  br label %184

309:                                              ; preds = %184
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @xpfree(i8* %311)
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @xpfree(i8* %314)
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = call i32 @xpfree(i8* %317)
  br label %319

319:                                              ; preds = %309, %170, %162
  store i32 0, i32* %44, align 4
  br label %320

320:                                              ; preds = %319, %68
  %321 = load i8*, i8** %39, align 8
  call void @llvm.stackrestore(i8* %321)
  %322 = load i32, i32* %44, align 4
  switch i32 %322, label %324 [
    i32 0, label %323
    i32 1, label %323
  ]

323:                                              ; preds = %320, %320
  ret void

324:                                              ; preds = %320
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @initStringInfo(%struct.TYPE_11__*) #2

declare dso_local i32 @appendStringInfo(%struct.TYPE_11__*, i8*, i8*, i8*, ...) #2

declare dso_local i32 @quote_literal_cstr(i8*) #2

declare dso_local i64 @palloc(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @BuildTupleFromCStrings(%struct.TYPE_13__*, i8**) #2

declare dso_local i32 @tuplestore_puttuple(i32*, i32) #2

declare dso_local i32 @SPI_execute(i8*, i32, i32) #2

declare dso_local i32 @compatConnectbyTupleDescs(i32, i32) #2

declare dso_local i32 @appendStringInfoString(%struct.TYPE_11__*, i8*) #2

declare dso_local i8* @SPI_getvalue(i32, i32, i32) #2

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @heap_freetuple(i32) #2

declare dso_local i32 @xpfree(i8*) #2

declare dso_local i32 @resetStringInfo(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

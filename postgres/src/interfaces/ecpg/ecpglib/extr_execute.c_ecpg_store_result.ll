; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_store_result.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_store_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i32, i32, i32 }
%struct.variable = type { i32, i32, i32, i8*, i32, i32, i64, i8*, i32, i32, i32*, i64 }

@ECPG_ARRAY_ERROR = common dso_local global i32 0, align 4
@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_ARRAY_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [91 x i8] c"ecpg_store_result on line %d: incorrect number of matches; %d don't fit into array of %ld\0A\00", align 1
@ECPG_INFORMIX_SUBSELECT_NOT_ONE = common dso_local global i32 0, align 4
@ECPG_TOO_MANY_MATCHES = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_CARDINALITY_VIOLATION = common dso_local global i32 0, align 4
@ECPG_NO_ARRAY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_DATATYPE_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"ecpg_store_result on line %d: allocating memory for %d tuples\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_store_result(i32* %0, i32 %1, %struct.statement* %2, %struct.variable* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.statement*, align 8
  %9 = alloca %struct.variable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.statement* %2, %struct.statement** %8, align 8
  store %struct.variable* %3, %struct.variable** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @PQntuples(i32* %20)
  store i32 %21, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @PQftype(i32* %22, i32 %23)
  %25 = load %struct.statement*, %struct.statement** %8, align 8
  %26 = load %struct.variable*, %struct.variable** %9, align 8
  %27 = call i32 @ecpg_is_type_an_array(i32 %24, %struct.statement* %25, %struct.variable* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @ECPG_ARRAY_ERROR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.statement*, %struct.statement** %8, align 8
  %32 = getelementptr inbounds %struct.statement, %struct.statement* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %35 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %36 = call i32 @ecpg_raise(i32 %33, i32 %34, i32 %35, i32* null)
  store i32 0, i32* %5, align 4
  br label %469

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ECPG_ARRAY_NONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %37
  %42 = load %struct.variable*, %struct.variable** %9, align 8
  %43 = getelementptr inbounds %struct.variable, %struct.variable* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.variable*, %struct.variable** %9, align 8
  %49 = getelementptr inbounds %struct.variable, %struct.variable* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %63, label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.variable*, %struct.variable** %9, align 8
  %54 = getelementptr inbounds %struct.variable, %struct.variable* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.variable*, %struct.variable** %9, align 8
  %60 = getelementptr inbounds %struct.variable, %struct.variable* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %57, %46
  %64 = load %struct.statement*, %struct.statement** %8, align 8
  %65 = getelementptr inbounds %struct.statement, %struct.statement* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.variable*, %struct.variable** %9, align 8
  %69 = getelementptr inbounds %struct.variable, %struct.variable* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, i32, i32, ...) @ecpg_log(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %70)
  %72 = load %struct.statement*, %struct.statement** %8, align 8
  %73 = getelementptr inbounds %struct.statement, %struct.statement* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.statement*, %struct.statement** %8, align 8
  %76 = getelementptr inbounds %struct.statement, %struct.statement* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @INFORMIX_MODE(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* @ECPG_INFORMIX_SUBSELECT_NOT_ONE, align 4
  br label %84

82:                                               ; preds = %63
  %83 = load i32, i32* @ECPG_TOO_MANY_MATCHES, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load i32, i32* @ECPG_SQLSTATE_CARDINALITY_VIOLATION, align 4
  %87 = call i32 @ecpg_raise(i32 %74, i32 %85, i32 %86, i32* null)
  store i32 0, i32* %5, align 4
  br label %469

88:                                               ; preds = %57, %52
  br label %102

89:                                               ; preds = %37
  %90 = load %struct.variable*, %struct.variable** %9, align 8
  %91 = getelementptr inbounds %struct.variable, %struct.variable* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %89
  %95 = load %struct.statement*, %struct.statement** %8, align 8
  %96 = getelementptr inbounds %struct.statement, %struct.statement* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ECPG_NO_ARRAY, align 4
  %99 = load i32, i32* @ECPG_SQLSTATE_DATATYPE_MISMATCH, align 4
  %100 = call i32 @ecpg_raise(i32 %97, i32 %98, i32 %99, i32* null)
  store i32 0, i32* %5, align 4
  br label %469

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %88
  %103 = load %struct.variable*, %struct.variable** %9, align 8
  %104 = getelementptr inbounds %struct.variable, %struct.variable* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.variable*, %struct.variable** %9, align 8
  %109 = getelementptr inbounds %struct.variable, %struct.variable* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %270

112:                                              ; preds = %107, %102
  %113 = load %struct.variable*, %struct.variable** %9, align 8
  %114 = getelementptr inbounds %struct.variable, %struct.variable* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %270

117:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @PQfformat(i32* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %225, label %122

122:                                              ; preds = %117
  %123 = load %struct.variable*, %struct.variable** %9, align 8
  %124 = getelementptr inbounds %struct.variable, %struct.variable* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %218 [
    i32 131, label %126
    i32 129, label %126
    i32 130, label %126
    i32 128, label %208
  ]

126:                                              ; preds = %122, %122, %122
  %127 = load %struct.variable*, %struct.variable** %9, align 8
  %128 = getelementptr inbounds %struct.variable, %struct.variable* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %167, label %131

131:                                              ; preds = %126
  %132 = load %struct.variable*, %struct.variable** %9, align 8
  %133 = getelementptr inbounds %struct.variable, %struct.variable* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %167, label %136

136:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %150, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @PQgetvalue(i32* %142, i32 %143, i32 %144)
  %146 = call i32 @strlen(i32 %145)
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %137

153:                                              ; preds = %137
  %154 = load %struct.variable*, %struct.variable** %9, align 8
  %155 = getelementptr inbounds %struct.variable, %struct.variable* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %14, align 4
  %158 = mul nsw i32 %157, %156
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = mul i64 %161, 8
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %14, align 4
  br label %207

167:                                              ; preds = %131, %126
  %168 = load %struct.variable*, %struct.variable** %9, align 8
  %169 = getelementptr inbounds %struct.variable, %struct.variable* %168, i32 0, i32 2
  store i32 0, i32* %169, align 8
  store i32 0, i32* %11, align 4
  br label %170

170:                                              ; preds = %191, %167
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %194

174:                                              ; preds = %170
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @PQgetvalue(i32* %175, i32 %176, i32 %177)
  %179 = call i32 @strlen(i32 %178)
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.variable*, %struct.variable** %9, align 8
  %183 = getelementptr inbounds %struct.variable, %struct.variable* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %174
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.variable*, %struct.variable** %9, align 8
  %189 = getelementptr inbounds %struct.variable, %struct.variable* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %186, %174
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %170

194:                                              ; preds = %170
  %195 = load %struct.variable*, %struct.variable** %9, align 8
  %196 = getelementptr inbounds %struct.variable, %struct.variable* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.variable*, %struct.variable** %9, align 8
  %199 = getelementptr inbounds %struct.variable, %struct.variable* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %200, %197
  store i32 %201, i32* %199, align 4
  %202 = load %struct.variable*, %struct.variable** %9, align 8
  %203 = getelementptr inbounds %struct.variable, %struct.variable* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %12, align 4
  %206 = mul nsw i32 %204, %205
  store i32 %206, i32* %14, align 4
  br label %207

207:                                              ; preds = %194, %153
  br label %224

208:                                              ; preds = %122
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = load %struct.variable*, %struct.variable** %9, align 8
  %212 = getelementptr inbounds %struct.variable, %struct.variable* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = add i64 %214, 4
  %216 = mul i64 %210, %215
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %14, align 4
  br label %224

218:                                              ; preds = %122
  %219 = load %struct.variable*, %struct.variable** %9, align 8
  %220 = getelementptr inbounds %struct.variable, %struct.variable* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %12, align 4
  %223 = mul nsw i32 %221, %222
  store i32 %223, i32* %14, align 4
  br label %224

224:                                              ; preds = %218, %208, %207
  br label %243

225:                                              ; preds = %117
  store i32 0, i32* %11, align 4
  br label %226

226:                                              ; preds = %239, %225
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load i32*, i32** %6, align 8
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i64 @PQgetlength(i32* %231, i32 %232, i32 %233)
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %14, align 4
  br label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %226

242:                                              ; preds = %226
  br label %243

243:                                              ; preds = %242, %224
  %244 = load %struct.statement*, %struct.statement** %8, align 8
  %245 = getelementptr inbounds %struct.statement, %struct.statement* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %12, align 4
  %248 = call i32 (i8*, i32, i32, ...) @ecpg_log(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %246, i32 %247)
  %249 = load i32, i32* %14, align 4
  %250 = load %struct.statement*, %struct.statement** %8, align 8
  %251 = getelementptr inbounds %struct.statement, %struct.statement* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @ecpg_auto_alloc(i32 %249, i32 %252)
  %254 = inttoptr i64 %253 to i8*
  %255 = load %struct.variable*, %struct.variable** %9, align 8
  %256 = getelementptr inbounds %struct.variable, %struct.variable* %255, i32 0, i32 3
  store i8* %254, i8** %256, align 8
  %257 = load %struct.variable*, %struct.variable** %9, align 8
  %258 = getelementptr inbounds %struct.variable, %struct.variable* %257, i32 0, i32 3
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %262, label %261

261:                                              ; preds = %243
  store i32 0, i32* %5, align 4
  br label %469

262:                                              ; preds = %243
  %263 = load %struct.variable*, %struct.variable** %9, align 8
  %264 = getelementptr inbounds %struct.variable, %struct.variable* %263, i32 0, i32 3
  %265 = load i8*, i8** %264, align 8
  %266 = load %struct.variable*, %struct.variable** %9, align 8
  %267 = getelementptr inbounds %struct.variable, %struct.variable* %266, i32 0, i32 11
  %268 = load i64, i64* %267, align 8
  %269 = inttoptr i64 %268 to i8**
  store i8* %265, i8** %269, align 8
  br label %270

270:                                              ; preds = %262, %112, %107
  %271 = load %struct.variable*, %struct.variable** %9, align 8
  %272 = getelementptr inbounds %struct.variable, %struct.variable* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %280, label %275

275:                                              ; preds = %270
  %276 = load %struct.variable*, %struct.variable** %9, align 8
  %277 = getelementptr inbounds %struct.variable, %struct.variable* %276, i32 0, i32 6
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %317

280:                                              ; preds = %275, %270
  %281 = load %struct.variable*, %struct.variable** %9, align 8
  %282 = getelementptr inbounds %struct.variable, %struct.variable* %281, i32 0, i32 7
  %283 = load i8*, i8** %282, align 8
  %284 = icmp eq i8* %283, null
  br i1 %284, label %285, label %317

285:                                              ; preds = %280
  %286 = load %struct.variable*, %struct.variable** %9, align 8
  %287 = getelementptr inbounds %struct.variable, %struct.variable* %286, i32 0, i32 10
  %288 = load i32*, i32** %287, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %317

290:                                              ; preds = %285
  %291 = load %struct.variable*, %struct.variable** %9, align 8
  %292 = getelementptr inbounds %struct.variable, %struct.variable* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* %12, align 4
  %295 = mul nsw i32 %293, %294
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %16, align 4
  %297 = load %struct.statement*, %struct.statement** %8, align 8
  %298 = getelementptr inbounds %struct.statement, %struct.statement* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 4
  %300 = call i64 @ecpg_auto_alloc(i32 %296, i32 %299)
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.variable*, %struct.variable** %9, align 8
  %303 = getelementptr inbounds %struct.variable, %struct.variable* %302, i32 0, i32 7
  store i8* %301, i8** %303, align 8
  %304 = load %struct.variable*, %struct.variable** %9, align 8
  %305 = getelementptr inbounds %struct.variable, %struct.variable* %304, i32 0, i32 7
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %309, label %308

308:                                              ; preds = %290
  store i32 0, i32* %5, align 4
  br label %469

309:                                              ; preds = %290
  %310 = load %struct.variable*, %struct.variable** %9, align 8
  %311 = getelementptr inbounds %struct.variable, %struct.variable* %310, i32 0, i32 7
  %312 = load i8*, i8** %311, align 8
  %313 = load %struct.variable*, %struct.variable** %9, align 8
  %314 = getelementptr inbounds %struct.variable, %struct.variable* %313, i32 0, i32 10
  %315 = load i32*, i32** %314, align 8
  %316 = bitcast i32* %315 to i8**
  store i8* %312, i8** %316, align 8
  br label %317

317:                                              ; preds = %309, %285, %280, %275
  %318 = load %struct.variable*, %struct.variable** %9, align 8
  %319 = getelementptr inbounds %struct.variable, %struct.variable* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %414, label %322

322:                                              ; preds = %317
  %323 = load %struct.variable*, %struct.variable** %9, align 8
  %324 = getelementptr inbounds %struct.variable, %struct.variable* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %414, label %327

327:                                              ; preds = %322
  %328 = load %struct.variable*, %struct.variable** %9, align 8
  %329 = getelementptr inbounds %struct.variable, %struct.variable* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %330, 131
  br i1 %331, label %342, label %332

332:                                              ; preds = %327
  %333 = load %struct.variable*, %struct.variable** %9, align 8
  %334 = getelementptr inbounds %struct.variable, %struct.variable* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = icmp eq i32 %335, 129
  br i1 %336, label %342, label %337

337:                                              ; preds = %332
  %338 = load %struct.variable*, %struct.variable** %9, align 8
  %339 = getelementptr inbounds %struct.variable, %struct.variable* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = icmp eq i32 %340, 130
  br i1 %341, label %342, label %414

342:                                              ; preds = %337, %332, %327
  %343 = load %struct.variable*, %struct.variable** %9, align 8
  %344 = getelementptr inbounds %struct.variable, %struct.variable* %343, i32 0, i32 3
  %345 = load i8*, i8** %344, align 8
  %346 = bitcast i8* %345 to i8**
  store i8** %346, i8*** %17, align 8
  %347 = load i8**, i8*** %17, align 8
  %348 = load i32, i32* %12, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8*, i8** %347, i64 %350
  %352 = bitcast i8** %351 to i8*
  store i8* %352, i8** %18, align 8
  store i32 0, i32* %11, align 4
  br label %353

353:                                              ; preds = %409, %342
  %354 = load i32, i32* %11, align 4
  %355 = load i32, i32* %12, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* %13, align 4
  %359 = icmp ne i32 %358, 0
  br label %360

360:                                              ; preds = %357, %353
  %361 = phi i1 [ false, %353 ], [ %359, %357 ]
  br i1 %361, label %362, label %412

362:                                              ; preds = %360
  %363 = load i32*, i32** %6, align 8
  %364 = load i32, i32* %11, align 4
  %365 = load i32, i32* %7, align 4
  %366 = call i32 @PQgetvalue(i32* %363, i32 %364, i32 %365)
  %367 = call i32 @strlen(i32 %366)
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %19, align 4
  %369 = load i32*, i32** %6, align 8
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %7, align 4
  %372 = load %struct.statement*, %struct.statement** %8, align 8
  %373 = getelementptr inbounds %struct.statement, %struct.statement* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.variable*, %struct.variable** %9, align 8
  %376 = getelementptr inbounds %struct.variable, %struct.variable* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 8
  %378 = load %struct.variable*, %struct.variable** %9, align 8
  %379 = getelementptr inbounds %struct.variable, %struct.variable* %378, i32 0, i32 9
  %380 = load i32, i32* %379, align 4
  %381 = load i8*, i8** %18, align 8
  %382 = load %struct.variable*, %struct.variable** %9, align 8
  %383 = getelementptr inbounds %struct.variable, %struct.variable* %382, i32 0, i32 7
  %384 = load i8*, i8** %383, align 8
  %385 = load i32, i32* %19, align 4
  %386 = load %struct.variable*, %struct.variable** %9, align 8
  %387 = getelementptr inbounds %struct.variable, %struct.variable* %386, i32 0, i32 8
  %388 = load i32, i32* %387, align 8
  %389 = load i32, i32* %10, align 4
  %390 = load %struct.statement*, %struct.statement** %8, align 8
  %391 = getelementptr inbounds %struct.statement, %struct.statement* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.statement*, %struct.statement** %8, align 8
  %394 = getelementptr inbounds %struct.statement, %struct.statement* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = call i32 @ecpg_get_data(i32* %369, i32 %370, i32 %371, i32 %374, i32 %377, i32 %380, i8* %381, i8* %384, i32 %385, i32 0, i32 %388, i32 %389, i32 %392, i32 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %362
  store i32 0, i32* %13, align 4
  br label %408

399:                                              ; preds = %362
  %400 = load i8*, i8** %18, align 8
  %401 = load i8**, i8*** %17, align 8
  store i8* %400, i8** %401, align 8
  %402 = load i32, i32* %19, align 4
  %403 = load i8*, i8** %18, align 8
  %404 = sext i32 %402 to i64
  %405 = getelementptr inbounds i8, i8* %403, i64 %404
  store i8* %405, i8** %18, align 8
  %406 = load i8**, i8*** %17, align 8
  %407 = getelementptr inbounds i8*, i8** %406, i32 1
  store i8** %407, i8*** %17, align 8
  br label %408

408:                                              ; preds = %399, %398
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %11, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %11, align 4
  br label %353

412:                                              ; preds = %360
  %413 = load i8**, i8*** %17, align 8
  store i8* null, i8** %413, align 8
  br label %467

414:                                              ; preds = %337, %322, %317
  store i32 0, i32* %11, align 4
  br label %415

415:                                              ; preds = %463, %414
  %416 = load i32, i32* %11, align 4
  %417 = load i32, i32* %12, align 4
  %418 = icmp slt i32 %416, %417
  br i1 %418, label %419, label %422

419:                                              ; preds = %415
  %420 = load i32, i32* %13, align 4
  %421 = icmp ne i32 %420, 0
  br label %422

422:                                              ; preds = %419, %415
  %423 = phi i1 [ false, %415 ], [ %421, %419 ]
  br i1 %423, label %424, label %466

424:                                              ; preds = %422
  %425 = load i32*, i32** %6, align 8
  %426 = load i32, i32* %11, align 4
  %427 = load i32, i32* %7, align 4
  %428 = load %struct.statement*, %struct.statement** %8, align 8
  %429 = getelementptr inbounds %struct.statement, %struct.statement* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.variable*, %struct.variable** %9, align 8
  %432 = getelementptr inbounds %struct.variable, %struct.variable* %431, i32 0, i32 4
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.variable*, %struct.variable** %9, align 8
  %435 = getelementptr inbounds %struct.variable, %struct.variable* %434, i32 0, i32 9
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.variable*, %struct.variable** %9, align 8
  %438 = getelementptr inbounds %struct.variable, %struct.variable* %437, i32 0, i32 3
  %439 = load i8*, i8** %438, align 8
  %440 = load %struct.variable*, %struct.variable** %9, align 8
  %441 = getelementptr inbounds %struct.variable, %struct.variable* %440, i32 0, i32 7
  %442 = load i8*, i8** %441, align 8
  %443 = load %struct.variable*, %struct.variable** %9, align 8
  %444 = getelementptr inbounds %struct.variable, %struct.variable* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.variable*, %struct.variable** %9, align 8
  %447 = getelementptr inbounds %struct.variable, %struct.variable* %446, i32 0, i32 5
  %448 = load i32, i32* %447, align 4
  %449 = load %struct.variable*, %struct.variable** %9, align 8
  %450 = getelementptr inbounds %struct.variable, %struct.variable* %449, i32 0, i32 8
  %451 = load i32, i32* %450, align 8
  %452 = load i32, i32* %10, align 4
  %453 = load %struct.statement*, %struct.statement** %8, align 8
  %454 = getelementptr inbounds %struct.statement, %struct.statement* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = load %struct.statement*, %struct.statement** %8, align 8
  %457 = getelementptr inbounds %struct.statement, %struct.statement* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @ecpg_get_data(i32* %425, i32 %426, i32 %427, i32 %430, i32 %433, i32 %436, i8* %439, i8* %442, i32 %445, i32 %448, i32 %451, i32 %452, i32 %455, i32 %458)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %462, label %461

461:                                              ; preds = %424
  store i32 0, i32* %13, align 4
  br label %462

462:                                              ; preds = %461, %424
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %11, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %11, align 4
  br label %415

466:                                              ; preds = %422
  br label %467

467:                                              ; preds = %466, %412
  %468 = load i32, i32* %13, align 4
  store i32 %468, i32* %5, align 4
  br label %469

469:                                              ; preds = %467, %308, %261, %94, %84, %30
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

declare dso_local i32 @PQntuples(i32*) #1

declare dso_local i32 @ecpg_is_type_an_array(i32, %struct.statement*, %struct.variable*) #1

declare dso_local i32 @PQftype(i32*, i32) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

declare dso_local i32 @ecpg_log(i8*, i32, i32, ...) #1

declare dso_local i64 @INFORMIX_MODE(i32) #1

declare dso_local i32 @PQfformat(i32*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @PQgetvalue(i32*, i32, i32) #1

declare dso_local i64 @PQgetlength(i32*, i32, i32) #1

declare dso_local i64 @ecpg_auto_alloc(i32, i32) #1

declare dso_local i32 @ecpg_get_data(i32*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGdump_a_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/preproc/extr_type.c_ECPGdump_a_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECPGtype = type { i32, i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ECPGtype* }
%struct.variable = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i8* }

@ECPGt_sqlda = common dso_local global i32 0, align 4
@ECPGt_const = common dso_local global i32 0, align 4
@PARSE_ERROR = common dso_local global i32 0, align 4
@ET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"variable \22%s\22 is hidden by a local variable of a different type\00", align 1
@ET_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"variable \22%s\22 is hidden by a local variable\00", align 1
@ECPGt_NO_INDICATOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"indicator variable \22%s\22 is hidden by a local variable of a different type\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"indicator variable \22%s\22 is hidden by a local variable\00", align 1
@indicator_set = common dso_local global i32 0, align 4
@INDICATOR_NOT_ARRAY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"indicator for array/pointer has to be array/pointer\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"nested arrays are not supported (except strings)\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"internal error: unknown datatype, please report this to <pgsql-bugs@lists.postgresql.org>\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@INDICATOR_NOT_STRUCT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"indicator for struct has to be a struct\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"type of union has to be specified\00", align 1
@INDICATOR_NOT_SIMPLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [48 x i8] c"indicator for simple data type has to be simple\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ECPGdump_a_type(i32* %0, i8* %1, %struct.ECPGtype* %2, i32 %3, i8* %4, %struct.ECPGtype* %5, i32 %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ECPGtype*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ECPGtype*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.variable*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store %struct.ECPGtype* %2, %struct.ECPGtype** %15, align 8
  store i32 %3, i32* %16, align 4
  store i8* %4, i8** %17, align 8
  store %struct.ECPGtype* %5, %struct.ECPGtype** %18, align 8
  store i32 %6, i32* %19, align 4
  store i8* %7, i8** %20, align 8
  store i8* %8, i8** %21, align 8
  store i8* %9, i8** %22, align 8
  store i8* %10, i8** %23, align 8
  store i8* %11, i8** %24, align 8
  %36 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %37 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 130
  br i1 %39, label %40, label %238

40:                                               ; preds = %12
  %41 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %42 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ECPGt_sqlda, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %238

46:                                               ; preds = %40
  %47 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %48 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 131
  br i1 %50, label %51, label %238

51:                                               ; preds = %46
  %52 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %53 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ECPGt_const, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %238

57:                                               ; preds = %51
  %58 = load i32, i32* %16, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %238

60:                                               ; preds = %57
  %61 = load i8*, i8** %14, align 8
  %62 = call i8* @mm_strdup(i8* %61)
  store i8* %62, i8** %26, align 8
  %63 = load i8*, i8** %26, align 8
  %64 = call %struct.variable* @find_variable(i8* %63)
  store %struct.variable* %64, %struct.variable** %25, align 8
  %65 = load i8*, i8** %26, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load %struct.variable*, %struct.variable** %25, align 8
  %68 = getelementptr inbounds %struct.variable, %struct.variable* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %73 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %123, label %76

76:                                               ; preds = %60
  %77 = load %struct.variable*, %struct.variable** %25, align 8
  %78 = getelementptr inbounds %struct.variable, %struct.variable* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %85 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %123

88:                                               ; preds = %83, %76
  %89 = load %struct.variable*, %struct.variable** %25, align 8
  %90 = getelementptr inbounds %struct.variable, %struct.variable* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %97 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %123, label %100

100:                                              ; preds = %95, %88
  %101 = load %struct.variable*, %struct.variable** %25, align 8
  %102 = getelementptr inbounds %struct.variable, %struct.variable* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %128

107:                                              ; preds = %100
  %108 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %109 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %128

112:                                              ; preds = %107
  %113 = load %struct.variable*, %struct.variable** %25, align 8
  %114 = getelementptr inbounds %struct.variable, %struct.variable* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %119 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcmp(i8* %117, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %112, %95, %83, %60
  %124 = load i32, i32* @PARSE_ERROR, align 4
  %125 = load i32, i32* @ET_ERROR, align 4
  %126 = load i8*, i8** %14, align 8
  %127 = call i32 (i32, i32, i8*, ...) @mmerror(i32 %124, i32 %125, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %126)
  br label %140

128:                                              ; preds = %112, %107, %100
  %129 = load %struct.variable*, %struct.variable** %25, align 8
  %130 = getelementptr inbounds %struct.variable, %struct.variable* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load i32, i32* @PARSE_ERROR, align 4
  %136 = load i32, i32* @ET_WARNING, align 4
  %137 = load i8*, i8** %14, align 8
  %138 = call i32 (i32, i32, i8*, ...) @mmerror(i32 %135, i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %137)
  br label %139

139:                                              ; preds = %134, %128
  br label %140

140:                                              ; preds = %139, %123
  %141 = load i8*, i8** %17, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %237

143:                                              ; preds = %140
  %144 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %145 = icmp ne %struct.ECPGtype* %144, null
  br i1 %145, label %146, label %237

146:                                              ; preds = %143
  %147 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %148 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @ECPGt_NO_INDICATOR, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %237

153:                                              ; preds = %146
  %154 = load i32, i32* %19, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %237

156:                                              ; preds = %153
  %157 = load i8*, i8** %17, align 8
  %158 = call i8* @mm_strdup(i8* %157)
  store i8* %158, i8** %26, align 8
  %159 = load i8*, i8** %26, align 8
  %160 = call %struct.variable* @find_variable(i8* %159)
  store %struct.variable* %160, %struct.variable** %25, align 8
  %161 = load i8*, i8** %26, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load %struct.variable*, %struct.variable** %25, align 8
  %164 = getelementptr inbounds %struct.variable, %struct.variable* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %169 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %219, label %172

172:                                              ; preds = %156
  %173 = load %struct.variable*, %struct.variable** %25, align 8
  %174 = getelementptr inbounds %struct.variable, %struct.variable* %173, i32 0, i32 1
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %172
  %180 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %181 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %219

184:                                              ; preds = %179, %172
  %185 = load %struct.variable*, %struct.variable** %25, align 8
  %186 = getelementptr inbounds %struct.variable, %struct.variable* %185, i32 0, i32 1
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %196, label %191

191:                                              ; preds = %184
  %192 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %193 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %219, label %196

196:                                              ; preds = %191, %184
  %197 = load %struct.variable*, %struct.variable** %25, align 8
  %198 = getelementptr inbounds %struct.variable, %struct.variable* %197, i32 0, i32 1
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %224

203:                                              ; preds = %196
  %204 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %205 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %224

208:                                              ; preds = %203
  %209 = load %struct.variable*, %struct.variable** %25, align 8
  %210 = getelementptr inbounds %struct.variable, %struct.variable* %209, i32 0, i32 1
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %215 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i64 @strcmp(i8* %213, i8* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %208, %191, %179, %156
  %220 = load i32, i32* @PARSE_ERROR, align 4
  %221 = load i32, i32* @ET_ERROR, align 4
  %222 = load i8*, i8** %17, align 8
  %223 = call i32 (i32, i32, i8*, ...) @mmerror(i32 %220, i32 %221, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %222)
  br label %236

224:                                              ; preds = %208, %203, %196
  %225 = load %struct.variable*, %struct.variable** %25, align 8
  %226 = getelementptr inbounds %struct.variable, %struct.variable* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* %19, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %224
  %231 = load i32, i32* @PARSE_ERROR, align 4
  %232 = load i32, i32* @ET_WARNING, align 4
  %233 = load i8*, i8** %17, align 8
  %234 = call i32 (i32, i32, i8*, ...) @mmerror(i32 %231, i32 %232, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %233)
  br label %235

235:                                              ; preds = %230, %224
  br label %236

236:                                              ; preds = %235, %219
  br label %237

237:                                              ; preds = %236, %153, %146, %143, %140
  br label %238

238:                                              ; preds = %237, %57, %51, %46, %40, %12
  %239 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %240 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  switch i32 %241, label %544 [
    i32 132, label %242
    i32 129, label %394
    i32 128, label %418
    i32 131, label %420
    i32 130, label %496
  ]

242:                                              ; preds = %238
  %243 = load i32, i32* @indicator_set, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %242
  %246 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %247 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 132
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i32, i32* @INDICATOR_NOT_ARRAY, align 4
  %252 = call i32 @mmfatal(i32 %251, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %245, %242
  %254 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %255 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 0
  %257 = load %struct.ECPGtype*, %struct.ECPGtype** %256, align 8
  %258 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  switch i32 %259, label %299 [
    i32 132, label %260
    i32 129, label %264
    i32 128, label %264
  ]

260:                                              ; preds = %253
  %261 = load i32, i32* @PARSE_ERROR, align 4
  %262 = load i32, i32* @ET_ERROR, align 4
  %263 = call i32 (i32, i32, i8*, ...) @mmerror(i32 %261, i32 %262, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %393

264:                                              ; preds = %253, %253
  %265 = load i32*, i32** %13, align 8
  %266 = load i8*, i8** %14, align 8
  %267 = load i8*, i8** %17, align 8
  %268 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %269 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %268, i32 0, i32 2
  %270 = load i8*, i8** %269, align 8
  %271 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %272 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load %struct.ECPGtype*, %struct.ECPGtype** %273, align 8
  %275 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %276 = icmp eq %struct.ECPGtype* %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %264
  br label %294

278:                                              ; preds = %264
  %279 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %280 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* @ECPGt_NO_INDICATOR, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %278
  %286 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  br label %292

287:                                              ; preds = %278
  %288 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %289 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %288, i32 0, i32 4
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load %struct.ECPGtype*, %struct.ECPGtype** %290, align 8
  br label %292

292:                                              ; preds = %287, %285
  %293 = phi %struct.ECPGtype* [ %286, %285 ], [ %291, %287 ]
  br label %294

294:                                              ; preds = %292, %277
  %295 = phi %struct.ECPGtype* [ null, %277 ], [ %293, %292 ]
  %296 = load i8*, i8** %20, align 8
  %297 = load i8*, i8** %21, align 8
  %298 = call i32 @ECPGdump_a_struct(i32* %265, i8* %266, i8* %267, i8* %270, %struct.ECPGtype* %274, %struct.ECPGtype* %295, i8* %296, i8* %297)
  br label %393

299:                                              ; preds = %253
  %300 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %301 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 0
  %303 = load %struct.ECPGtype*, %struct.ECPGtype** %302, align 8
  %304 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = call i32 @IS_SIMPLE_TYPE(i64 %306)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %299
  %310 = call i32 @base_yyerror(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %299
  %312 = load i32*, i32** %13, align 8
  %313 = load i8*, i8** %14, align 8
  %314 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %315 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load %struct.ECPGtype*, %struct.ECPGtype** %316, align 8
  %318 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = sext i32 %319 to i64
  %321 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %322 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 0
  %324 = load %struct.ECPGtype*, %struct.ECPGtype** %323, align 8
  %325 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %324, i32 0, i32 2
  %326 = load i8*, i8** %325, align 8
  %327 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %328 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = load i8*, i8** %23, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %334

332:                                              ; preds = %311
  %333 = load i8*, i8** %23, align 8
  br label %335

334:                                              ; preds = %311
  br label %335

335:                                              ; preds = %334, %332
  %336 = phi i8* [ %333, %332 ], [ null, %334 ]
  %337 = load i8*, i8** %20, align 8
  %338 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %339 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %338, i32 0, i32 4
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = load %struct.ECPGtype*, %struct.ECPGtype** %340, align 8
  %342 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @ECPGdump_a_simple(i32* %312, i8* %313, i64 %320, i8* %326, i8* %329, i8* %336, i8* %337, i32 %343)
  %345 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %346 = icmp ne %struct.ECPGtype* %345, null
  br i1 %346, label %347, label %392

347:                                              ; preds = %335
  %348 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %349 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = sext i32 %350 to i64
  %352 = load i64, i64* @ECPGt_NO_INDICATOR, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %370

354:                                              ; preds = %347
  %355 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %355, i8** %27, align 8
  %356 = load i32*, i32** %13, align 8
  %357 = load i8*, i8** %17, align 8
  %358 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %359 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sext i32 %360 to i64
  %362 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %363 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %362, i32 0, i32 2
  %364 = load i8*, i8** %363, align 8
  %365 = load i8*, i8** %27, align 8
  %366 = load i8*, i8** %21, align 8
  %367 = call i32 @ECPGdump_a_simple(i32* %356, i8* %357, i64 %361, i8* %364, i8* %365, i8* null, i8* %366, i32 0)
  %368 = load i8*, i8** %27, align 8
  %369 = call i32 @free(i8* %368)
  br label %391

370:                                              ; preds = %347
  %371 = load i32*, i32** %13, align 8
  %372 = load i8*, i8** %17, align 8
  %373 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %374 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 0
  %376 = load %struct.ECPGtype*, %struct.ECPGtype** %375, align 8
  %377 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %381 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %380, i32 0, i32 4
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 0
  %383 = load %struct.ECPGtype*, %struct.ECPGtype** %382, align 8
  %384 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %383, i32 0, i32 2
  %385 = load i8*, i8** %384, align 8
  %386 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %387 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %386, i32 0, i32 2
  %388 = load i8*, i8** %387, align 8
  %389 = load i8*, i8** %21, align 8
  %390 = call i32 @ECPGdump_a_simple(i32* %371, i8* %372, i64 %379, i8* %385, i8* %388, i8* null, i8* %389, i32 0)
  br label %391

391:                                              ; preds = %370, %354
  br label %392

392:                                              ; preds = %391, %335
  br label %393

393:                                              ; preds = %392, %294, %260
  br label %622

394:                                              ; preds = %238
  %395 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %395, i8** %28, align 8
  %396 = load i32, i32* @indicator_set, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %406

398:                                              ; preds = %394
  %399 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %400 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 129
  br i1 %402, label %403, label %406

403:                                              ; preds = %398
  %404 = load i32, i32* @INDICATOR_NOT_STRUCT, align 4
  %405 = call i32 @mmfatal(i32 %404, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %406

406:                                              ; preds = %403, %398, %394
  %407 = load i32*, i32** %13, align 8
  %408 = load i8*, i8** %14, align 8
  %409 = load i8*, i8** %17, align 8
  %410 = load i8*, i8** %28, align 8
  %411 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %412 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %413 = load i8*, i8** %20, align 8
  %414 = load i8*, i8** %21, align 8
  %415 = call i32 @ECPGdump_a_struct(i32* %407, i8* %408, i8* %409, i8* %410, %struct.ECPGtype* %411, %struct.ECPGtype* %412, i8* %413, i8* %414)
  %416 = load i8*, i8** %28, align 8
  %417 = call i32 @free(i8* %416)
  br label %622

418:                                              ; preds = %238
  %419 = call i32 @base_yyerror(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %622

420:                                              ; preds = %238
  %421 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %421, i8** %29, align 8
  %422 = call i8* @mm_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %422, i8** %30, align 8
  %423 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %423, i8** %31, align 8
  %424 = load i32, i32* @indicator_set, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %439

426:                                              ; preds = %420
  %427 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %428 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp eq i32 %429, 129
  br i1 %430, label %436, label %431

431:                                              ; preds = %426
  %432 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %433 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = icmp eq i32 %434, 132
  br i1 %435, label %436, label %439

436:                                              ; preds = %431, %426
  %437 = load i32, i32* @INDICATOR_NOT_SIMPLE, align 4
  %438 = call i32 @mmfatal(i32 %437, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %439

439:                                              ; preds = %436, %431, %420
  %440 = load i32*, i32** %13, align 8
  %441 = load i8*, i8** %14, align 8
  %442 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %443 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = sext i32 %444 to i64
  %446 = load i8*, i8** %29, align 8
  %447 = load i8*, i8** %22, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %455

449:                                              ; preds = %439
  %450 = load i8*, i8** %22, align 8
  %451 = call i64 @strcmp(i8* %450, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %455

453:                                              ; preds = %449
  %454 = load i8*, i8** %22, align 8
  br label %457

455:                                              ; preds = %449, %439
  %456 = load i8*, i8** %30, align 8
  br label %457

457:                                              ; preds = %455, %453
  %458 = phi i8* [ %454, %453 ], [ %456, %455 ]
  %459 = load i8*, i8** %23, align 8
  %460 = load i8*, i8** %20, align 8
  %461 = call i32 @ECPGdump_a_simple(i32* %440, i8* %441, i64 %445, i8* %446, i8* %458, i8* %459, i8* %460, i32 0)
  %462 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %463 = icmp ne %struct.ECPGtype* %462, null
  br i1 %463, label %464, label %489

464:                                              ; preds = %457
  %465 = load i32*, i32** %13, align 8
  %466 = load i8*, i8** %17, align 8
  %467 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %468 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = sext i32 %469 to i64
  %471 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %472 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %471, i32 0, i32 2
  %473 = load i8*, i8** %472, align 8
  %474 = load i8*, i8** %22, align 8
  %475 = icmp ne i8* %474, null
  br i1 %475, label %476, label %482

476:                                              ; preds = %464
  %477 = load i8*, i8** %22, align 8
  %478 = call i64 @strcmp(i8* %477, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %476
  %481 = load i8*, i8** %22, align 8
  br label %484

482:                                              ; preds = %476, %464
  %483 = load i8*, i8** %31, align 8
  br label %484

484:                                              ; preds = %482, %480
  %485 = phi i8* [ %481, %480 ], [ %483, %482 ]
  %486 = load i8*, i8** %24, align 8
  %487 = load i8*, i8** %21, align 8
  %488 = call i32 @ECPGdump_a_simple(i32* %465, i8* %466, i64 %470, i8* %473, i8* %485, i8* %486, i8* %487, i32 0)
  br label %489

489:                                              ; preds = %484, %457
  %490 = load i8*, i8** %29, align 8
  %491 = call i32 @free(i8* %490)
  %492 = load i8*, i8** %30, align 8
  %493 = call i32 @free(i8* %492)
  %494 = load i8*, i8** %31, align 8
  %495 = call i32 @free(i8* %494)
  br label %622

496:                                              ; preds = %238
  %497 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %497, i8** %32, align 8
  %498 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %498, i8** %33, align 8
  %499 = load i32, i32* @indicator_set, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %514

501:                                              ; preds = %496
  %502 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %503 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp eq i32 %504, 129
  br i1 %505, label %511, label %506

506:                                              ; preds = %501
  %507 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %508 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = icmp eq i32 %509, 132
  br i1 %510, label %511, label %514

511:                                              ; preds = %506, %501
  %512 = load i32, i32* @INDICATOR_NOT_SIMPLE, align 4
  %513 = call i32 @mmfatal(i32 %512, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %514

514:                                              ; preds = %511, %506, %496
  %515 = load i32*, i32** %13, align 8
  %516 = load i8*, i8** %14, align 8
  %517 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %518 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %517, i32 0, i32 0
  %519 = load i32, i32* %518, align 8
  %520 = sext i32 %519 to i64
  %521 = load i8*, i8** %32, align 8
  %522 = load i8*, i8** %20, align 8
  %523 = call i32 @ECPGdump_a_simple(i32* %515, i8* %516, i64 %520, i8* null, i8* %521, i8* null, i8* %522, i32 0)
  %524 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %525 = icmp ne %struct.ECPGtype* %524, null
  br i1 %525, label %526, label %539

526:                                              ; preds = %514
  %527 = load i32*, i32** %13, align 8
  %528 = load i8*, i8** %17, align 8
  %529 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %530 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 8
  %532 = sext i32 %531 to i64
  %533 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %534 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %533, i32 0, i32 2
  %535 = load i8*, i8** %534, align 8
  %536 = load i8*, i8** %33, align 8
  %537 = load i8*, i8** %21, align 8
  %538 = call i32 @ECPGdump_a_simple(i32* %527, i8* %528, i64 %532, i8* %535, i8* %536, i8* null, i8* %537, i32 0)
  br label %539

539:                                              ; preds = %526, %514
  %540 = load i8*, i8** %32, align 8
  %541 = call i32 @free(i8* %540)
  %542 = load i8*, i8** %33, align 8
  %543 = call i32 @free(i8* %542)
  br label %622

544:                                              ; preds = %238
  %545 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %545, i8** %34, align 8
  %546 = call i8* @mm_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i8* %546, i8** %35, align 8
  %547 = load i32, i32* @indicator_set, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %562

549:                                              ; preds = %544
  %550 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %551 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 8
  %553 = icmp eq i32 %552, 129
  br i1 %553, label %559, label %554

554:                                              ; preds = %549
  %555 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %556 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = icmp eq i32 %557, 132
  br i1 %558, label %559, label %562

559:                                              ; preds = %554, %549
  %560 = load i32, i32* @INDICATOR_NOT_SIMPLE, align 4
  %561 = call i32 @mmfatal(i32 %560, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  br label %562

562:                                              ; preds = %559, %554, %544
  %563 = load i32*, i32** %13, align 8
  %564 = load i8*, i8** %14, align 8
  %565 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %566 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = sext i32 %567 to i64
  %569 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %570 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %569, i32 0, i32 2
  %571 = load i8*, i8** %570, align 8
  %572 = load i8*, i8** %22, align 8
  %573 = icmp ne i8* %572, null
  br i1 %573, label %574, label %580

574:                                              ; preds = %562
  %575 = load i8*, i8** %22, align 8
  %576 = call i64 @strcmp(i8* %575, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %578, label %580

578:                                              ; preds = %574
  %579 = load i8*, i8** %22, align 8
  br label %582

580:                                              ; preds = %574, %562
  %581 = load i8*, i8** %34, align 8
  br label %582

582:                                              ; preds = %580, %578
  %583 = phi i8* [ %579, %578 ], [ %581, %580 ]
  %584 = load i8*, i8** %23, align 8
  %585 = load i8*, i8** %20, align 8
  %586 = load %struct.ECPGtype*, %struct.ECPGtype** %15, align 8
  %587 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @ECPGdump_a_simple(i32* %563, i8* %564, i64 %568, i8* %571, i8* %583, i8* %584, i8* %585, i32 %588)
  %590 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %591 = icmp ne %struct.ECPGtype* %590, null
  br i1 %591, label %592, label %617

592:                                              ; preds = %582
  %593 = load i32*, i32** %13, align 8
  %594 = load i8*, i8** %17, align 8
  %595 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %596 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %595, i32 0, i32 0
  %597 = load i32, i32* %596, align 8
  %598 = sext i32 %597 to i64
  %599 = load %struct.ECPGtype*, %struct.ECPGtype** %18, align 8
  %600 = getelementptr inbounds %struct.ECPGtype, %struct.ECPGtype* %599, i32 0, i32 2
  %601 = load i8*, i8** %600, align 8
  %602 = load i8*, i8** %22, align 8
  %603 = icmp ne i8* %602, null
  br i1 %603, label %604, label %610

604:                                              ; preds = %592
  %605 = load i8*, i8** %22, align 8
  %606 = call i64 @strcmp(i8* %605, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %608, label %610

608:                                              ; preds = %604
  %609 = load i8*, i8** %22, align 8
  br label %612

610:                                              ; preds = %604, %592
  %611 = load i8*, i8** %35, align 8
  br label %612

612:                                              ; preds = %610, %608
  %613 = phi i8* [ %609, %608 ], [ %611, %610 ]
  %614 = load i8*, i8** %24, align 8
  %615 = load i8*, i8** %21, align 8
  %616 = call i32 @ECPGdump_a_simple(i32* %593, i8* %594, i64 %598, i8* %601, i8* %613, i8* %614, i8* %615, i32 0)
  br label %617

617:                                              ; preds = %612, %582
  %618 = load i8*, i8** %34, align 8
  %619 = call i32 @free(i8* %618)
  %620 = load i8*, i8** %35, align 8
  %621 = call i32 @free(i8* %620)
  br label %622

622:                                              ; preds = %617, %539, %489, %418, %406, %393
  ret void
}

declare dso_local i8* @mm_strdup(i8*) #1

declare dso_local %struct.variable* @find_variable(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @mmerror(i32, i32, i8*, ...) #1

declare dso_local i32 @mmfatal(i32, i8*) #1

declare dso_local i32 @ECPGdump_a_struct(i32*, i8*, i8*, i8*, %struct.ECPGtype*, %struct.ECPGtype*, i8*, i8*) #1

declare dso_local i32 @IS_SIMPLE_TYPE(i64) #1

declare dso_local i32 @base_yyerror(i8*) #1

declare dso_local i32 @ECPGdump_a_simple(i32*, i8*, i64, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

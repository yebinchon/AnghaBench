; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_typanalyze.c_compute_tsvector_stats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_ts_typanalyze.c_compute_tsvector_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, double, double, double, double**, i32*, i64**, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i8*, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32 }

@lexeme_hash = common dso_local global i32 0, align 4
@lexeme_match = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Analyzed lexemes table\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_FUNCTION = common dso_local global i32 0, align 4
@HASH_COMPARE = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@DEBUG3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [112 x i8] c"tsvector_stats: target # mces = %d, bucket width = %d, # lexemes = %d, hashtable size = %d, usable entries = %d\00", align 1
@trackitem_compare_frequencies_desc = common dso_local global i32 0, align 4
@trackitem_compare_lexemes = common dso_local global i32 0, align 4
@STATISTIC_KIND_MCELEM = common dso_local global i32 0, align 4
@TextEqualOperator = common dso_local global i32 0, align 4
@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4
@TEXTOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i64 (%struct.TYPE_24__*, i32, i32*)*, i32, double)* @compute_tsvector_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_tsvector_stats(%struct.TYPE_24__* %0, i64 (%struct.TYPE_24__*, i32, i32*)* %1, i32 %2, double %3) #0 {
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i64 (%struct.TYPE_24__*, i32, i32*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_28__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_27__, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca %struct.TYPE_23__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_25__**, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64*, align 8
  %37 = alloca double*, align 8
  %38 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i64 (%struct.TYPE_24__*, i32, i32*)* %1, i64 (%struct.TYPE_24__*, i32, i32*)** %6, align 8
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  store i32 0, i32* %10, align 4
  store double 0.000000e+00, double* %11, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 16
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 10
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 10
  %47 = mul nsw i32 %46, 1000
  %48 = sdiv i32 %47, 7
  store i32 %48, i32* %16, align 4
  %49 = call i32 @MemSet(%struct.TYPE_28__* %13, i32 0, i32 20)
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 0
  store i32 16, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  store i32 24, i32* %51, align 4
  %52 = load i32, i32* @lexeme_hash, align 4
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @lexeme_match, align 4
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @CurrentMemoryContext, align 4
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 2
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @HASH_ELEM, align 4
  %60 = load i32, i32* @HASH_FUNCTION, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @HASH_COMPARE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @HASH_CONTEXT, align 4
  %65 = or i32 %63, %64
  %66 = call i32* @hash_create(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %58, %struct.TYPE_28__* %13, i32 %65)
  store i32* %66, i32** %12, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %175, %4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %178

71:                                               ; preds = %67
  %72 = call i32 (...) @vacuum_delay_point()
  %73 = load i64 (%struct.TYPE_24__*, i32, i32*)*, i64 (%struct.TYPE_24__*, i32, i32*)** %6, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %75 = load i32, i32* %17, align 4
  %76 = call i64 %73(%struct.TYPE_24__* %74, i32 %75, i32* %22)
  store i64 %76, i64* %21, align 8
  %77 = load i32, i32* %22, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %175

82:                                               ; preds = %71
  %83 = load i64, i64* %21, align 8
  %84 = call i32 @DatumGetPointer(i64 %83)
  %85 = call i64 @VARSIZE_ANY(i32 %84)
  %86 = sitofp i64 %85 to double
  %87 = load double, double* %11, align 8
  %88 = fadd double %87, %86
  store double %88, double* %11, align 8
  %89 = load i64, i64* %21, align 8
  %90 = call %struct.TYPE_26__* @DatumGetTSVector(i64 %89)
  store %struct.TYPE_26__* %90, %struct.TYPE_26__** %23, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %92 = call i8* @STRPTR(%struct.TYPE_26__* %91)
  store i8* %92, i8** %25, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %94 = call %struct.TYPE_23__* @ARRPTR(%struct.TYPE_26__* %93)
  store %struct.TYPE_23__* %94, %struct.TYPE_23__** %24, align 8
  store i32 0, i32* %26, align 4
  br label %95

95:                                               ; preds = %163, %82
  %96 = load i32, i32* %26, align 4
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %166

101:                                              ; preds = %95
  %102 = load i8*, i8** %25, align 8
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  store i8* %107, i8** %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  store i32 %111, i32* %112, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = bitcast %struct.TYPE_27__* %19 to i8*
  %115 = load i32, i32* @HASH_ENTER, align 4
  %116 = call i64 @hash_search(i32* %113, i8* %114, i32 %115, i32* %27)
  %117 = inttoptr i64 %116 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %117, %struct.TYPE_25__** %20, align 8
  %118 = load i32, i32* %27, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %101
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  br label %147

125:                                              ; preds = %101
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @palloc(i32 %133)
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  store i64 %134, i64* %137, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %19, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @memcpy(i64 %141, i8* %143, i32 %145)
  br label %147

147:                                              ; preds = %125, %120
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %16, align 4
  %152 = srem i32 %150, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @prune_lexemes_hashtable(i32* %155, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %154, %147
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 1
  store %struct.TYPE_23__* %162, %struct.TYPE_23__** %24, align 8
  br label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %26, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %26, align 4
  br label %95

166:                                              ; preds = %95
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %168 = call i64 @TSVectorGetDatum(%struct.TYPE_26__* %167)
  %169 = load i64, i64* %21, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %173 = call i32 @pfree(%struct.TYPE_26__* %172)
  br label %174

174:                                              ; preds = %171, %166
  br label %175

175:                                              ; preds = %174, %79
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %67

178:                                              ; preds = %67
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %421

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 %183, %184
  store i32 %185, i32* %28, align 4
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sitofp i32 %188 to double
  %190 = load i32, i32* %7, align 4
  %191 = sitofp i32 %190 to double
  %192 = fdiv double %189, %191
  %193 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 1
  store double %192, double* %194, align 8
  %195 = load double, double* %11, align 8
  %196 = load i32, i32* %28, align 4
  %197 = sitofp i32 %196 to double
  %198 = fdiv double %195, %197
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 2
  store double %198, double* %200, align 8
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 1
  %203 = load double, double* %202, align 8
  %204 = fsub double 1.000000e+00, %203
  %205 = fmul double -1.000000e+00, %204
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 3
  store double %205, double* %207, align 8
  %208 = load i32, i32* %18, align 4
  %209 = mul nsw i32 9, %208
  %210 = load i32, i32* %16, align 4
  %211 = sdiv i32 %209, %210
  store i32 %211, i32* %32, align 4
  %212 = load i32*, i32** %12, align 8
  %213 = call i32 @hash_get_num_entries(i32* %212)
  store i32 %213, i32* %29, align 4
  %214 = load i32, i32* %29, align 4
  %215 = sext i32 %214 to i64
  %216 = mul i64 8, %215
  %217 = trunc i64 %216 to i32
  %218 = call i64 @palloc(i32 %217)
  %219 = inttoptr i64 %218 to %struct.TYPE_25__**
  store %struct.TYPE_25__** %219, %struct.TYPE_25__*** %30, align 8
  %220 = load i32*, i32** %12, align 8
  %221 = call i32 @hash_seq_init(i32* %14, i32* %220)
  store i32 0, i32* %31, align 4
  %222 = load i32, i32* %18, align 4
  store i32 %222, i32* %33, align 4
  store i32 0, i32* %34, align 4
  br label %223

223:                                              ; preds = %250, %182
  %224 = call i64 @hash_seq_search(i32* %14)
  %225 = inttoptr i64 %224 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %225, %struct.TYPE_25__** %20, align 8
  %226 = icmp ne %struct.TYPE_25__* %225, null
  br i1 %226, label %227, label %251

227:                                              ; preds = %223
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %32, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %233, label %250

233:                                              ; preds = %227
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %235 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %30, align 8
  %236 = load i32, i32* %31, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %31, align 4
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %235, i64 %238
  store %struct.TYPE_25__* %234, %struct.TYPE_25__** %239, align 8
  %240 = load i32, i32* %33, align 4
  %241 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %242 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @Min(i32 %240, i32 %243)
  store i32 %244, i32* %33, align 4
  %245 = load i32, i32* %34, align 4
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @Max(i32 %245, i32 %248)
  store i32 %249, i32* %34, align 4
  br label %250

250:                                              ; preds = %233, %227
  br label %223

251:                                              ; preds = %223
  %252 = load i32, i32* %31, align 4
  %253 = load i32, i32* %29, align 4
  %254 = icmp sle i32 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @Assert(i32 %255)
  %257 = load i32, i32* @DEBUG3, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %29, align 4
  %262 = load i32, i32* %31, align 4
  %263 = call i32 @elog(i32 %257, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0), i32 %258, i32 %259, i32 %260, i32 %261, i32 %262)
  %264 = load i32, i32* %9, align 4
  %265 = load i32, i32* %31, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %251
  %268 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %30, align 8
  %269 = load i32, i32* %31, align 4
  %270 = load i32, i32* @trackitem_compare_frequencies_desc, align 4
  %271 = call i32 @qsort(%struct.TYPE_25__** %268, i32 %269, i32 8, i32 %270)
  %272 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %30, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %272, i64 %275
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  store i32 %279, i32* %33, align 4
  br label %282

280:                                              ; preds = %251
  %281 = load i32, i32* %31, align 4
  store i32 %281, i32* %9, align 4
  br label %282

282:                                              ; preds = %280, %267
  %283 = load i32, i32* %9, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %420

285:                                              ; preds = %282
  %286 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %30, align 8
  %287 = load i32, i32* %9, align 4
  %288 = load i32, i32* @trackitem_compare_lexemes, align 4
  %289 = call i32 @qsort(%struct.TYPE_25__** %286, i32 %287, i32 8, i32 %288)
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 15
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @MemoryContextSwitchTo(i32 %292)
  store i32 %293, i32* %35, align 4
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 8
  %297 = trunc i64 %296 to i32
  %298 = call i64 @palloc(i32 %297)
  %299 = inttoptr i64 %298 to i64*
  store i64* %299, i64** %36, align 8
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 2
  %302 = sext i32 %301 to i64
  %303 = mul i64 %302, 8
  %304 = trunc i64 %303 to i32
  %305 = call i64 @palloc(i32 %304)
  %306 = inttoptr i64 %305 to double*
  store double* %306, double** %37, align 8
  store i32 0, i32* %29, align 4
  br label %307

307:                                              ; preds = %342, %285
  %308 = load i32, i32* %29, align 4
  %309 = load i32, i32* %9, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %345

311:                                              ; preds = %307
  %312 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %30, align 8
  %313 = load i32, i32* %29, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %312, i64 %314
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %315, align 8
  store %struct.TYPE_25__* %316, %struct.TYPE_25__** %38, align 8
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %322 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @cstring_to_text_with_len(i64 %320, i32 %324)
  %326 = call i64 @PointerGetDatum(i32 %325)
  %327 = load i64*, i64** %36, align 8
  %328 = load i32, i32* %29, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i64, i64* %327, i64 %329
  store i64 %326, i64* %330, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = sitofp i32 %333 to double
  %335 = load i32, i32* %28, align 4
  %336 = sitofp i32 %335 to double
  %337 = fdiv double %334, %336
  %338 = load double*, double** %37, align 8
  %339 = load i32, i32* %29, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds double, double* %338, i64 %340
  store double %337, double* %341, align 8
  br label %342

342:                                              ; preds = %311
  %343 = load i32, i32* %29, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %29, align 4
  br label %307

345:                                              ; preds = %307
  %346 = load i32, i32* %33, align 4
  %347 = sitofp i32 %346 to double
  %348 = load i32, i32* %28, align 4
  %349 = sitofp i32 %348 to double
  %350 = fdiv double %347, %349
  %351 = load double*, double** %37, align 8
  %352 = load i32, i32* %29, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %29, align 4
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds double, double* %351, i64 %354
  store double %350, double* %355, align 8
  %356 = load i32, i32* %34, align 4
  %357 = sitofp i32 %356 to double
  %358 = load i32, i32* %28, align 4
  %359 = sitofp i32 %358 to double
  %360 = fdiv double %357, %359
  %361 = load double*, double** %37, align 8
  %362 = load i32, i32* %29, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds double, double* %361, i64 %363
  store double %360, double* %364, align 8
  %365 = load i32, i32* %35, align 4
  %366 = call i32 @MemoryContextSwitchTo(i32 %365)
  %367 = load i32, i32* @STATISTIC_KIND_MCELEM, align 4
  %368 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %368, i32 0, i32 14
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  store i32 %367, i32* %371, align 4
  %372 = load i32, i32* @TextEqualOperator, align 4
  %373 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %374 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %373, i32 0, i32 13
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 0
  store i32 %372, i32* %376, align 4
  %377 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %378, i32 0, i32 12
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  store i32 %377, i32* %381, align 4
  %382 = load double*, double** %37, align 8
  %383 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %383, i32 0, i32 4
  %385 = load double**, double*** %384, align 8
  %386 = getelementptr inbounds double*, double** %385, i64 0
  store double* %382, double** %386, align 8
  %387 = load i32, i32* %9, align 4
  %388 = add nsw i32 %387, 2
  %389 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %390 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %389, i32 0, i32 5
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 0
  store i32 %388, i32* %392, align 4
  %393 = load i64*, i64** %36, align 8
  %394 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %394, i32 0, i32 6
  %396 = load i64**, i64*** %395, align 8
  %397 = getelementptr inbounds i64*, i64** %396, i64 0
  store i64* %393, i64** %397, align 8
  %398 = load i32, i32* %9, align 4
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 7
  %401 = load i32*, i32** %400, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 0
  store i32 %398, i32* %402, align 4
  %403 = load i32, i32* @TEXTOID, align 4
  %404 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %404, i32 0, i32 11
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 0
  store i32 %403, i32* %407, align 4
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 8
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 0
  store i32 -1, i32* %411, align 4
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 9
  %414 = load i32*, i32** %413, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 0
  store i32 0, i32* %415, align 4
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 10
  %418 = load i8*, i8** %417, align 8
  %419 = getelementptr inbounds i8, i8* %418, i64 0
  store i8 105, i8* %419, align 1
  br label %420

420:                                              ; preds = %345, %282
  br label %430

421:                                              ; preds = %178
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %423 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i32 0, i32 0
  store i32 1, i32* %423, align 8
  %424 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %424, i32 0, i32 1
  store double 1.000000e+00, double* %425, align 8
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 2
  store double 0.000000e+00, double* %427, align 8
  %428 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %429 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %428, i32 0, i32 3
  store double 0.000000e+00, double* %429, align 8
  br label %430

430:                                              ; preds = %421, %420
  ret void
}

declare dso_local i32 @MemSet(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i64 @VARSIZE_ANY(i32) #1

declare dso_local i32 @DatumGetPointer(i64) #1

declare dso_local %struct.TYPE_26__* @DatumGetTSVector(i64) #1

declare dso_local i8* @STRPTR(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_23__* @ARRPTR(%struct.TYPE_26__*) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @prune_lexemes_hashtable(i32*, i32) #1

declare dso_local i64 @TSVectorGetDatum(%struct.TYPE_26__*) #1

declare dso_local i32 @pfree(%struct.TYPE_26__*) #1

declare dso_local i32 @hash_get_num_entries(i32*) #1

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_25__**, i32, i32, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @PointerGetDatum(i32) #1

declare dso_local i32 @cstring_to_text_with_len(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

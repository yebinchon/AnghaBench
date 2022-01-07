; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_table_recheck_autovac.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_table_recheck_autovac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, double, i32, i32*, i32*, i32*, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_16__ = type { double, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__, i64 }

@InvalidOid = common dso_local global i32 0, align 4
@MyDatabaseId = common dso_local global i32 0, align 4
@RELOID = common dso_local global i32 0, align 4
@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@HASH_FIND = common dso_local global i32 0, align 4
@autovacuum_vac_cost_delay = common dso_local global double 0.000000e+00, align 8
@VacuumCostDelay = common dso_local global double 0.000000e+00, align 8
@autovacuum_vac_cost_limit = common dso_local global i32 0, align 4
@VacuumCostLimit = common dso_local global i32 0, align 4
@Log_autovacuum_min_duration = common dso_local global i32 0, align 4
@default_freeze_min_age = common dso_local global i32 0, align 4
@default_freeze_table_age = common dso_local global i32 0, align 4
@default_multixact_freeze_min_age = common dso_local global i32 0, align 4
@default_multixact_freeze_table_age = common dso_local global i32 0, align 4
@VACOPT_SKIPTOAST = common dso_local global i32 0, align 4
@VACOPT_VACUUM = common dso_local global i32 0, align 4
@VACOPT_ANALYZE = common dso_local global i32 0, align 4
@VACOPT_SKIP_LOCKED = common dso_local global i32 0, align 4
@VACOPT_TERNARY_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (i32, i32*, i32, i32)* @table_recheck_autovac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @table_recheck_autovac(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  %29 = call i32 (...) @autovac_refresh_stats()
  %30 = load i32, i32* @InvalidOid, align 4
  %31 = call i32* @pgstat_fetch_stat_dbentry(i32 %30)
  store i32* %31, i32** %16, align 8
  %32 = load i32, i32* @MyDatabaseId, align 4
  %33 = call i32* @pgstat_fetch_stat_dbentry(i32 %32)
  store i32* %33, i32** %17, align 8
  %34 = load i32, i32* @RELOID, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ObjectIdGetDatum(i32 %35)
  %37 = call i32 @SearchSysCacheCopy1(i32 %34, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @HeapTupleIsValid(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %5, align 8
  br label %326

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @GETSTRUCT(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %45, %struct.TYPE_15__** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.TYPE_16__* @extract_autovac_opts(i32 %46, i32 %47)
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %19, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %42
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %56 = icmp eq %struct.TYPE_16__* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* @HASH_FIND, align 4
  %63 = call %struct.TYPE_13__* @hash_search(i32* %61, i32* %6, i32 %62, i32* %21)
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %20, align 8
  %64 = load i32, i32* %21, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %19, align 8
  br label %74

74:                                               ; preds = %71, %66, %60
  br label %75

75:                                               ; preds = %74, %57, %54, %42
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = call i32* @get_pgstat_tabentry_relid(i32 %76, i32 %79, i32* %80, i32* %81)
  store i32* %82, i32** %15, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @relation_needs_vacanalyze(i32 %83, %struct.TYPE_16__* %84, %struct.TYPE_15__* %85, i32* %86, i32 %87, i32* %12, i32* %13, i32* %18)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %322

101:                                              ; preds = %98, %95
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %103 = icmp ne %struct.TYPE_16__* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load double, double* %106, align 8
  %108 = fcmp oge double %107, 0.000000e+00
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load double, double* %111, align 8
  br label %122

113:                                              ; preds = %104, %101
  %114 = load double, double* @autovacuum_vac_cost_delay, align 8
  %115 = fcmp oge double %114, 0.000000e+00
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load double, double* @autovacuum_vac_cost_delay, align 8
  br label %120

118:                                              ; preds = %113
  %119 = load double, double* @VacuumCostDelay, align 8
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi double [ %117, %116 ], [ %119, %118 ]
  br label %122

122:                                              ; preds = %120, %109
  %123 = phi double [ %112, %109 ], [ %121, %120 ]
  store double %123, double* %27, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %125 = icmp ne %struct.TYPE_16__* %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %122
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  br label %144

135:                                              ; preds = %126, %122
  %136 = load i32, i32* @autovacuum_vac_cost_limit, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @autovacuum_vac_cost_limit, align 4
  br label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @VacuumCostLimit, align 4
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i32 [ %139, %138 ], [ %141, %140 ]
  br label %144

144:                                              ; preds = %142, %131
  %145 = phi i32 [ %134, %131 ], [ %143, %142 ]
  store i32 %145, i32* %26, align 4
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %147 = icmp ne %struct.TYPE_16__* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  br label %159

157:                                              ; preds = %148, %144
  %158 = load i32, i32* @Log_autovacuum_min_duration, align 4
  br label %159

159:                                              ; preds = %157, %153
  %160 = phi i32 [ %156, %153 ], [ %158, %157 ]
  store i32 %160, i32* %28, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %162 = icmp ne %struct.TYPE_16__* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %159
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  br label %174

172:                                              ; preds = %163, %159
  %173 = load i32, i32* @default_freeze_min_age, align 4
  br label %174

174:                                              ; preds = %172, %168
  %175 = phi i32 [ %171, %168 ], [ %173, %172 ]
  store i32 %175, i32* %22, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %177 = icmp ne %struct.TYPE_16__* %176, null
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  br label %189

187:                                              ; preds = %178, %174
  %188 = load i32, i32* @default_freeze_table_age, align 4
  br label %189

189:                                              ; preds = %187, %183
  %190 = phi i32 [ %186, %183 ], [ %188, %187 ]
  store i32 %190, i32* %23, align 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %192 = icmp ne %struct.TYPE_16__* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %189
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 8
  br label %204

202:                                              ; preds = %193, %189
  %203 = load i32, i32* @default_multixact_freeze_min_age, align 4
  br label %204

204:                                              ; preds = %202, %198
  %205 = phi i32 [ %201, %198 ], [ %203, %202 ]
  store i32 %205, i32* %24, align 4
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %207 = icmp ne %struct.TYPE_16__* %206, null
  br i1 %207, label %208, label %217

208:                                              ; preds = %204
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 4
  %212 = icmp sge i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  br label %219

217:                                              ; preds = %208, %204
  %218 = load i32, i32* @default_multixact_freeze_table_age, align 4
  br label %219

219:                                              ; preds = %217, %213
  %220 = phi i32 [ %216, %213 ], [ %218, %217 ]
  store i32 %220, i32* %25, align 4
  %221 = call %struct.TYPE_14__* @palloc(i32 104)
  store %struct.TYPE_14__* %221, %struct.TYPE_14__** %14, align 8
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 8
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 7
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @VACOPT_SKIPTOAST, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %219
  %234 = load i32, i32* @VACOPT_VACUUM, align 4
  br label %236

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235, %233
  %237 = phi i32 [ %234, %233 ], [ 0, %235 ]
  %238 = or i32 %230, %237
  %239 = load i32, i32* %13, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @VACOPT_ANALYZE, align 4
  br label %244

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %241
  %245 = phi i32 [ %242, %241 ], [ 0, %243 ]
  %246 = or i32 %238, %245
  %247 = load i32, i32* %18, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* @VACOPT_SKIP_LOCKED, align 4
  br label %252

251:                                              ; preds = %244
  br label %252

252:                                              ; preds = %251, %249
  %253 = phi i32 [ %250, %249 ], [ 0, %251 ]
  %254 = or i32 %246, %253
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  %258 = load i8*, i8** @VACOPT_TERNARY_DEFAULT, align 8
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 8
  store i8* %258, i8** %261, align 8
  %262 = load i8*, i8** @VACOPT_TERNARY_DEFAULT, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 7
  store i8* %262, i8** %265, align 8
  %266 = load i32, i32* %22, align 4
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  store i32 %266, i32* %269, align 4
  %270 = load i32, i32* %23, align 4
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 6
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  store i32 %270, i32* %273, align 8
  %274 = load i32, i32* %24, align 4
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 6
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  store i32 %274, i32* %277, align 4
  %278 = load i32, i32* %25, align 4
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 6
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 4
  store i32 %278, i32* %281, align 8
  %282 = load i32, i32* %18, align 4
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 6
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 5
  store i32 %282, i32* %285, align 4
  %286 = load i32, i32* %28, align 4
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 6
  store i32 %286, i32* %289, align 8
  %290 = load i32, i32* %26, align 4
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load double, double* %27, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 1
  store double %293, double* %295, align 8
  %296 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 5
  store i32* null, i32** %297, align 8
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 4
  store i32* null, i32** %299, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 3
  store i32* null, i32** %301, align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %303 = icmp ne %struct.TYPE_16__* %302, null
  br i1 %303, label %304, label %316

304:                                              ; preds = %252
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = icmp sgt i32 %307, 0
  br i1 %308, label %314, label %309

309:                                              ; preds = %304
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 0
  %312 = load double, double* %311, align 8
  %313 = fcmp ogt double %312, 0.000000e+00
  br label %314

314:                                              ; preds = %309, %304
  %315 = phi i1 [ true, %304 ], [ %313, %309 ]
  br label %316

316:                                              ; preds = %314, %252
  %317 = phi i1 [ false, %252 ], [ %315, %314 ]
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 2
  store i32 %319, i32* %321, align 8
  br label %322

322:                                              ; preds = %316, %98
  %323 = load i32, i32* %11, align 4
  %324 = call i32 @heap_freetuple(i32 %323)
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %325, %struct.TYPE_14__** %5, align 8
  br label %326

326:                                              ; preds = %322, %41
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %327
}

declare dso_local i32 @autovac_refresh_stats(...) #1

declare dso_local i32* @pgstat_fetch_stat_dbentry(i32) #1

declare dso_local i32 @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local %struct.TYPE_16__* @extract_autovac_opts(i32, i32) #1

declare dso_local %struct.TYPE_13__* @hash_search(i32*, i32*, i32, i32*) #1

declare dso_local i32* @get_pgstat_tabentry_relid(i32, i32, i32*, i32*) #1

declare dso_local i32 @relation_needs_vacanalyze(i32, %struct.TYPE_16__*, %struct.TYPE_15__*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @palloc(i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_initsplan.c_distribute_qual_to_rels.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_initsplan.c_distribute_qual_to_rels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32*, i32*, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32*, i32*, i64, i64, i32*, i32* }

@JOIN_INNER = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"JOIN qualification cannot refer to other relations\00", align 1
@BMS_MULTIPLE = common dso_local global i64 0, align 8
@PVC_RECURSE_AGGREGATES = common dso_local global i32 0, align 4
@PVC_RECURSE_WINDOWFUNCS = common dso_local global i32 0, align 4
@PVC_INCLUDE_PLACEHOLDERS = common dso_local global i32 0, align 4
@JOIN_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, i32, i32, i64, i32, i32*, i32*, i32*, i32*, i32**)* @distribute_qual_to_rels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @distribute_qual_to_rels(%struct.TYPE_22__* %0, i32* %1, i32 %2, i32 %3, i64 %4, i32 %5, i32* %6, i32* %7, i32* %8, i32* %9, i32** %10) #0 {
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_21__*, align 8
  %31 = alloca %struct.TYPE_21__*, align 8
  %32 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32** %10, i32*** %22, align 8
  store i32 0, i32* %26, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = call i32* @pull_varnos(i32* %33)
  store i32* %34, i32** %23, align 8
  %35 = load i32*, i32** %23, align 8
  %36 = load i32*, i32** %18, align 8
  %37 = call i64 @bms_is_subset(i32* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %11
  %40 = call i64 @palloc(i32 48)
  %41 = inttoptr i64 %40 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %31, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @Assert(i32 %44)
  %46 = load i64, i64* %16, align 8
  %47 = load i64, i64* @JOIN_INNER, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @Assert(i32 %54)
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 5
  store i32* %56, i32** %58, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 4
  store i32* %59, i32** %61, align 8
  %62 = load i32**, i32*** %22, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %65 = call i8* @lappend(i32* %63, %struct.TYPE_21__* %64)
  %66 = bitcast i8* %65 to i32*
  %67 = load i32**, i32*** %22, align 8
  store i32* %66, i32** %67, align 8
  br label %323

68:                                               ; preds = %11
  %69 = load i32*, i32** %19, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %23, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i64 @bms_is_subset(i32* %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ERROR, align 4
  %78 = call i32 @elog(i32 %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71, %68
  %80 = load i32*, i32** %23, align 8
  %81 = call i64 @bms_is_empty(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %113

83:                                               ; preds = %79
  %84 = load i32*, i32** %19, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32*, i32** %19, align 8
  %88 = call i32* @bms_copy(i32* %87)
  store i32* %88, i32** %23, align 8
  br label %112

89:                                               ; preds = %83
  %90 = load i32*, i32** %18, align 8
  %91 = call i32* @bms_copy(i32* %90)
  store i32* %91, i32** %23, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @contain_volatile_functions(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %111, label %95

95:                                               ; preds = %89
  store i32 1, i32* %26, align 4
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = call i32* @get_relids_in_jointree(i32* %106, i32 0)
  store i32* %107, i32** %23, align 8
  %108 = load i32*, i32** %23, align 8
  %109 = call i32* @bms_copy(i32* %108)
  store i32* %109, i32** %18, align 8
  br label %110

110:                                              ; preds = %100, %95
  br label %111

111:                                              ; preds = %110, %89
  br label %112

112:                                              ; preds = %111, %86
  br label %113

113:                                              ; preds = %112, %79
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32*, i32** %19, align 8
  %118 = icmp ne i32* %117, null
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i32 @Assert(i32 %120)
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %122 = load i32*, i32** %21, align 8
  store i32* %122, i32** %29, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %183

123:                                              ; preds = %113
  %124 = load i32*, i32** %23, align 8
  %125 = load i32*, i32** %20, align 8
  %126 = call i64 @bms_overlap(i32* %124, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  store i32 0, i32* %24, align 4
  store i32 0, i32* %27, align 4
  store i32 1, i32* %28, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %130 = call i32 @check_outerjoin_delay(%struct.TYPE_22__* %129, i32** %23, i32** %29, i32 0)
  store i32 %130, i32* %25, align 4
  %131 = load i32*, i32** %19, align 8
  %132 = ptrtoint i32* %131 to i32
  %133 = call i32 @Assert(i32 %132)
  %134 = load i32*, i32** %19, align 8
  store i32* %134, i32** %23, align 8
  %135 = load i32, i32* %26, align 4
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  %139 = call i32 @Assert(i32 %138)
  br label %182

140:                                              ; preds = %123
  store i32 1, i32* %24, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %142 = call i32 @check_outerjoin_delay(%struct.TYPE_22__* %141, i32** %23, i32** %29, i32 1)
  store i32 %142, i32* %25, align 4
  %143 = load i32, i32* %25, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %176

145:                                              ; preds = %140
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load i32*, i32** %23, align 8
  %152 = load i32*, i32** %18, align 8
  %153 = call i64 @bms_is_subset(i32* %151, i32* %152)
  %154 = icmp ne i64 %153, 0
  br label %155

155:                                              ; preds = %150, %145
  %156 = phi i1 [ true, %145 ], [ %154, %150 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @Assert(i32 %157)
  %159 = load i32*, i32** %19, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %166, label %161

161:                                              ; preds = %155
  %162 = load i32*, i32** %23, align 8
  %163 = load i32*, i32** %19, align 8
  %164 = call i64 @bms_is_subset(i32* %162, i32* %163)
  %165 = icmp ne i64 %164, 0
  br label %166

166:                                              ; preds = %161, %155
  %167 = phi i1 [ true, %155 ], [ %165, %161 ]
  %168 = zext i1 %167 to i32
  %169 = call i32 @Assert(i32 %168)
  store i32 0, i32* %27, align 4
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = call i64 @check_redundant_nullability_qual(%struct.TYPE_22__* %170, i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %323

175:                                              ; preds = %166
  br label %181

176:                                              ; preds = %140
  store i32 1, i32* %27, align 4
  %177 = load i32*, i32** %20, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 1, i32* %15, align 4
  br label %180

180:                                              ; preds = %179, %176
  br label %181

181:                                              ; preds = %180, %175
  store i32 0, i32* %28, align 4
  br label %182

182:                                              ; preds = %181, %128
  br label %183

183:                                              ; preds = %182, %116
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %24, align 4
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %17, align 4
  %189 = load i32*, i32** %23, align 8
  %190 = load i32*, i32** %20, align 8
  %191 = load i32*, i32** %29, align 8
  %192 = call %struct.TYPE_21__* @make_restrictinfo(i32* %184, i32 %185, i32 %186, i32 %187, i32 %188, i32* %189, i32* %190, i32* %191)
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %30, align 8
  %193 = load i32*, i32** %23, align 8
  %194 = call i64 @bms_membership(i32* %193)
  %195 = load i64, i64* @BMS_MULTIPLE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %183
  %198 = load i32*, i32** %13, align 8
  %199 = load i32, i32* @PVC_RECURSE_AGGREGATES, align 4
  %200 = load i32, i32* @PVC_RECURSE_WINDOWFUNCS, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @PVC_INCLUDE_PLACEHOLDERS, align 4
  %203 = or i32 %201, %202
  %204 = call i32* @pull_var_clause(i32* %198, i32 %203)
  store i32* %204, i32** %32, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %206 = load i32*, i32** %32, align 8
  %207 = load i32*, i32** %23, align 8
  %208 = call i32 @add_vars_to_targetlist(%struct.TYPE_22__* %205, i32* %206, i32* %207, i32 0)
  %209 = load i32*, i32** %32, align 8
  %210 = call i32 @list_free(i32* %209)
  br label %211

211:                                              ; preds = %197, %183
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %213 = call i32 @check_mergejoinable(%struct.TYPE_21__* %212)
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %319

218:                                              ; preds = %211
  %219 = load i32, i32* %27, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %242

221:                                              ; preds = %218
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %224 = call i64 @check_equivalence_delay(%struct.TYPE_22__* %222, %struct.TYPE_21__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i64 @process_equivalence(%struct.TYPE_22__* %227, %struct.TYPE_21__** %30, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %323

232:                                              ; preds = %226, %221
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %240 = call i32 @initialize_mergeclause_eclasses(%struct.TYPE_22__* %238, %struct.TYPE_21__* %239)
  br label %241

241:                                              ; preds = %237, %232
  br label %318

242:                                              ; preds = %218
  %243 = load i32, i32* %28, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %313

245:                                              ; preds = %242
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %313

250:                                              ; preds = %245
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %253 = call i32 @initialize_mergeclause_eclasses(%struct.TYPE_22__* %251, %struct.TYPE_21__* %252)
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load i32*, i32** %20, align 8
  %258 = call i64 @bms_is_subset(i32* %256, i32* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %250
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32*, i32** %20, align 8
  %265 = call i64 @bms_overlap(i32* %263, i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %260
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 4
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %272 = call i8* @lappend(i32* %270, %struct.TYPE_21__* %271)
  %273 = bitcast i8* %272 to i32*
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 4
  store i32* %273, i32** %275, align 8
  br label %323

276:                                              ; preds = %260, %250
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i32*, i32** %20, align 8
  %281 = call i64 @bms_is_subset(i32* %279, i32* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %276
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i32*, i32** %20, align 8
  %288 = call i64 @bms_overlap(i32* %286, i32* %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %283
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 3
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %295 = call i8* @lappend(i32* %293, %struct.TYPE_21__* %294)
  %296 = bitcast i8* %295 to i32*
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 3
  store i32* %296, i32** %298, align 8
  br label %323

299:                                              ; preds = %283, %276
  %300 = load i64, i64* %16, align 8
  %301 = load i64, i64* @JOIN_FULL, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %312

303:                                              ; preds = %299
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 2
  %306 = load i32*, i32** %305, align 8
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %308 = call i8* @lappend(i32* %306, %struct.TYPE_21__* %307)
  %309 = bitcast i8* %308 to i32*
  %310 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %311 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %310, i32 0, i32 2
  store i32* %309, i32** %311, align 8
  br label %323

312:                                              ; preds = %299
  br label %317

313:                                              ; preds = %245, %242
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %316 = call i32 @initialize_mergeclause_eclasses(%struct.TYPE_22__* %314, %struct.TYPE_21__* %315)
  br label %317

317:                                              ; preds = %313, %312
  br label %318

318:                                              ; preds = %317, %241
  br label %319

319:                                              ; preds = %318, %211
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %322 = call i32 @distribute_restrictinfo_to_rels(%struct.TYPE_22__* %320, %struct.TYPE_21__* %321)
  br label %323

323:                                              ; preds = %319, %303, %290, %267, %231, %174, %39
  ret void
}

declare dso_local i32* @pull_varnos(i32*) #1

declare dso_local i64 @bms_is_subset(i32*, i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @lappend(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @bms_is_empty(i32*) #1

declare dso_local i32* @bms_copy(i32*) #1

declare dso_local i32 @contain_volatile_functions(i32*) #1

declare dso_local i32* @get_relids_in_jointree(i32*, i32) #1

declare dso_local i64 @bms_overlap(i32*, i32*) #1

declare dso_local i32 @check_outerjoin_delay(%struct.TYPE_22__*, i32**, i32**, i32) #1

declare dso_local i64 @check_redundant_nullability_qual(%struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_21__* @make_restrictinfo(i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @bms_membership(i32*) #1

declare dso_local i32* @pull_var_clause(i32*, i32) #1

declare dso_local i32 @add_vars_to_targetlist(%struct.TYPE_22__*, i32*, i32*, i32) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @check_mergejoinable(%struct.TYPE_21__*) #1

declare dso_local i64 @check_equivalence_delay(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @process_equivalence(%struct.TYPE_22__*, %struct.TYPE_21__**, i32) #1

declare dso_local i32 @initialize_mergeclause_eclasses(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @distribute_restrictinfo_to_rels(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

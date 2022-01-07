; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_try_partitionwise_join.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_try_partitionwise_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i64, i32, %struct.TYPE_25__**, i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized join type: %d\00", align 1
@RELOPT_OTHER_MEMBER_REL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*)* @try_partitionwise_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @try_partitionwise_join(i32* %0, %struct.TYPE_25__* %1, %struct.TYPE_25__* %2, %struct.TYPE_25__* %3, %struct.TYPE_24__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %8, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_25__* %3, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %11, align 8
  store i32* %5, i32** %12, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %28 = call i32 @IS_SIMPLE_REL(%struct.TYPE_25__* %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %30 = call i32 @IS_SIMPLE_REL(%struct.TYPE_25__* %29)
  store i32 %30, i32* %14, align 4
  %31 = call i32 (...) @check_stack_depth()
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %33 = call i64 @IS_PARTITIONED_REL(%struct.TYPE_25__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %6
  br label %345

36:                                               ; preds = %6
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @Assert(i32 %39)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %42 = call i64 @IS_PARTITIONED_REL(%struct.TYPE_25__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %46 = call i64 @IS_PARTITIONED_REL(%struct.TYPE_25__* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %36
  %49 = phi i1 [ false, %36 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %53 = call i64 @REL_HAS_ALL_PART_PROPS(%struct.TYPE_25__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %57 = call i64 @REL_HAS_ALL_PART_PROPS(%struct.TYPE_25__* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %55, %48
  %60 = phi i1 [ false, %48 ], [ %58, %55 ]
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br label %72

72:                                               ; preds = %67, %59
  %73 = phi i1 [ false, %59 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 6
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %77, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 6
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  %82 = icmp eq %struct.TYPE_23__* %78, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %72
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %85, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  %90 = icmp eq %struct.TYPE_23__* %86, %89
  br label %91

91:                                               ; preds = %83, %72
  %92 = phi i1 [ false, %72 ], [ %90, %83 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 6
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 6
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %105, i32 0, i32 6
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @partition_bounds_equal(i32 %99, i32 %104, i32 %109, i32 %112, i32 %115)
  %117 = call i32 @Assert(i32 %116)
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @partition_bounds_equal(i32 %122, i32 %127, i32 %132, i32 %135, i32 %138)
  %140 = call i32 @Assert(i32 %139)
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %144

144:                                              ; preds = %342, %91
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %345

148:                                              ; preds = %144
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %151, i64 %153
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %154, align 8
  store %struct.TYPE_25__* %155, %struct.TYPE_25__** %17, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %157, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %158, i64 %160
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  store %struct.TYPE_25__* %162, %struct.TYPE_25__** %18, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %164 = icmp eq %struct.TYPE_25__* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %148
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %167 = call i32 @IS_DUMMY_REL(%struct.TYPE_25__* %166)
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %165, %148
  %170 = phi i1 [ true, %148 ], [ %168, %165 ]
  %171 = zext i1 %170 to i32
  store i32 %171, i32* %19, align 4
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %173 = icmp eq %struct.TYPE_25__* %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %176 = call i32 @IS_DUMMY_REL(%struct.TYPE_25__* %175)
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %174, %169
  %179 = phi i1 [ true, %169 ], [ %177, %174 ]
  %180 = zext i1 %179 to i32
  store i32 %180, i32* %20, align 4
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  switch i32 %183, label %205 [
    i32 130, label %184
    i32 128, label %184
    i32 129, label %192
    i32 132, label %192
    i32 131, label %197
  ]

184:                                              ; preds = %178, %178
  %185 = load i32, i32* %19, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %20, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187, %184
  br label %342

191:                                              ; preds = %187
  br label %211

192:                                              ; preds = %178, %178
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %342

196:                                              ; preds = %192
  br label %211

197:                                              ; preds = %178
  %198 = load i32, i32* %19, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %342

204:                                              ; preds = %200, %197
  br label %211

205:                                              ; preds = %178
  %206 = load i32, i32* @ERROR, align 4
  %207 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @elog(i32 %206, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %205, %204, %196, %191
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %213 = icmp eq %struct.TYPE_25__* %212, null
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %216 = icmp eq %struct.TYPE_25__* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214, %211
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %218, i32 0, i32 1
  store i32 0, i32* %219, align 4
  br label %345

220:                                              ; preds = %214
  %221 = load i32, i32* %13, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %220
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %241, label %228

228:                                              ; preds = %223
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 2
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @RELOPT_OTHER_MEMBER_REL, align 8
  %233 = icmp eq i64 %231, %232
  %234 = zext i1 %233 to i32
  %235 = call i32 @Assert(i32 %234)
  %236 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %237 = call i32 @IS_DUMMY_REL(%struct.TYPE_25__* %236)
  %238 = call i32 @Assert(i32 %237)
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 1
  store i32 0, i32* %240, align 4
  br label %345

241:                                              ; preds = %223, %220
  %242 = load i32, i32* %14, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %241
  %245 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %246 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %262, label %249

249:                                              ; preds = %244
  %250 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %251 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @RELOPT_OTHER_MEMBER_REL, align 8
  %254 = icmp eq i64 %252, %253
  %255 = zext i1 %254 to i32
  %256 = call i32 @Assert(i32 %255)
  %257 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %258 = call i32 @IS_DUMMY_REL(%struct.TYPE_25__* %257)
  %259 = call i32 @Assert(i32 %258)
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 1
  store i32 0, i32* %261, align 4
  br label %345

262:                                              ; preds = %244, %241
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @bms_overlap(i32 %265, i32 %268)
  %270 = icmp ne i32 %269, 0
  %271 = xor i1 %270, true
  %272 = zext i1 %271 to i32
  %273 = call i32 @Assert(i32 %272)
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @bms_union(i32 %276, i32 %279)
  store i32 %280, i32* %24, align 4
  %281 = load i32*, i32** %7, align 8
  %282 = load i32, i32* %24, align 4
  %283 = call i32** @find_appinfos_by_relids(i32* %281, i32 %282, i32* %26)
  store i32** %283, i32*** %25, align 8
  %284 = load i32*, i32** %7, align 8
  %285 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %287 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call %struct.TYPE_24__* @build_child_join_sjinfo(i32* %284, %struct.TYPE_24__* %285, i32 %288, i32 %291)
  store %struct.TYPE_24__* %292, %struct.TYPE_24__** %21, align 8
  %293 = load i32*, i32** %7, align 8
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %26, align 4
  %296 = load i32**, i32*** %25, align 8
  %297 = call i64 @adjust_appendrel_attrs(i32* %293, i32* %294, i32 %295, i32** %296)
  %298 = inttoptr i64 %297 to i32*
  store i32* %298, i32** %22, align 8
  %299 = load i32**, i32*** %25, align 8
  %300 = call i32 @pfree(i32** %299)
  %301 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %302 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %301, i32 0, i32 4
  %303 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %302, align 8
  %304 = load i32, i32* %16, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %303, i64 %305
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %306, align 8
  store %struct.TYPE_25__* %307, %struct.TYPE_25__** %23, align 8
  %308 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %309 = icmp ne %struct.TYPE_25__* %308, null
  br i1 %309, label %328, label %310

310:                                              ; preds = %262
  %311 = load i32*, i32** %7, align 8
  %312 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %313 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %314 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %315 = load i32*, i32** %22, align 8
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call %struct.TYPE_25__* @build_child_join_rel(i32* %311, %struct.TYPE_25__* %312, %struct.TYPE_25__* %313, %struct.TYPE_25__* %314, i32* %315, %struct.TYPE_24__* %316, i32 %319)
  store %struct.TYPE_25__* %320, %struct.TYPE_25__** %23, align 8
  %321 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %322 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %323 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %322, i32 0, i32 4
  %324 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %323, align 8
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %324, i64 %326
  store %struct.TYPE_25__* %321, %struct.TYPE_25__** %327, align 8
  br label %328

328:                                              ; preds = %310, %262
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = load i32, i32* %24, align 4
  %333 = call i32 @bms_equal(i32 %331, i32 %332)
  %334 = call i32 @Assert(i32 %333)
  %335 = load i32*, i32** %7, align 8
  %336 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %337 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %338 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %340 = load i32*, i32** %22, align 8
  %341 = call i32 @populate_joinrel_with_paths(i32* %335, %struct.TYPE_25__* %336, %struct.TYPE_25__* %337, %struct.TYPE_25__* %338, %struct.TYPE_24__* %339, i32* %340)
  br label %342

342:                                              ; preds = %328, %203, %195, %190
  %343 = load i32, i32* %16, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %16, align 4
  br label %144

345:                                              ; preds = %35, %217, %228, %249, %144
  ret void
}

declare dso_local i32 @IS_SIMPLE_REL(%struct.TYPE_25__*) #1

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i64 @IS_PARTITIONED_REL(%struct.TYPE_25__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @REL_HAS_ALL_PART_PROPS(%struct.TYPE_25__*) #1

declare dso_local i32 @partition_bounds_equal(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_DUMMY_REL(%struct.TYPE_25__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @bms_overlap(i32, i32) #1

declare dso_local i32 @bms_union(i32, i32) #1

declare dso_local i32** @find_appinfos_by_relids(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @build_child_join_sjinfo(i32*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @adjust_appendrel_attrs(i32*, i32*, i32, i32**) #1

declare dso_local i32 @pfree(i32**) #1

declare dso_local %struct.TYPE_25__* @build_child_join_rel(i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @bms_equal(i32, i32) #1

declare dso_local i32 @populate_joinrel_with_paths(i32*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

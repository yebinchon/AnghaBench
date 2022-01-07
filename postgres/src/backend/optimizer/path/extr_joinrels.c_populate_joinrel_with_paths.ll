; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_populate_joinrel_with_paths.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/path/extr_joinrels.c_populate_joinrel_with_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32 }

@JOIN_RIGHT = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"FULL JOIN is only supported with merge-joinable or hash-joinable join conditions\00", align 1
@JOIN_UNIQUE_INNER = common dso_local global i32 0, align 4
@JOIN_UNIQUE_OUTER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unrecognized join type: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*)* @populate_joinrel_with_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_joinrel_with_paths(i32* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__* %2, %struct.TYPE_21__* %3, %struct.TYPE_20__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %9, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %266 [
    i32 130, label %16
    i32 129, label %47
    i32 131, label %92
    i32 128, label %135
    i32 132, label %229
  ]

16:                                               ; preds = %6
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %18 = call i32 @is_dummy_rel(%struct.TYPE_21__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %22 = call i32 @is_dummy_rel(%struct.TYPE_21__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %12, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = call i32 @restriction_is_constant_false(i32* %25, %struct.TYPE_21__* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %20, %16
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %31 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %30)
  br label %272

32:                                               ; preds = %24
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @add_paths_to_joinrel(i32* %33, %struct.TYPE_21__* %34, %struct.TYPE_21__* %35, %struct.TYPE_21__* %36, i32 130, %struct.TYPE_20__* %37, i32* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @add_paths_to_joinrel(i32* %40, %struct.TYPE_21__* %41, %struct.TYPE_21__* %42, %struct.TYPE_21__* %43, i32 130, %struct.TYPE_20__* %44, i32* %45)
  br label %272

47:                                               ; preds = %6
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %49 = call i32 @is_dummy_rel(%struct.TYPE_21__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %54 = call i32 @restriction_is_constant_false(i32* %52, %struct.TYPE_21__* %53, i32 1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %47
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %57)
  br label %272

59:                                               ; preds = %51
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %62 = call i32 @restriction_is_constant_false(i32* %60, %struct.TYPE_21__* %61, i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @bms_is_subset(i32 %67, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %75 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %74)
  br label %76

76:                                               ; preds = %73, %64, %59
  %77 = load i32*, i32** %7, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @add_paths_to_joinrel(i32* %77, %struct.TYPE_21__* %78, %struct.TYPE_21__* %79, %struct.TYPE_21__* %80, i32 129, %struct.TYPE_20__* %81, i32* %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %88 = load i32, i32* @JOIN_RIGHT, align 4
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @add_paths_to_joinrel(i32* %84, %struct.TYPE_21__* %85, %struct.TYPE_21__* %86, %struct.TYPE_21__* %87, i32 %88, %struct.TYPE_20__* %89, i32* %90)
  br label %272

92:                                               ; preds = %6
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %94 = call i32 @is_dummy_rel(%struct.TYPE_21__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %98 = call i32 @is_dummy_rel(%struct.TYPE_21__* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %96, %92
  %101 = load i32*, i32** %12, align 8
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %103 = call i32 @restriction_is_constant_false(i32* %101, %struct.TYPE_21__* %102, i32 1)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100, %96
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %107 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %106)
  br label %272

108:                                              ; preds = %100
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @add_paths_to_joinrel(i32* %109, %struct.TYPE_21__* %110, %struct.TYPE_21__* %111, %struct.TYPE_21__* %112, i32 131, %struct.TYPE_20__* %113, i32* %114)
  %116 = load i32*, i32** %7, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @add_paths_to_joinrel(i32* %116, %struct.TYPE_21__* %117, %struct.TYPE_21__* %118, %struct.TYPE_21__* %119, i32 131, %struct.TYPE_20__* %120, i32* %121)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @NIL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %108
  %129 = load i32, i32* @ERROR, align 4
  %130 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %131 = call i32 @errcode(i32 %130)
  %132 = call i32 @errmsg(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %133 = call i32 @ereport(i32 %129, i32 %132)
  br label %134

134:                                              ; preds = %128, %108
  br label %272

135:                                              ; preds = %6
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @bms_is_subset(i32 %138, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %135
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @bms_is_subset(i32 %147, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %177

153:                                              ; preds = %144
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %155 = call i32 @is_dummy_rel(%struct.TYPE_21__* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %166, label %157

157:                                              ; preds = %153
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %159 = call i32 @is_dummy_rel(%struct.TYPE_21__* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i32*, i32** %12, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %164 = call i32 @restriction_is_constant_false(i32* %162, %struct.TYPE_21__* %163, i32 0)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161, %157, %153
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %168 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %167)
  br label %272

169:                                              ; preds = %161
  %170 = load i32*, i32** %7, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %175 = load i32*, i32** %12, align 8
  %176 = call i32 @add_paths_to_joinrel(i32* %170, %struct.TYPE_21__* %171, %struct.TYPE_21__* %172, %struct.TYPE_21__* %173, i32 128, %struct.TYPE_20__* %174, i32* %175)
  br label %177

177:                                              ; preds = %169, %144, %135
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @bms_equal(i32 %180, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %228

186:                                              ; preds = %177
  %187 = load i32*, i32** %7, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %193 = call i32* @create_unique_path(i32* %187, %struct.TYPE_21__* %188, i32 %191, %struct.TYPE_20__* %192)
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %228

195:                                              ; preds = %186
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %197 = call i32 @is_dummy_rel(%struct.TYPE_21__* %196)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %195
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %201 = call i32 @is_dummy_rel(%struct.TYPE_21__* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %199
  %204 = load i32*, i32** %12, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %206 = call i32 @restriction_is_constant_false(i32* %204, %struct.TYPE_21__* %205, i32 0)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203, %199, %195
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %210 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %209)
  br label %272

211:                                              ; preds = %203
  %212 = load i32*, i32** %7, align 8
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %216 = load i32, i32* @JOIN_UNIQUE_INNER, align 4
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %218 = load i32*, i32** %12, align 8
  %219 = call i32 @add_paths_to_joinrel(i32* %212, %struct.TYPE_21__* %213, %struct.TYPE_21__* %214, %struct.TYPE_21__* %215, i32 %216, %struct.TYPE_20__* %217, i32* %218)
  %220 = load i32*, i32** %7, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %222 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %224 = load i32, i32* @JOIN_UNIQUE_OUTER, align 4
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %226 = load i32*, i32** %12, align 8
  %227 = call i32 @add_paths_to_joinrel(i32* %220, %struct.TYPE_21__* %221, %struct.TYPE_21__* %222, %struct.TYPE_21__* %223, i32 %224, %struct.TYPE_20__* %225, i32* %226)
  br label %228

228:                                              ; preds = %211, %186, %177
  br label %272

229:                                              ; preds = %6
  %230 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %231 = call i32 @is_dummy_rel(%struct.TYPE_21__* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %238, label %233

233:                                              ; preds = %229
  %234 = load i32*, i32** %12, align 8
  %235 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %236 = call i32 @restriction_is_constant_false(i32* %234, %struct.TYPE_21__* %235, i32 1)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %233, %229
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %240 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %239)
  br label %272

241:                                              ; preds = %233
  %242 = load i32*, i32** %12, align 8
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %244 = call i32 @restriction_is_constant_false(i32* %242, %struct.TYPE_21__* %243, i32 0)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %241
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @bms_is_subset(i32 %249, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %257 = call i32 @mark_dummy_rel(%struct.TYPE_21__* %256)
  br label %258

258:                                              ; preds = %255, %246, %241
  %259 = load i32*, i32** %7, align 8
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %264 = load i32*, i32** %12, align 8
  %265 = call i32 @add_paths_to_joinrel(i32* %259, %struct.TYPE_21__* %260, %struct.TYPE_21__* %261, %struct.TYPE_21__* %262, i32 132, %struct.TYPE_20__* %263, i32* %264)
  br label %272

266:                                              ; preds = %6
  %267 = load i32, i32* @ERROR, align 4
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @elog(i32 %267, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %270)
  br label %272

272:                                              ; preds = %266, %258, %238, %228, %208, %166, %134, %105, %76, %56, %32, %29
  %273 = load i32*, i32** %7, align 8
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %278 = load i32*, i32** %12, align 8
  %279 = call i32 @try_partitionwise_join(i32* %273, %struct.TYPE_21__* %274, %struct.TYPE_21__* %275, %struct.TYPE_21__* %276, %struct.TYPE_20__* %277, i32* %278)
  ret void
}

declare dso_local i32 @is_dummy_rel(%struct.TYPE_21__*) #1

declare dso_local i32 @restriction_is_constant_false(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @mark_dummy_rel(%struct.TYPE_21__*) #1

declare dso_local i32 @add_paths_to_joinrel(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @bms_is_subset(i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @bms_equal(i32, i32) #1

declare dso_local i32* @create_unique_path(i32*, %struct.TYPE_21__*, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @try_partitionwise_join(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_20__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

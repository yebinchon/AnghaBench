; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_JsonbDeepContains.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_JsonbDeepContains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }

@WJB_BEGIN_OBJECT = common dso_local global i64 0, align 8
@WJB_BEGIN_ARRAY = common dso_local global i64 0, align 8
@jbvObject = common dso_local global i64 0, align 8
@WJB_END_OBJECT = common dso_local global i64 0, align 8
@WJB_KEY = common dso_local global i64 0, align 8
@jbvString = common dso_local global i64 0, align 8
@WJB_VALUE = common dso_local global i64 0, align 8
@jbvBinary = common dso_local global i64 0, align 8
@jbvArray = common dso_local global i64 0, align 8
@WJB_END_ARRAY = common dso_local global i64 0, align 8
@WJB_ELEM = common dso_local global i64 0, align 8
@JB_FARRAY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid jsonb container type\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"unexpectedly fell off end of jsonb container\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @JsonbDeepContains(%struct.TYPE_27__** %0, %struct.TYPE_27__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__**, align 8
  %5 = alloca %struct.TYPE_27__**, align 8
  %6 = alloca %struct.TYPE_26__, align 8
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_27__*, align 8
  %19 = alloca %struct.TYPE_27__*, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_27__** %0, %struct.TYPE_27__*** %4, align 8
  store %struct.TYPE_27__** %1, %struct.TYPE_27__*** %5, align 8
  %21 = call i32 (...) @check_stack_depth()
  %22 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %23 = call i64 @JsonbIteratorNext(%struct.TYPE_27__** %22, %struct.TYPE_26__* %6, i32 0)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %25 = call i64 @JsonbIteratorNext(%struct.TYPE_27__** %24, %struct.TYPE_26__* %7, i32 0)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ true, %29 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @Assert(i32 %39)
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %37
  %49 = phi i1 [ true, %37 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  store i32 0, i32* %3, align 4
  br label %328

52:                                               ; preds = %2
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @WJB_BEGIN_OBJECT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %171

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @jbvObject, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @jbvObject, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @Assert(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %328

79:                                               ; preds = %56
  br label %80

80:                                               ; preds = %170, %79
  %81 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %82 = call i64 @JsonbIteratorNext(%struct.TYPE_27__** %81, %struct.TYPE_26__* %7, i32 0)
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* @WJB_END_OBJECT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  store i32 1, i32* %3, align 4
  br label %328

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @WJB_KEY, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @jbvString, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @Assert(i32 %97)
  %99 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call %struct.TYPE_26__* @getKeyJsonValueFromContainer(i32 %102, i32 %106, i32 %110, %struct.TYPE_26__* %11)
  store %struct.TYPE_26__* %111, %struct.TYPE_26__** %10, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %113 = icmp ne %struct.TYPE_26__* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %328

115:                                              ; preds = %87
  %116 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %117 = call i64 @JsonbIteratorNext(%struct.TYPE_27__** %116, %struct.TYPE_26__* %7, i32 1)
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @WJB_VALUE, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @Assert(i32 %121)
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %328

130:                                              ; preds = %115
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %132 = call i64 @IsAJsonbScalar(%struct.TYPE_26__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %136 = call i32 @equalsJsonbScalarValue(%struct.TYPE_26__* %135, %struct.TYPE_26__* %7)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  br label %328

139:                                              ; preds = %134
  br label %169

140:                                              ; preds = %130
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @jbvBinary, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @Assert(i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @jbvBinary, align 8
  %151 = icmp eq i64 %149, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @Assert(i32 %152)
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call %struct.TYPE_27__* @JsonbIteratorInit(i32 %158)
  store %struct.TYPE_27__* %159, %struct.TYPE_27__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call %struct.TYPE_27__* @JsonbIteratorInit(i32 %163)
  store %struct.TYPE_27__* %164, %struct.TYPE_27__** %13, align 8
  %165 = call i32 @JsonbDeepContains(%struct.TYPE_27__** %12, %struct.TYPE_27__** %13)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %328

168:                                              ; preds = %140
  br label %169

169:                                              ; preds = %168, %139
  br label %170

170:                                              ; preds = %169
  br label %80

171:                                              ; preds = %52
  %172 = load i64, i64* %9, align 8
  %173 = load i64, i64* @WJB_BEGIN_ARRAY, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %320

175:                                              ; preds = %171
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %15, align 4
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @jbvArray, align 8
  %183 = icmp eq i64 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i32 @Assert(i32 %184)
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @jbvArray, align 8
  %189 = icmp eq i64 %187, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @Assert(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %175
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  store i32 0, i32* %3, align 4
  br label %328

204:                                              ; preds = %197, %175
  br label %205

205:                                              ; preds = %319, %204
  %206 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %5, align 8
  %207 = call i64 @JsonbIteratorNext(%struct.TYPE_27__** %206, %struct.TYPE_26__* %7, i32 1)
  store i64 %207, i64* %9, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load i64, i64* @WJB_END_ARRAY, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  store i32 1, i32* %3, align 4
  br label %328

212:                                              ; preds = %205
  %213 = load i64, i64* %9, align 8
  %214 = load i64, i64* @WJB_ELEM, align 8
  %215 = icmp eq i64 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @Assert(i32 %216)
  %218 = call i64 @IsAJsonbScalar(%struct.TYPE_26__* %7)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %212
  %221 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @JB_FARRAY, align 4
  %226 = call i32 @findJsonbValueFromContainer(i32 %224, i32 %225, %struct.TYPE_26__* %7)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %220
  store i32 0, i32* %3, align 4
  br label %328

229:                                              ; preds = %220
  br label %319

230:                                              ; preds = %212
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %232 = icmp eq %struct.TYPE_26__* %231, null
  br i1 %232, label %233, label %273

233:                                              ; preds = %230
  store i32 0, i32* %17, align 4
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = mul i64 48, %235
  %237 = trunc i64 %236 to i32
  %238 = call %struct.TYPE_26__* @palloc(i32 %237)
  store %struct.TYPE_26__* %238, %struct.TYPE_26__** %14, align 8
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %264, %233
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %267

243:                                              ; preds = %239
  %244 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %4, align 8
  %245 = call i64 @JsonbIteratorNext(%struct.TYPE_27__** %244, %struct.TYPE_26__* %6, i32 1)
  store i64 %245, i64* %9, align 8
  %246 = load i64, i64* %9, align 8
  %247 = load i64, i64* @WJB_ELEM, align 8
  %248 = icmp eq i64 %246, %247
  %249 = zext i1 %248 to i32
  %250 = call i32 @Assert(i32 %249)
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %6, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @jbvBinary, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %243
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %17, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %256, i64 %259
  %261 = bitcast %struct.TYPE_26__* %260 to i8*
  %262 = bitcast %struct.TYPE_26__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %262, i64 48, i1 false)
  br label %263

263:                                              ; preds = %255, %243
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %16, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %16, align 4
  br label %239

267:                                              ; preds = %239
  %268 = load i32, i32* %17, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  store i32 0, i32* %3, align 4
  br label %328

271:                                              ; preds = %267
  %272 = load i32, i32* %17, align 4
  store i32 %272, i32* %15, align 4
  br label %273

273:                                              ; preds = %271, %230
  store i32 0, i32* %16, align 4
  br label %274

274:                                              ; preds = %310, %273
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* %15, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %313

278:                                              ; preds = %274
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call %struct.TYPE_27__* @JsonbIteratorInit(i32 %286)
  store %struct.TYPE_27__* %287, %struct.TYPE_27__** %18, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call %struct.TYPE_27__* @JsonbIteratorInit(i32 %291)
  store %struct.TYPE_27__* %292, %struct.TYPE_27__** %19, align 8
  %293 = call i32 @JsonbDeepContains(%struct.TYPE_27__** %18, %struct.TYPE_27__** %19)
  store i32 %293, i32* %20, align 4
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %295 = icmp ne %struct.TYPE_27__* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %278
  %297 = load %struct.TYPE_27__*, %struct.TYPE_27__** %18, align 8
  %298 = call i32 @pfree(%struct.TYPE_27__* %297)
  br label %299

299:                                              ; preds = %296, %278
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %301 = icmp ne %struct.TYPE_27__* %300, null
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %19, align 8
  %304 = call i32 @pfree(%struct.TYPE_27__* %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = load i32, i32* %20, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  br label %313

309:                                              ; preds = %305
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %16, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %16, align 4
  br label %274

313:                                              ; preds = %308, %274
  %314 = load i32, i32* %16, align 4
  %315 = load i32, i32* %15, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %313
  store i32 0, i32* %3, align 4
  br label %328

318:                                              ; preds = %313
  br label %319

319:                                              ; preds = %318, %229
  br label %205

320:                                              ; preds = %171
  %321 = load i32, i32* @ERROR, align 4
  %322 = call i32 @elog(i32 %321, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* @ERROR, align 4
  %327 = call i32 @elog(i32 %326, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %328

328:                                              ; preds = %325, %317, %270, %228, %211, %203, %167, %138, %129, %114, %86, %78, %48
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i64 @JsonbIteratorNext(%struct.TYPE_27__**, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_26__* @getKeyJsonValueFromContainer(i32, i32, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @IsAJsonbScalar(%struct.TYPE_26__*) #1

declare dso_local i32 @equalsJsonbScalarValue(%struct.TYPE_26__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_27__* @JsonbIteratorInit(i32) #1

declare dso_local i32 @findJsonbValueFromContainer(i32, i32, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_26__* @palloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(%struct.TYPE_27__*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_DOTypeNameCompare.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_DOTypeNameCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_19__, i32, %struct.TYPE_28__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }

@dbObjectTypePriority = common dso_local global i32* null, align 8
@DO_FUNC = common dso_local global i64 0, align 8
@DO_AGG = common dso_local global i64 0, align 8
@DO_OPERATOR = common dso_local global i64 0, align 8
@DO_ATTRDEF = common dso_local global i64 0, align 8
@DO_POLICY = common dso_local global i64 0, align 8
@DO_TRIGGER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @DOTypeNameCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DOTypeNameCompare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca %struct.TYPE_22__*, align 8
  %20 = alloca %struct.TYPE_21__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_25__**
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %6, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.TYPE_25__**
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  store %struct.TYPE_25__* %27, %struct.TYPE_25__** %7, align 8
  %28 = load i32*, i32** @dbObjectTypePriority, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @dbObjectTypePriority, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %33, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %333

45:                                               ; preds = %2
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %49 = icmp ne %struct.TYPE_28__* %48, null
  br i1 %49, label %50, label %76

50:                                               ; preds = %45
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %52, align 8
  %54 = icmp ne %struct.TYPE_28__* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcmp(i32 %61, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %55
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %333

73:                                               ; preds = %55
  br label %75

74:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %333

75:                                               ; preds = %73
  br label %83

76:                                               ; preds = %45
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %78, align 8
  %80 = icmp ne %struct.TYPE_28__* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %333

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %75
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @strcmp(i32 %86, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %333

95:                                               ; preds = %83
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DO_FUNC, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DO_AGG, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %207

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %4, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_24__**
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %9, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = bitcast i8* %111 to %struct.TYPE_24__**
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %10, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %107
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %3, align 4
  br label %333

125:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %203, %125
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %206

132:                                              ; preds = %126
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call %struct.TYPE_20__* @findTypeByOid(i32 %139)
  store %struct.TYPE_20__* %140, %struct.TYPE_20__** %12, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.TYPE_20__* @findTypeByOid(i32 %147)
  store %struct.TYPE_20__* %148, %struct.TYPE_20__** %13, align 8
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %150 = icmp ne %struct.TYPE_20__* %149, null
  br i1 %150, label %151, label %202

151:                                              ; preds = %132
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = icmp ne %struct.TYPE_20__* %152, null
  br i1 %153, label %154, label %202

154:                                              ; preds = %151
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %157, align 8
  %159 = icmp ne %struct.TYPE_30__* %158, null
  br i1 %159, label %160, label %187

160:                                              ; preds = %154
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %163, align 8
  %165 = icmp ne %struct.TYPE_30__* %164, null
  br i1 %165, label %166, label %187

166:                                              ; preds = %160
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @strcmp(i32 %173, i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %166
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %3, align 4
  br label %333

186:                                              ; preds = %166
  br label %187

187:                                              ; preds = %186, %160, %154
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @strcmp(i32 %191, i32 %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %187
  %200 = load i32, i32* %8, align 4
  store i32 %200, i32* %3, align 4
  br label %333

201:                                              ; preds = %187
  br label %202

202:                                              ; preds = %201, %151, %132
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %11, align 4
  br label %126

206:                                              ; preds = %126
  br label %323

207:                                              ; preds = %101
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @DO_OPERATOR, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %232

213:                                              ; preds = %207
  %214 = load i8*, i8** %4, align 8
  %215 = bitcast i8* %214 to %struct.TYPE_23__**
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %215, align 8
  store %struct.TYPE_23__* %216, %struct.TYPE_23__** %14, align 8
  %217 = load i8*, i8** %5, align 8
  %218 = bitcast i8* %217 to %struct.TYPE_23__**
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %218, align 8
  store %struct.TYPE_23__* %219, %struct.TYPE_23__** %15, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %222, %225
  store i32 %226, i32* %8, align 4
  %227 = load i32, i32* %8, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %213
  %230 = load i32, i32* %8, align 4
  store i32 %230, i32* %3, align 4
  br label %333

231:                                              ; preds = %213
  br label %322

232:                                              ; preds = %207
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @DO_ATTRDEF, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %257

238:                                              ; preds = %232
  %239 = load i8*, i8** %4, align 8
  %240 = bitcast i8* %239 to %struct.TYPE_26__**
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %240, align 8
  store %struct.TYPE_26__* %241, %struct.TYPE_26__** %16, align 8
  %242 = load i8*, i8** %5, align 8
  %243 = bitcast i8* %242 to %struct.TYPE_26__**
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %243, align 8
  store %struct.TYPE_26__* %244, %struct.TYPE_26__** %17, align 8
  %245 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %246 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 %247, %250
  store i32 %251, i32* %8, align 4
  %252 = load i32, i32* %8, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %238
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* %3, align 4
  br label %333

256:                                              ; preds = %238
  br label %321

257:                                              ; preds = %232
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @DO_POLICY, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %288

263:                                              ; preds = %257
  %264 = load i8*, i8** %4, align 8
  %265 = bitcast i8* %264 to %struct.TYPE_22__**
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %265, align 8
  store %struct.TYPE_22__* %266, %struct.TYPE_22__** %18, align 8
  %267 = load i8*, i8** %5, align 8
  %268 = bitcast i8* %267 to %struct.TYPE_22__**
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  store %struct.TYPE_22__* %269, %struct.TYPE_22__** %19, align 8
  %270 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_33__*, %struct.TYPE_33__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @strcmp(i32 %275, i32 %281)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %263
  %286 = load i32, i32* %8, align 4
  store i32 %286, i32* %3, align 4
  br label %333

287:                                              ; preds = %263
  br label %320

288:                                              ; preds = %257
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @DO_TRIGGER, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %319

294:                                              ; preds = %288
  %295 = load i8*, i8** %4, align 8
  %296 = bitcast i8* %295 to %struct.TYPE_21__**
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %296, align 8
  store %struct.TYPE_21__* %297, %struct.TYPE_21__** %20, align 8
  %298 = load i8*, i8** %5, align 8
  %299 = bitcast i8* %298 to %struct.TYPE_21__**
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %299, align 8
  store %struct.TYPE_21__* %300, %struct.TYPE_21__** %21, align 8
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_35__*, %struct.TYPE_35__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @strcmp(i32 %306, i32 %312)
  store i32 %313, i32* %8, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %294
  %317 = load i32, i32* %8, align 4
  store i32 %317, i32* %3, align 4
  br label %333

318:                                              ; preds = %294
  br label %319

319:                                              ; preds = %318, %288
  br label %320

320:                                              ; preds = %319, %287
  br label %321

321:                                              ; preds = %320, %256
  br label %322

322:                                              ; preds = %321, %231
  br label %323

323:                                              ; preds = %322, %206
  %324 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @oidcmp(i32 %327, i32 %331)
  store i32 %332, i32* %3, align 4
  br label %333

333:                                              ; preds = %323, %316, %285, %254, %229, %199, %184, %123, %93, %81, %74, %71, %43
  %334 = load i32, i32* %3, align 4
  ret i32 %334
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local %struct.TYPE_20__* @findTypeByOid(i32) #1

declare dso_local i32 @oidcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

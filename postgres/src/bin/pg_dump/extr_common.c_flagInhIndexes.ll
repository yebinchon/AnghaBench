; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_flagInhIndexes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_common.c_flagInhIndexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_21__*, %struct.TYPE_20__**, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_17__, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i64 }

@DO_INDEX_ATTACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_20__*, i32)* @flagInhIndexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flagInhIndexes(i32* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*******, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = call i32 (...) @getMaxDumpId()
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @pg_malloc0(i32 %18)
  %20 = inttoptr i64 %19 to i32*******
  store i32******* %20, i32******** %10, align 8
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %258, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %261

25:                                               ; preds = %21
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %25
  br label %258

42:                                               ; preds = %33
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  %50 = zext i1 %49 to i32
  %51 = call i32 @Assert(i32 %50)
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %57, i64 0
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %58, align 8
  store %struct.TYPE_20__* %59, %struct.TYPE_20__** %11, align 8
  %60 = load i32*******, i32******** %10, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32******, i32******* %60, i64 %64
  %66 = load i32******, i32******* %65, align 8
  %67 = icmp eq i32****** %66, null
  br i1 %67, label %68, label %83

68:                                               ; preds = %42
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %70, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32******** @buildIndexArray(%struct.TYPE_21__* %71, i32 %74, i32 32)
  %76 = bitcast i32******** %75 to i32******
  %77 = load i32*******, i32******** %10, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32******, i32******* %77, i64 %81
  store i32****** %76, i32******* %82, align 8
  br label %83

83:                                               ; preds = %68, %42
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 48
  %92 = trunc i64 %91 to i32
  %93 = call i64 @pg_malloc0(i32 %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %94, %struct.TYPE_22__** %12, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %254, %83
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %96, %102
  br i1 %103, label %104, label %257

104:                                              ; preds = %95
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i64 %112
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %13, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  br label %254

119:                                              ; preds = %104
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load i32*******, i32******** %10, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32******, i32******* %123, i64 %127
  %129 = load i32******, i32******* %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.TYPE_21__* @findIndexByOid(i32 %122, i32****** %129, i32 %132)
  store %struct.TYPE_21__* %133, %struct.TYPE_21__** %14, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %135 = icmp eq %struct.TYPE_21__* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %119
  br label %254

137:                                              ; preds = %119
  %138 = load i32, i32* @DO_INDEX_ATTACH, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 3
  store i32 %138, i32* %144, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  store i64 0, i64* %151, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 0
  %164 = call i32 @AssignDumpId(%struct.TYPE_23__* %163)
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @pg_strdup(i32 %168)
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 1
  store i32 %169, i32* %175, align 4
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 0
  store i32 %181, i32* %187, align 8
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 2
  store %struct.TYPE_21__* %188, %struct.TYPE_21__** %193, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %196 = load i32, i32* %9, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  store %struct.TYPE_21__* %194, %struct.TYPE_21__** %199, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @addObjectDependency(%struct.TYPE_23__* %204, i32 %208)
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %211 = load i32, i32* %9, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @addObjectDependency(%struct.TYPE_23__* %214, i32 %218)
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @addObjectDependency(%struct.TYPE_23__* %224, i32 %230)
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @addObjectDependency(%struct.TYPE_23__* %236, i32 %242)
  %244 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 0
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = call i32 @simple_ptr_list_append(i32* %245, %struct.TYPE_23__* %250)
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %9, align 4
  br label %254

254:                                              ; preds = %137, %136, %118
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %95

257:                                              ; preds = %95
  br label %258

258:                                              ; preds = %257, %41
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %21

261:                                              ; preds = %21
  store i32 0, i32* %7, align 4
  br label %262

262:                                              ; preds = %282, %261
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %285

266:                                              ; preds = %262
  %267 = load i32*******, i32******** %10, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32******, i32******* %267, i64 %269
  %271 = load i32******, i32******* %270, align 8
  %272 = icmp ne i32****** %271, null
  br i1 %272, label %273, label %281

273:                                              ; preds = %266
  %274 = load i32*******, i32******** %10, align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32******, i32******* %274, i64 %276
  %278 = load i32******, i32******* %277, align 8
  %279 = bitcast i32****** %278 to i32*******
  %280 = call i32 @pg_free(i32******* %279)
  br label %281

281:                                              ; preds = %273, %266
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %7, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %7, align 4
  br label %262

285:                                              ; preds = %262
  %286 = load i32*******, i32******** %10, align 8
  %287 = call i32 @pg_free(i32******* %286)
  ret void
}

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32 @getMaxDumpId(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32******** @buildIndexArray(%struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_21__* @findIndexByOid(i32, i32******, i32) #1

declare dso_local i32 @AssignDumpId(%struct.TYPE_23__*) #1

declare dso_local i32 @pg_strdup(i32) #1

declare dso_local i32 @addObjectDependency(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @simple_ptr_list_append(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @pg_free(i32*******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

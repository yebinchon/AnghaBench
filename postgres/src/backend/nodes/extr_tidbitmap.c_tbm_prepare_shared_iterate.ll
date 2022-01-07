; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_prepare_shared_iterate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_prepare_shared_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64, i8*, i32*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64, i32, i8*, i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32*, i32 }

@TBM_ITERATING_PRIVATE = common dso_local global i64 0, align 8
@TBM_NOT_ITERATING = common dso_local global i64 0, align 8
@TBM_HASH = common dso_local global i64 0, align 8
@TBM_ONE_PAGE = common dso_local global i64 0, align 8
@tbm_shared_comparator = common dso_local global i32 0, align 4
@LWTRANCHE_TBM = common dso_local global i32 0, align 4
@TBM_ITERATING_SHARED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tbm_prepare_shared_iterate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 5
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @Assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TBM_ITERATING_PRIVATE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @dsa_allocate0(i32* %28, i32 72)
  store i8* %29, i8** %3, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @dsa_get_address(i32* %32, i8* %33)
  %35 = bitcast i8* %34 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TBM_NOT_ITERATING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %244

41:                                               ; preds = %1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = add i64 16, %54
  %56 = trunc i64 %55 to i32
  %57 = call i8* @dsa_allocate(i32* %49, i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 5
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = call i8* @dsa_get_address(i32* %62, i8* %65)
  %67 = bitcast i8* %66 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %6, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = call i32 @pg_atomic_init_u32(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %46, %41
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = add i64 16, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @dsa_allocate(i32* %79, i32 %86)
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 5
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i8* @dsa_get_address(i32* %92, i8* %95)
  %97 = bitcast i8* %96 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %7, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = call i32 @pg_atomic_init_u32(i32* %99, i32 0)
  br label %101

101:                                              ; preds = %76, %71
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TBM_HASH, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %174

107:                                              ; preds = %101
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 7
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @dsa_get_address(i32* %110, i8* %113)
  %115 = bitcast i8* %114 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %115, %struct.TYPE_13__** %5, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 11
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @pagetable_start_iterate(i32 %118, i32* %8)
  br label %120

120:                                              ; preds = %158, %107
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.TYPE_11__* @pagetable_iterate(i32 %123, i32* %8)
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %9, align 8
  %125 = icmp ne %struct.TYPE_11__* %124, null
  br i1 %125, label %126, label %159

126:                                              ; preds = %120
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = ptrtoint %struct.TYPE_11__* %127 to i64
  %132 = ptrtoint %struct.TYPE_11__* %130 to i64
  %133 = sub i64 %131, %132
  %134 = sdiv exact i64 %133, 8
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %10, align 4
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %126
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  store i32 %141, i32* %148, align 4
  br label %158

149:                                              ; preds = %126
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  %156 = sext i32 %154 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %150, i32* %157, align 4
  br label %158

158:                                              ; preds = %149, %140
  br label %120

159:                                              ; preds = %120
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %160, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @Assert(i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %167, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @Assert(i32 %172)
  br label %206

174:                                              ; preds = %101
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @TBM_ONE_PAGE, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %174
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = call i8* @dsa_allocate(i32* %183, i32 24)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 7
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 7
  %192 = load i8*, i8** %191, align 8
  %193 = call i8* @dsa_get_address(i32* %189, i8* %192)
  %194 = bitcast i8* %193 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %194, %struct.TYPE_13__** %5, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %198, i32 0, i32 10
  %200 = call i32 @memcpy(%struct.TYPE_11__* %197, i32* %199, i32 8)
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 0, i32* %204, align 4
  br label %205

205:                                              ; preds = %180, %174
  br label %206

206:                                              ; preds = %205, %159
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = icmp ne %struct.TYPE_13__* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 0
  %212 = call i32 @pg_atomic_init_u32(i32* %211, i32 0)
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32, i32* %11, align 4
  %215 = icmp sgt i32 %214, 1
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = bitcast i32* %219 to i8*
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @tbm_shared_comparator, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = bitcast %struct.TYPE_11__* %225 to i8*
  %227 = call i32 @qsort_arg(i8* %220, i32 %221, i32 4, i32 %222, i8* %226)
  br label %228

228:                                              ; preds = %216, %213
  %229 = load i32, i32* %12, align 4
  %230 = icmp sgt i32 %229, 1
  br i1 %230, label %231, label %243

231:                                              ; preds = %228
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = bitcast i32* %234 to i8*
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @tbm_shared_comparator, align 4
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %239, align 8
  %241 = bitcast %struct.TYPE_11__* %240 to i8*
  %242 = call i32 @qsort_arg(i8* %235, i32 %236, i32 4, i32 %237, i8* %241)
  br label %243

243:                                              ; preds = %231, %228
  br label %244

244:                                              ; preds = %243, %1
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 10
  store i32 %247, i32* %249, align 4
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 8
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 0
  store i32 %257, i32* %259, align 8
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 1
  store i32 %262, i32* %264, align 4
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 7
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 8
  store i8* %267, i8** %269, align 8
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 6
  %272 = load i8*, i8** %271, align 8
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 7
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %275, i32 0, i32 4
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 6
  store i8* %277, i8** %279, align 8
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i32 0, i32 5
  %282 = load i32*, i32** %281, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 7
  %285 = load i8*, i8** %284, align 8
  %286 = call i8* @dsa_get_address(i32* %282, i8* %285)
  %287 = bitcast i8* %286 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %287, %struct.TYPE_13__** %5, align 8
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 6
  %293 = load i8*, i8** %292, align 8
  %294 = call i8* @dsa_get_address(i32* %290, i8* %293)
  %295 = bitcast i8* %294 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %295, %struct.TYPE_12__** %6, align 8
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 5
  %298 = load i32*, i32** %297, align 8
  %299 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 4
  %301 = load i8*, i8** %300, align 8
  %302 = call i8* @dsa_get_address(i32* %298, i8* %301)
  %303 = bitcast i8* %302 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %303, %struct.TYPE_12__** %7, align 8
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %305 = icmp ne %struct.TYPE_13__* %304, null
  br i1 %305, label %306, label %310

306:                                              ; preds = %244
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = call i32 @pg_atomic_add_fetch_u32(i32* %308, i32 1)
  br label %310

310:                                              ; preds = %306, %244
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %312 = icmp ne %struct.TYPE_12__* %311, null
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 1
  %316 = call i32 @pg_atomic_add_fetch_u32(i32* %315, i32 1)
  br label %317

317:                                              ; preds = %313, %310
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %319 = icmp ne %struct.TYPE_12__* %318, null
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 1
  %323 = call i32 @pg_atomic_add_fetch_u32(i32* %322, i32 1)
  br label %324

324:                                              ; preds = %320, %317
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 5
  %327 = load i32, i32* @LWTRANCHE_TBM, align 4
  %328 = call i32 @LWLockInitialize(i32* %326, i32 %327)
  %329 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 4
  store i64 0, i64* %330, align 8
  %331 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 3
  store i64 0, i64* %332, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 2
  store i64 0, i64* %334, align 8
  %335 = load i64, i64* @TBM_ITERATING_SHARED, align 8
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 0
  store i64 %335, i64* %337, align 8
  %338 = load i8*, i8** %3, align 8
  ret i8* %338
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @dsa_allocate0(i32*, i32) #1

declare dso_local i8* @dsa_get_address(i32*, i8*) #1

declare dso_local i8* @dsa_allocate(i32*, i32) #1

declare dso_local i32 @pg_atomic_init_u32(i32*, i32) #1

declare dso_local i32 @pagetable_start_iterate(i32, i32*) #1

declare dso_local %struct.TYPE_11__* @pagetable_iterate(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @qsort_arg(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @pg_atomic_add_fetch_u32(i32*, i32) #1

declare dso_local i32 @LWLockInitialize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistget.c_gistgettuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistget.c_gistgettuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i32*, i64, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32*, %struct.TYPE_16__*, i64, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32*, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@ForwardScanDirection = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"GiST only supports forward scan direction\00", align 1
@GIST_ROOT_BLKNO = common dso_local global i32 0, align 4
@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistgettuple(%struct.TYPE_18__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @ForwardScanDirection, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @elog(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %297

28:                                               ; preds = %22
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pgstat_count_index_scan(i32 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %33
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @MemoryContextReset(i64 %53)
  br label %55

55:                                               ; preds = %50, %33
  %56 = load i32, i32* @GIST_ROOT_BLKNO, align 4
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = call i32 @memset(i32* %59, i32 0, i32 4)
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %62 = call i32 @gistScanPage(%struct.TYPE_18__* %61, %struct.TYPE_19__* %7, i32* null, i32* null, i32* null)
  br label %63

63:                                               ; preds = %55, %28
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = call i32 @getNextNearest(%struct.TYPE_18__* %69)
  store i32 %70, i32* %3, align 4
  br label %297

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %296, %71
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %187

80:                                               ; preds = %72
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %140

85:                                               ; preds = %80
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %85
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %90
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 7
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MemoryContextSwitchTo(i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = trunc i64 %104 to i32
  %106 = call i64 @palloc(i32 %105)
  %107 = inttoptr i64 %106 to i32*
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 6
  store i32* %107, i32** %109, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @MemoryContextSwitchTo(i32 %110)
  br label %112

112:                                              ; preds = %95, %90
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %112
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 5
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  store i32 %129, i32* %138, align 4
  br label %139

139:                                              ; preds = %118, %112
  br label %140

140:                                              ; preds = %139, %85, %80
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 5
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %154, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %182

169:                                              ; preds = %140
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %171, align 8
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  store i32* %179, i32** %181, align 8
  br label %182

182:                                              ; preds = %169, %140
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  store i32 1, i32* %3, align 4
  br label %297

187:                                              ; preds = %72
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %255

192:                                              ; preds = %187
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %255

197:                                              ; preds = %192
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %200, %203
  br i1 %204, label %205, label %255

205:                                              ; preds = %197
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = icmp eq i32* %208, null
  br i1 %209, label %210, label %227

210:                                              ; preds = %205
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 7
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @MemoryContextSwitchTo(i32 %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 4
  %220 = trunc i64 %219 to i32
  %221 = call i64 @palloc(i32 %220)
  %222 = inttoptr i64 %221 to i32*
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 6
  store i32* %222, i32** %224, align 8
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @MemoryContextSwitchTo(i32 %225)
  br label %227

227:                                              ; preds = %210, %205
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %254

233:                                              ; preds = %227
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 6
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i32, i32* %247, i64 %252
  store i32 %244, i32* %253, align 4
  br label %254

254:                                              ; preds = %233, %227
  br label %255

255:                                              ; preds = %254, %197, %192, %187
  br label %256

256:                                              ; preds = %291, %255
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @InvalidBlockNumber, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %256
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %262
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %269 = call i32 @gistkillitems(%struct.TYPE_18__* %268)
  br label %270

270:                                              ; preds = %267, %262, %256
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %272 = call %struct.TYPE_19__* @getNextGISTSearchItem(%struct.TYPE_20__* %271)
  store %struct.TYPE_19__* %272, %struct.TYPE_19__** %10, align 8
  %273 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %274 = icmp ne %struct.TYPE_19__* %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %270
  store i32 0, i32* %3, align 4
  br label %297

276:                                              ; preds = %270
  %277 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 8
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @gistScanPage(%struct.TYPE_18__* %283, %struct.TYPE_19__* %284, i32* %287, i32* null, i32* null)
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %290 = call i32 @pfree(%struct.TYPE_19__* %289)
  br label %291

291:                                              ; preds = %276
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %256, label %296

296:                                              ; preds = %291
  br label %72

297:                                              ; preds = %275, %182, %68, %27
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @pgstat_count_index_scan(i32) #1

declare dso_local i32 @MemoryContextReset(i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gistScanPage(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32*, i32*) #1

declare dso_local i32 @getNextNearest(%struct.TYPE_18__*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @gistkillitems(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @getNextGISTSearchItem(%struct.TYPE_20__*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pfree(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

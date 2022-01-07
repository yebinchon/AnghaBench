; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeIndexonlyscan.c_IndexOnlyNext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeIndexonlyscan.c_IndexOnlyNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_32__ = type { i64, i32, %struct.TYPE_30__*, i32, i32, i32, i32, i32, i64, %struct.TYPE_31__*, i32, %struct.TYPE_27__ }
%struct.TYPE_31__ = type { i32, i64, i32, i64, i64, i32, i64, i64, %struct.TYPE_29__*, i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_34__*, i64, %struct.TYPE_25__* }
%struct.TYPE_34__ = type { %struct.TYPE_30__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32 }

@BackwardScanDirection = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"non-MVCC snapshots are not supported in index-only scans\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"no data returned for index-only scan\00", align 1
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"lossy distance functions are not supported in index-only scans\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (%struct.TYPE_32__*)* @IndexOnlyNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @IndexOnlyNext(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  %11 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %11, i32 0, i32 11
  %13 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  store %struct.TYPE_25__* %15, %struct.TYPE_25__** %4, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 11
  %21 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_33__*
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ScanDirectionIsBackward(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @ScanDirectionIsForward(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @BackwardScanDirection, align 4
  store i32 %34, i32* %6, align 4
  br label %42

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ScanDirectionIsBackward(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @ForwardScanDirection, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %35
  br label %42

42:                                               ; preds = %41, %33
  br label %43

43:                                               ; preds = %42, %1
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %44, i32 0, i32 9
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %45, align 8
  store %struct.TYPE_31__* %46, %struct.TYPE_31__** %7, align 8
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 11
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %50, align 8
  store %struct.TYPE_34__* %51, %struct.TYPE_34__** %5, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 11
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %54, align 8
  store %struct.TYPE_30__* %55, %struct.TYPE_30__** %8, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %57 = icmp eq %struct.TYPE_31__* %56, null
  br i1 %57, label %58, label %111

58:                                               ; preds = %43
  %59 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 11
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_31__* @index_beginscan(i32 %62, i32 %65, i32 %68, i32 %71, i32 %74)
  store %struct.TYPE_31__* %75, %struct.TYPE_31__** %7, align 8
  %76 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %77, i32 0, i32 9
  store %struct.TYPE_31__* %76, %struct.TYPE_31__** %78, align 8
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %79, i32 0, i32 9
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i32, i32* @InvalidBuffer, align 4
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %58
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %90, %58
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @index_rescan(%struct.TYPE_31__* %96, i32 %99, i32 %102, i32 %105, i32 %108)
  br label %110

110:                                              ; preds = %95, %90
  br label %111

111:                                              ; preds = %110, %43
  br label %112

112:                                              ; preds = %208, %137, %111
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32* @index_getnext_tid(%struct.TYPE_31__* %113, i32 %114)
  store i32* %115, i32** %9, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %243

117:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  %118 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @ItemPointerGetBlockNumber(i32* %122)
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 3
  %126 = call i32 @VM_ALL_VISIBLE(i32 %121, i32 %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %151, label %128

128:                                              ; preds = %117
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %130 = call i32 @InstrCountTuples2(%struct.TYPE_32__* %129, i32 1)
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %133, align 8
  %135 = call i32 @index_fetch_heap(%struct.TYPE_31__* %131, %struct.TYPE_30__* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %128
  br label %112

138:                                              ; preds = %128
  %139 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %140, align 8
  %142 = call %struct.TYPE_30__* @ExecClearTuple(%struct.TYPE_30__* %141)
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %143, i32 0, i32 9
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i32, i32* @ERROR, align 4
  %149 = call i32 @elog(i32 %148, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %138
  store i32 1, i32* %10, align 4
  br label %151

151:                                              ; preds = %150, %117
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %151
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %161, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @Assert(i32 %168)
  %170 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %170, i32 0, i32 7
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %174 = call i32 @ExecForceStoreHeapTuple(i64 %172, %struct.TYPE_30__* %173, i32 0)
  br label %193

175:                                              ; preds = %151
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @StoreIndexTuple(%struct.TYPE_30__* %181, i64 %184, i32 %187)
  br label %192

189:                                              ; preds = %175
  %190 = load i32, i32* @ERROR, align 4
  %191 = call i32 @elog(i32 %190, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %180
  br label %193

193:                                              ; preds = %192, %156
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %212

198:                                              ; preds = %193
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i32 0, i32 0
  store %struct.TYPE_30__* %199, %struct.TYPE_30__** %201, align 8
  %202 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %206 = call i32 @ExecQualAndReset(i32 %204, %struct.TYPE_34__* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %198
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %210 = call i32 @InstrCountFiltered2(%struct.TYPE_32__* %209, i32 1)
  br label %112

211:                                              ; preds = %198
  br label %212

212:                                              ; preds = %211, %193
  %213 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp sgt i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i32, i32* @ERROR, align 4
  %224 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %225 = call i32 @errcode(i32 %224)
  %226 = call i32 @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %227 = call i32 @ereport(i32 %223, i32 %226)
  br label %228

228:                                              ; preds = %222, %217, %212
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %241, label %231

231:                                              ; preds = %228
  %232 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = call i32 @ItemPointerGetBlockNumber(i32* %235)
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @PredicateLockPage(i32 %234, i32 %236, i32 %239)
  br label %241

241:                                              ; preds = %231, %228
  %242 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_30__* %242, %struct.TYPE_30__** %2, align 8
  br label %246

243:                                              ; preds = %112
  %244 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %245 = call %struct.TYPE_30__* @ExecClearTuple(%struct.TYPE_30__* %244)
  store %struct.TYPE_30__* %245, %struct.TYPE_30__** %2, align 8
  br label %246

246:                                              ; preds = %243, %241
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  ret %struct.TYPE_30__* %247
}

declare dso_local i64 @ScanDirectionIsBackward(i32) #1

declare dso_local i64 @ScanDirectionIsForward(i32) #1

declare dso_local %struct.TYPE_31__* @index_beginscan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @index_rescan(%struct.TYPE_31__*, i32, i32, i32, i32) #1

declare dso_local i32* @index_getnext_tid(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @VM_ALL_VISIBLE(i32, i32, i32*) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @InstrCountTuples2(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @index_fetch_heap(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @ExecClearTuple(%struct.TYPE_30__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i64, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @StoreIndexTuple(%struct.TYPE_30__*, i64, i32) #1

declare dso_local i32 @ExecQualAndReset(i32, %struct.TYPE_34__*) #1

declare dso_local i32 @InstrCountFiltered2(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @PredicateLockPage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

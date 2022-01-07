; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_TransactionIdIsInProgress.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_procarray.c_TransactionIdIsInProgress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32, i64, i32 }

@TransactionIdIsInProgress.xids = internal global i32* null, align 8
@procArray = common dso_local global %struct.TYPE_11__* null, align 8
@RecentXmin = common dso_local global i32 0, align 4
@TOTAL_MAX_CACHED_SUBXIDS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@ProcArrayLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_14__* null, align 8
@allProcs = common dso_local global %struct.TYPE_13__* null, align 8
@allPgXact = common dso_local global %struct.TYPE_12__* null, align 8
@MyProc = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransactionIdIsInProgress(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @procArray, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @RecentXmin, align 4
  %19 = call i64 @TransactionIdPrecedes(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 (...) @xc_by_recent_xmin_inc()
  store i32 0, i32* %2, align 4
  br label %248

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @TransactionIdIsKnownCompleted(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @xc_by_known_xact_inc()
  store i32 0, i32* %2, align 4
  br label %248

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @TransactionIdIsCurrentTransactionId(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (...) @xc_by_my_xact_inc()
  store i32 1, i32* %2, align 4
  br label %248

35:                                               ; preds = %29
  %36 = load i32*, i32** @TransactionIdIsInProgress.xids, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = call i64 (...) @RecoveryInProgress()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @TOTAL_MAX_CACHED_SUBXIDS, align 4
  br label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i64 @malloc(i32 %52)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** @TransactionIdIsInProgress.xids, align 8
  %55 = load i32*, i32** @TransactionIdIsInProgress.xids, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load i32, i32* @ERROR, align 4
  %59 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %60 = call i32 @errcode(i32 %59)
  %61 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %47
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i32, i32* @ProcArrayLock, align 4
  %66 = load i32, i32* @LW_SHARED, align 4
  %67 = call i32 @LWLockAcquire(i32 %65, i32 %66)
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ShmemVariableCache, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i64 @TransactionIdPrecedes(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i32, i32* @ProcArrayLock, align 4
  %76 = call i32 @LWLockRelease(i32 %75)
  %77 = call i32 (...) @xc_by_latest_xid_inc()
  store i32 1, i32* %2, align 4
  br label %248

78:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %174, %78
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %177

85:                                               ; preds = %79
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** @allProcs, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i64 %95
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %11, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** @allPgXact, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 %99
  store %struct.TYPE_12__* %100, %struct.TYPE_12__** %12, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** @MyProc, align 8
  %103 = icmp eq %struct.TYPE_13__* %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %85
  br label %174

105:                                              ; preds = %85
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @UINT32_ACCESS_ONCE(i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @TransactionIdIsValid(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %174

114:                                              ; preds = %105
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i64 @TransactionIdEquals(i32 %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @ProcArrayLock, align 4
  %121 = call i32 @LWLockRelease(i32 %120)
  %122 = call i32 (...) @xc_by_main_xid_inc()
  store i32 1, i32* %2, align 4
  br label %248

123:                                              ; preds = %114
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i64 @TransactionIdPrecedes(i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %174

129:                                              ; preds = %123
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %14, align 4
  %133 = call i32 (...) @pg_read_barrier()
  %134 = load i32, i32* %14, align 4
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %158, %129
  %137 = load i32, i32* %8, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %161

139:                                              ; preds = %136
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @UINT32_ACCESS_ONCE(i32 %147)
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %3, align 4
  %151 = call i64 @TransactionIdEquals(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %139
  %154 = load i32, i32* @ProcArrayLock, align 4
  %155 = call i32 @LWLockRelease(i32 %154)
  %156 = call i32 (...) @xc_by_child_xid_inc()
  store i32 1, i32* %2, align 4
  br label %248

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %8, align 4
  br label %136

161:                                              ; preds = %136
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i32, i32* %13, align 4
  %168 = load i32*, i32** @TransactionIdIsInProgress.xids, align 8
  %169 = load i32, i32* %4, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %4, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  br label %173

173:                                              ; preds = %166, %161
  br label %174

174:                                              ; preds = %173, %128, %113, %104
  %175 = load i32, i32* %7, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %7, align 4
  br label %79

177:                                              ; preds = %79
  %178 = call i64 (...) @RecoveryInProgress()
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %204

180:                                              ; preds = %177
  %181 = load i32, i32* %4, align 4
  %182 = icmp eq i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @Assert(i32 %183)
  %185 = load i32, i32* %3, align 4
  %186 = call i64 @KnownAssignedXidExists(i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %180
  %189 = load i32, i32* @ProcArrayLock, align 4
  %190 = call i32 @LWLockRelease(i32 %189)
  %191 = call i32 (...) @xc_by_known_assigned_inc()
  store i32 1, i32* %2, align 4
  br label %248

192:                                              ; preds = %180
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** @procArray, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @TransactionIdPrecedesOrEquals(i32 %193, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %192
  %200 = load i32*, i32** @TransactionIdIsInProgress.xids, align 8
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @KnownAssignedXidsGet(i32* %200, i32 %201)
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %199, %192
  br label %204

204:                                              ; preds = %203, %177
  %205 = load i32, i32* @ProcArrayLock, align 4
  %206 = call i32 @LWLockRelease(i32 %205)
  %207 = load i32, i32* %4, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = call i32 (...) @xc_no_overflow_inc()
  store i32 0, i32* %2, align 4
  br label %248

211:                                              ; preds = %204
  %212 = call i32 (...) @xc_slow_answer_inc()
  %213 = load i32, i32* %3, align 4
  %214 = call i64 @TransactionIdDidAbort(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store i32 0, i32* %2, align 4
  br label %248

217:                                              ; preds = %211
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @SubTransGetTopmostTransaction(i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @TransactionIdIsValid(i32 %220)
  %222 = call i32 @Assert(i32 %221)
  %223 = load i32, i32* %6, align 4
  %224 = load i32, i32* %3, align 4
  %225 = call i64 @TransactionIdEquals(i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %247, label %227

227:                                              ; preds = %217
  store i32 0, i32* %7, align 4
  br label %228

228:                                              ; preds = %243, %227
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %228
  %233 = load i32*, i32** @TransactionIdIsInProgress.xids, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %6, align 4
  %239 = call i64 @TransactionIdEquals(i32 %237, i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  store i32 1, i32* %2, align 4
  br label %248

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %228

246:                                              ; preds = %228
  br label %247

247:                                              ; preds = %246, %217
  store i32 0, i32* %2, align 4
  br label %248

248:                                              ; preds = %247, %241, %216, %209, %188, %153, %119, %74, %33, %27, %21
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i32 @xc_by_recent_xmin_inc(...) #1

declare dso_local i64 @TransactionIdIsKnownCompleted(i32) #1

declare dso_local i32 @xc_by_known_xact_inc(...) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i32 @xc_by_my_xact_inc(...) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @xc_by_latest_xid_inc(...) #1

declare dso_local i32 @UINT32_ACCESS_ONCE(i32) #1

declare dso_local i32 @TransactionIdIsValid(i32) #1

declare dso_local i64 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @xc_by_main_xid_inc(...) #1

declare dso_local i32 @pg_read_barrier(...) #1

declare dso_local i32 @xc_by_child_xid_inc(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @KnownAssignedXidExists(i32) #1

declare dso_local i32 @xc_by_known_assigned_inc(...) #1

declare dso_local i64 @TransactionIdPrecedesOrEquals(i32, i32) #1

declare dso_local i32 @KnownAssignedXidsGet(i32*, i32) #1

declare dso_local i32 @xc_no_overflow_inc(...) #1

declare dso_local i32 @xc_slow_answer_inc(...) #1

declare dso_local i64 @TransactionIdDidAbort(i32) #1

declare dso_local i32 @SubTransGetTopmostTransaction(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

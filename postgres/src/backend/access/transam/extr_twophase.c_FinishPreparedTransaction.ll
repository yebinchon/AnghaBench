; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_FinishPreparedTransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_twophase.c_FinishPreparedTransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i64, i32 }

@ProcGlobal = common dso_local global %struct.TYPE_10__* null, align 8
@TwoPhaseStateLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@twophase_postcommit_callbacks = common dso_local global i32 0, align 4
@twophase_postabort_callbacks = common dso_local global i32 0, align 4
@MyLockedGxact = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FinishPreparedTransaction(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 (...) @GetUserId()
  %21 = call %struct.TYPE_9__* @LockGXact(i8* %19, i32 %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32* %28, i32** %6, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ProcGlobal, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %34
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %7, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @ReadTwoPhaseFile(i32 %44, i32 0)
  store i8* %45, i8** %9, align 8
  br label %51

46:                                               ; preds = %2
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @XlogReadTwoPhaseData(i32 %49, i8** %9, i32* null)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i8*, i8** %9, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %11, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @TransactionIdEquals(i32 %56, i32 %57)
  %59 = call i32 @Assert(i32 %58)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @MAXALIGN(i32 40)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8* %63, i8** %10, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @MAXALIGN(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %10, align 8
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast i8* %71 to i32*
  store i32* %72, i32** %13, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = call i32 @MAXALIGN(i32 %78)
  %80 = load i8*, i8** %10, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %10, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = bitcast i8* %83 to i32*
  store i32* %84, i32** %14, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 4
  %90 = trunc i64 %89 to i32
  %91 = call i32 @MAXALIGN(i32 %90)
  %92 = load i8*, i8** %10, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %10, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = bitcast i8* %95 to i32*
  store i32* %96, i32** %15, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i32 @MAXALIGN(i32 %102)
  %104 = load i8*, i8** %10, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %10, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = bitcast i8* %107 to i32*
  store i32* %108, i32** %18, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i32 @MAXALIGN(i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %13, align 8
  %124 = call i32 @TransactionIdLatest(i32 %119, i32 %122, i32* %123)
  store i32 %124, i32* %12, align 4
  %125 = call i32 (...) @HOLD_INTERRUPTS()
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %51
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %13, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32*, i32** %18, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  %145 = load i8*, i8** %3, align 8
  %146 = call i32 @RecordTransactionCommitPrepared(i32 %129, i32 %132, i32* %133, i32 %136, i32* %137, i32 %140, i32* %141, i64 %144, i8* %145)
  br label %159

147:                                              ; preds = %51
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %15, align 8
  %157 = load i8*, i8** %3, align 8
  %158 = call i32 @RecordTransactionAbortPrepared(i32 %148, i32 %151, i32* %152, i32 %155, i32* %156, i8* %157)
  br label %159

159:                                              ; preds = %147, %128
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @ProcArrayRemove(i32* %160, i32 %161)
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 1
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load i32*, i32** %14, align 8
  store i32* %168, i32** %16, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  store i32 %171, i32* %17, align 4
  br label %177

172:                                              ; preds = %159
  %173 = load i32*, i32** %15, align 8
  store i32* %173, i32** %16, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %172, %167
  %178 = load i32*, i32** %16, align 8
  %179 = load i32, i32* %17, align 4
  %180 = call i32 @DropRelationFiles(i32* %178, i32 %179, i32 0)
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %177
  %186 = call i32 (...) @RelationCacheInitFilePreInvalidate()
  br label %187

187:                                              ; preds = %185, %177
  %188 = load i32*, i32** %18, align 8
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @SendSharedInvalidMessages(i32* %188, i32 %191)
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %187
  %198 = call i32 (...) @RelationCacheInitFilePostInvalidate()
  br label %199

199:                                              ; preds = %197, %187
  %200 = load i32, i32* @TwoPhaseStateLock, align 4
  %201 = load i32, i32* @LW_EXCLUSIVE, align 4
  %202 = call i32 @LWLockAcquire(i32 %200, i32 %201)
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load i8*, i8** %10, align 8
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* @twophase_postcommit_callbacks, align 4
  %209 = call i32 @ProcessRecords(i8* %206, i32 %207, i32 %208)
  br label %215

210:                                              ; preds = %199
  %211 = load i8*, i8** %10, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @twophase_postabort_callbacks, align 4
  %214 = call i32 @ProcessRecords(i8* %211, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %210, %205
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @PredicateLockTwoPhaseFinish(i32 %216, i32 %217)
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %220 = call i32 @RemoveGXact(%struct.TYPE_9__* %219)
  %221 = load i32, i32* @TwoPhaseStateLock, align 4
  %222 = call i32 @LWLockRelease(i32 %221)
  %223 = load i32, i32* %4, align 4
  %224 = call i32 @AtEOXact_PgStat(i32 %223, i32 0)
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %215
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @RemoveTwoPhaseFile(i32 %230, i32 1)
  br label %232

232:                                              ; preds = %229, %215
  store i32* null, i32** @MyLockedGxact, align 8
  %233 = call i32 (...) @RESUME_INTERRUPTS()
  %234 = load i8*, i8** %9, align 8
  %235 = call i32 @pfree(i8* %234)
  ret void
}

declare dso_local %struct.TYPE_9__* @LockGXact(i8*, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i8* @ReadTwoPhaseFile(i32, i32) #1

declare dso_local i32 @XlogReadTwoPhaseData(i32, i8**, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @TransactionIdEquals(i32, i32) #1

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @TransactionIdLatest(i32, i32, i32*) #1

declare dso_local i32 @HOLD_INTERRUPTS(...) #1

declare dso_local i32 @RecordTransactionCommitPrepared(i32, i32, i32*, i32, i32*, i32, i32*, i64, i8*) #1

declare dso_local i32 @RecordTransactionAbortPrepared(i32, i32, i32*, i32, i32*, i8*) #1

declare dso_local i32 @ProcArrayRemove(i32*, i32) #1

declare dso_local i32 @DropRelationFiles(i32*, i32, i32) #1

declare dso_local i32 @RelationCacheInitFilePreInvalidate(...) #1

declare dso_local i32 @SendSharedInvalidMessages(i32*, i32) #1

declare dso_local i32 @RelationCacheInitFilePostInvalidate(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ProcessRecords(i8*, i32, i32) #1

declare dso_local i32 @PredicateLockTwoPhaseFinish(i32, i32) #1

declare dso_local i32 @RemoveGXact(%struct.TYPE_9__*) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @AtEOXact_PgStat(i32, i32) #1

declare dso_local i32 @RemoveTwoPhaseFile(i32, i32) #1

declare dso_local i32 @RESUME_INTERRUPTS(...) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_TransactionIdLimitedForOldSnapshots.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_TransactionIdLimitedForOldSnapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i64, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@old_snapshot_threshold = common dso_local global i64 0, align 8
@oldSnapshotControl = common dso_local global %struct.TYPE_3__* null, align 8
@MyPgXact = common dso_local global %struct.TYPE_4__* null, align 8
@USECS_PER_SEC = common dso_local global i32 0, align 4
@USECS_PER_MINUTE = common dso_local global i64 0, align 8
@OldSnapshotTimeMapLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@OLD_SNAPSHOT_TIME_MAP_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TransactionIdLimitedForOldSnapshots(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @TransactionIdIsNormal(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %184

15:                                               ; preds = %2
  %16 = load i64, i64* @old_snapshot_threshold, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %184

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @RelationAllowsEarlyPruning(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %184

22:                                               ; preds = %18
  %23 = call i64 (...) @GetSnapshotCurrentTimestamp()
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 8
  %27 = call i32 @SpinLockAcquire(i32* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 8
  %36 = call i32 @SpinLockRelease(i32* %35)
  %37 = load i64, i64* @old_snapshot_threshold, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %22
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyPgXact, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @TransactionIdPrecedes(i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @TransactionIdFollows(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %46, %39
  %54 = load i32, i32* @USECS_PER_SEC, align 4
  %55 = mul nsw i32 5, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %6, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @SetOldSnapshotThresholdTimestamp(i64 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %186

63:                                               ; preds = %22
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @AlignTimestampToMinuteBoundary(i64 %64)
  %66 = load i64, i64* @old_snapshot_threshold, align 8
  %67 = load i64, i64* @USECS_PER_MINUTE, align 8
  %68 = mul nsw i64 %66, %67
  %69 = sub nsw i64 %65, %68
  store i64 %69, i64* %6, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 6
  %72 = call i32 @SpinLockAcquire(i32* %71)
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  store i32 1, i32* %10, align 4
  br label %82

82:                                               ; preds = %78, %63
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 6
  %85 = call i32 @SpinLockRelease(i32* %84)
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %165, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %4, align 4
  %96 = call i64 @NormalTransactionIdFollows(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @SetOldSnapshotThresholdTimestamp(i64 %99, i32 %100)
  br label %102

102:                                              ; preds = %98, %92
  br label %164

103:                                              ; preds = %88
  %104 = load i32, i32* @OldSnapshotTimeMapLock, align 4
  %105 = load i32, i32* @LW_SHARED, align 4
  %106 = call i32 @LWLockAcquire(i32 %104, i32 %105)
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %103
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp sge i64 %112, %115
  br i1 %116, label %117, label %161

117:                                              ; preds = %111
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load i64, i64* @USECS_PER_MINUTE, align 8
  %124 = sdiv i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = icmp sgt i32 %126, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %117
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %132, %117
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %140, %141
  %143 = load i32, i32* @OLD_SNAPSHOT_TIME_MAP_ENTRIES, align 4
  %144 = srem i32 %142, %143
  store i32 %144, i32* %11, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** @oldSnapshotControl, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i64 @NormalTransactionIdFollows(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %137
  %157 = load i64, i64* %6, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @SetOldSnapshotThresholdTimestamp(i64 %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %137
  br label %161

161:                                              ; preds = %160, %111, %103
  %162 = load i32, i32* @OldSnapshotTimeMapLock, align 4
  %163 = call i32 @LWLockRelease(i32 %162)
  br label %164

164:                                              ; preds = %161, %102
  br label %165

165:                                              ; preds = %164, %82
  %166 = load i32, i32* %8, align 4
  %167 = call i64 @TransactionIdIsNormal(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* %7, align 4
  %172 = call i64 @TransactionIdPrecedes(i32 %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %7, align 4
  br label %176

176:                                              ; preds = %174, %169, %165
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %4, align 4
  %179 = call i64 @NormalTransactionIdFollows(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %176
  %182 = load i32, i32* %7, align 4
  store i32 %182, i32* %3, align 4
  br label %186

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %18, %15, %2
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %181, %53
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i64 @TransactionIdIsNormal(i32) #1

declare dso_local i64 @RelationAllowsEarlyPruning(i32) #1

declare dso_local i64 @GetSnapshotCurrentTimestamp(...) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i64 @TransactionIdPrecedes(i32, i32) #1

declare dso_local i64 @TransactionIdFollows(i32, i32) #1

declare dso_local i32 @SetOldSnapshotThresholdTimestamp(i64, i32) #1

declare dso_local i64 @AlignTimestampToMinuteBoundary(i64) #1

declare dso_local i64 @NormalTransactionIdFollows(i32, i32) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

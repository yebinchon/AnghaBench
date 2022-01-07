; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_LogicalConfirmReceivedLocation.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_logical.c_LogicalConfirmReceivedLocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@MyReplicationSlot = common dso_local global %struct.TYPE_4__* null, align 8
@InvalidTransactionId = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"updated xmin: %u restart: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LogicalConfirmReceivedLocation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @InvalidXLogRecPtr, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @Assert(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @InvalidXLogRecPtr, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @InvalidXLogRecPtr, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %136

21:                                               ; preds = %15, %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  %24 = call i32 @SpinLockAcquire(i32* %23)
  %25 = load i64, i64* %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i64 %25, i64* %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @InvalidXLogRecPtr, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %21
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %2, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @TransactionIdIsValid(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %46
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* @InvalidTransactionId, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* @InvalidXLogRecPtr, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %55, %46, %40
  br label %69

69:                                               ; preds = %68, %34, %21
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @InvalidXLogRecPtr, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %101

75:                                               ; preds = %69
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %2, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @InvalidXLogRecPtr, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @Assert(i32 %87)
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* @InvalidXLogRecPtr, align 8
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* @InvalidXLogRecPtr, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  store i32 1, i32* %4, align 4
  br label %101

101:                                              ; preds = %81, %75, %69
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 5
  %104 = call i32 @SpinLockRelease(i32* %103)
  %105 = load i32, i32* %3, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107, %101
  %111 = call i32 (...) @ReplicationSlotMarkDirty()
  %112 = call i32 (...) @ReplicationSlotSave()
  %113 = load i32, i32* @DEBUG1, align 4
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %110, %107
  %118 = load i32, i32* %3, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 5
  %123 = call i32 @SpinLockAcquire(i32* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  store i64 %127, i64* %129, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 5
  %132 = call i32 @SpinLockRelease(i32* %131)
  %133 = call i32 @ReplicationSlotsComputeRequiredXmin(i32 0)
  %134 = call i32 (...) @ReplicationSlotsComputeRequiredLSN()
  br label %135

135:                                              ; preds = %120, %117
  br label %147

136:                                              ; preds = %15
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 5
  %139 = call i32 @SpinLockAcquire(i32* %138)
  %140 = load i64, i64* %2, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 6
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  store i64 %140, i64* %143, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyReplicationSlot, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  %146 = call i32 @SpinLockRelease(i32* %145)
  br label %147

147:                                              ; preds = %136, %135
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i64 @TransactionIdIsValid(i64) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @ReplicationSlotMarkDirty(...) #1

declare dso_local i32 @ReplicationSlotSave(...) #1

declare dso_local i32 @elog(i32, i8*, i32, i32) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredXmin(i32) #1

declare dso_local i32 @ReplicationSlotsComputeRequiredLSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

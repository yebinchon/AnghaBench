; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessStandbyHSFeedbackMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_ProcessStandbyHSFeedbackMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8* }

@reply_message = common dso_local global i32 0, align 4
@log_min_messages = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"hot standby feedback xmin %u epoch %u, catalog_xmin %u epoch %u reply_time %s\00", align 1
@MyWalSnd = common dso_local global %struct.TYPE_4__* null, align 8
@InvalidTransactionId = common dso_local global i8* null, align 8
@MyPgXact = common dso_local global %struct.TYPE_5__* null, align 8
@MyReplicationSlot = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ProcessStandbyHSFeedbackMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessStandbyHSFeedbackMessage() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = call i32 @pq_getmsgint64(i32* @reply_message)
  store i32 %8, i32* %5, align 4
  %9 = call i8* @pq_getmsgint(i32* @reply_message, i32 4)
  store i8* %9, i8** %1, align 8
  %10 = call i8* @pq_getmsgint(i32* @reply_message, i32 4)
  store i8* %10, i8** %2, align 8
  %11 = call i8* @pq_getmsgint(i32* @reply_message, i32 4)
  store i8* %11, i8** %3, align 8
  %12 = call i8* @pq_getmsgint(i32* @reply_message, i32 4)
  store i8* %12, i8** %4, align 8
  %13 = load i64, i64* @log_min_messages, align 8
  %14 = load i64, i64* @DEBUG2, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @timestamptz_to_str(i32 %17)
  %19 = call i8* @pstrdup(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* @DEBUG2, align 8
  %21 = load i8*, i8** %1, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @elog(i64 %20, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i8* %23, i8* %24, i8* %25)
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @pfree(i8* %27)
  br label %29

29:                                               ; preds = %16, %0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MyWalSnd, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @SpinLockAcquire(i32* %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @SpinLockRelease(i32* %38)
  %40 = load i8*, i8** %1, align 8
  %41 = call i64 @TransactionIdIsNormal(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %29
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @TransactionIdIsNormal(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** @InvalidTransactionId, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyPgXact, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i32*, i32** @MyReplicationSlot, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %1, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @PhysicalReplicationSlotNewXmin(i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %53, %47
  br label %103

58:                                               ; preds = %43, %29
  %59 = load i8*, i8** %1, align 8
  %60 = call i64 @TransactionIdIsNormal(i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8*, i8** %1, align 8
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @TransactionIdInRecentPast(i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %103

68:                                               ; preds = %62, %58
  %69 = load i8*, i8** %3, align 8
  %70 = call i64 @TransactionIdIsNormal(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load i8*, i8** %3, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @TransactionIdInRecentPast(i8* %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %103

78:                                               ; preds = %72, %68
  %79 = load i32*, i32** @MyReplicationSlot, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i8*, i8** %1, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @PhysicalReplicationSlotNewXmin(i8* %82, i8* %83)
  br label %103

85:                                               ; preds = %78
  %86 = load i8*, i8** %3, align 8
  %87 = call i64 @TransactionIdIsNormal(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i8*, i8** %3, align 8
  %91 = load i8*, i8** %1, align 8
  %92 = call i64 @TransactionIdPrecedes(i8* %90, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i8*, i8** %3, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyPgXact, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %102

98:                                               ; preds = %89, %85
  %99 = load i8*, i8** %1, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @MyPgXact, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  store i8* %99, i8** %101, align 8
  br label %102

102:                                              ; preds = %98, %94
  br label %103

103:                                              ; preds = %57, %67, %77, %102, %81
  ret void
}

declare dso_local i32 @pq_getmsgint64(i32*) #1

declare dso_local i8* @pq_getmsgint(i32*, i32) #1

declare dso_local i8* @pstrdup(i32) #1

declare dso_local i32 @timestamptz_to_str(i32) #1

declare dso_local i32 @elog(i64, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i64 @TransactionIdIsNormal(i8*) #1

declare dso_local i32 @PhysicalReplicationSlotNewXmin(i8*, i8*) #1

declare dso_local i32 @TransactionIdInRecentPast(i8*, i8*) #1

declare dso_local i64 @TransactionIdPrecedes(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

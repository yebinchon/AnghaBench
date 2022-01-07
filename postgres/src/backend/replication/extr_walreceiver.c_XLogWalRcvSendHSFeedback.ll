; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvSendHSFeedback.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvSendHSFeedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@XLogWalRcvSendHSFeedback.sendTime = internal global i32 0, align 4
@XLogWalRcvSendHSFeedback.master_has_standby_xmin = internal global i32 1, align 4
@wal_receiver_status_interval = common dso_local global i32 0, align 4
@hot_standby_feedback = common dso_local global i64 0, align 8
@PROCARRAY_FLAGS_DEFAULT = common dso_local global i32 0, align 4
@PROCARRAY_SLOTS_XMIN = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i64 0, align 8
@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"sending hot standby feedback xmin %u epoch %u catalog_xmin %u catalog_xmin_epoch %u\00", align 1
@reply_message = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@wrconn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @XLogWalRcvSendHSFeedback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogWalRcvSendHSFeedback(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* @wal_receiver_status_interval, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @hot_standby_feedback, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* @XLogWalRcvSendHSFeedback.master_has_standby_xmin, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %113

20:                                               ; preds = %16, %13
  %21 = call i32 (...) @GetCurrentTimestamp()
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @XLogWalRcvSendHSFeedback.sendTime, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @wal_receiver_status_interval, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = call i32 @TimestampDifferenceExceeds(i32 %25, i32 %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %113

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  store i32 %33, i32* @XLogWalRcvSendHSFeedback.sendTime, align 4
  br label %34

34:                                               ; preds = %32, %20
  %35 = call i32 (...) @HotStandbyActive()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %113

38:                                               ; preds = %34
  %39 = load i64, i64* @hot_standby_feedback, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i32, i32* @PROCARRAY_FLAGS_DEFAULT, align 4
  %43 = load i32, i32* @PROCARRAY_SLOTS_XMIN, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @GetOldestXmin(i32* null, i32 %44)
  store i64 %45, i64* %8, align 8
  %46 = call i32 @ProcArrayGetReplicationSlotXmin(i64* %10, i64* %9)
  %47 = load i64, i64* %10, align 8
  %48 = call i64 @TransactionIdIsValid(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @TransactionIdPrecedes(i64 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* %10, align 8
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %55, %50, %41
  br label %61

58:                                               ; preds = %38
  %59 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %60, i64* %9, align 8
  br label %61

61:                                               ; preds = %58, %57
  %62 = call i32 (...) @ReadNextFullTransactionId()
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @XidFromFullTransactionId(i32 %63)
  store i64 %64, i64* %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i64 @EpochFromFullTransactionId(i32 %65)
  store i64 %66, i64* %6, align 8
  %67 = load i64, i64* %6, align 8
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i64, i64* %6, align 8
  %73 = add nsw i64 %72, -1
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %71, %61
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* @DEBUG2, align 4
  %83 = load i64, i64* %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @elog(i32 %82, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %84, i64 %85, i64 %86)
  %88 = call i32 @resetStringInfo(%struct.TYPE_6__* @reply_message)
  %89 = call i32 @pq_sendbyte(%struct.TYPE_6__* @reply_message, i8 signext 104)
  %90 = call i32 (...) @GetCurrentTimestamp()
  %91 = call i32 @pq_sendint64(%struct.TYPE_6__* @reply_message, i32 %90)
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @pq_sendint32(%struct.TYPE_6__* @reply_message, i64 %92)
  %94 = load i64, i64* %6, align 8
  %95 = call i32 @pq_sendint32(%struct.TYPE_6__* @reply_message, i64 %94)
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @pq_sendint32(%struct.TYPE_6__* @reply_message, i64 %96)
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @pq_sendint32(%struct.TYPE_6__* @reply_message, i64 %98)
  %100 = load i32, i32* @wrconn, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @reply_message, i32 0, i32 1), align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @reply_message, i32 0, i32 0), align 4
  %103 = call i32 @walrcv_send(i32 %100, i32 %101, i32 %102)
  %104 = load i64, i64* %8, align 8
  %105 = call i64 @TransactionIdIsValid(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %81
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @TransactionIdIsValid(i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %107, %81
  store i32 1, i32* @XLogWalRcvSendHSFeedback.master_has_standby_xmin, align 4
  br label %113

112:                                              ; preds = %107
  store i32 0, i32* @XLogWalRcvSendHSFeedback.master_has_standby_xmin, align 4
  br label %113

113:                                              ; preds = %19, %31, %37, %112, %111
  ret void
}

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @TimestampDifferenceExceeds(i32, i32, i32) #1

declare dso_local i32 @HotStandbyActive(...) #1

declare dso_local i64 @GetOldestXmin(i32*, i32) #1

declare dso_local i32 @ProcArrayGetReplicationSlotXmin(i64*, i64*) #1

declare dso_local i64 @TransactionIdIsValid(i64) #1

declare dso_local i64 @TransactionIdPrecedes(i64, i64) #1

declare dso_local i32 @ReadNextFullTransactionId(...) #1

declare dso_local i64 @XidFromFullTransactionId(i32) #1

declare dso_local i64 @EpochFromFullTransactionId(i32) #1

declare dso_local i32 @elog(i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @pq_sendbyte(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i32 @pq_sendint64(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @pq_sendint32(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @walrcv_send(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

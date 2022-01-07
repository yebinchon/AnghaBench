; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_XLogSendPhysical.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_XLogSendPhysical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i64 }
%struct.TYPE_10__ = type { i32, i32 }

@got_STOPPING = common dso_local global i64 0, align 8
@WALSNDSTATE_STOPPING = common dso_local global i32 0, align 4
@streamingDoneSending = common dso_local global i32 0, align 4
@WalSndCaughtUp = common dso_local global i32 0, align 4
@sendTimeLineIsHistoric = common dso_local global i32 0, align 4
@sendTimeLineValidUpto = common dso_local global i32 0, align 4
@am_cascading_walsender = common dso_local global i32 0, align 4
@sendTimeLine = common dso_local global i64 0, align 8
@ThisTimeLineID = common dso_local global i64 0, align 8
@sendTimeLineNextTLI = common dso_local global i64 0, align 8
@sentPtr = common dso_local global i32 0, align 4
@sendSeg = common dso_local global %struct.TYPE_12__* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"walsender reached end of timeline at %X/%X (sent up to %X/%X)\00", align 1
@MAX_SEND_SIZE = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@output_message = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@sendCxt = common dso_local global i32 0, align 4
@tmpbuf = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@MyWalSnd = common dso_local global %struct.TYPE_10__* null, align 8
@update_process_title = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"streaming %X/%X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @XLogSendPhysical to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogSendPhysical() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca [50 x i8], align 16
  %9 = load i64, i64* @got_STOPPING, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @WALSNDSTATE_STOPPING, align 4
  %13 = call i32 @WalSndSetState(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @streamingDoneSending, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* @WalSndCaughtUp, align 4
  br label %186

18:                                               ; preds = %14
  %19 = load i32, i32* @sendTimeLineIsHistoric, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @sendTimeLineValidUpto, align 4
  store i32 %22, i32* %1, align 4
  br label %58

23:                                               ; preds = %18
  %24 = load i32, i32* @am_cascading_walsender, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  %27 = call i32 (...) @GetStandbyFlushRecPtr()
  store i32 %27, i32* %1, align 4
  %28 = call i32 (...) @RecoveryInProgress()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* @am_cascading_walsender, align 4
  store i32 1, i32* %5, align 4
  br label %37

31:                                               ; preds = %26
  %32 = load i64, i64* @sendTimeLine, align 8
  %33 = load i64, i64* @ThisTimeLineID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i64, i64* @ThisTimeLineID, align 8
  %42 = call i32* @readTimeLineHistory(i64 %41)
  store i32* %42, i32** %6, align 8
  %43 = load i64, i64* @sendTimeLine, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @tliSwitchPoint(i64 %43, i32* %44, i64* @sendTimeLineNextTLI)
  store i32 %45, i32* @sendTimeLineValidUpto, align 4
  %46 = load i64, i64* @sendTimeLine, align 8
  %47 = load i64, i64* @sendTimeLineNextTLI, align 8
  %48 = icmp slt i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @Assert(i32 %49)
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @list_free_deep(i32* %51)
  store i32 1, i32* @sendTimeLineIsHistoric, align 4
  %53 = load i32, i32* @sendTimeLineValidUpto, align 4
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %40, %37
  br label %57

55:                                               ; preds = %23
  %56 = call i32 (...) @GetFlushRecPtr()
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %55, %54
  br label %58

58:                                               ; preds = %57, %21
  %59 = load i32, i32* %1, align 4
  %60 = call i32 (...) @GetCurrentTimestamp()
  %61 = call i32 @LagTrackerWrite(i32 %59, i32 %60)
  %62 = load i32, i32* @sendTimeLineIsHistoric, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %58
  %65 = load i32, i32* @sendTimeLineValidUpto, align 4
  %66 = load i32, i32* @sentPtr, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sendSeg, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sendSeg, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @close(i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** @sendSeg, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 -1, i32* %80, align 4
  %81 = call i32 @pq_putmessage_noblock(i8 signext 99, i8* null, i64 0)
  store i32 1, i32* @streamingDoneSending, align 4
  store i32 1, i32* @WalSndCaughtUp, align 4
  %82 = load i32, i32* @DEBUG1, align 4
  %83 = load i32, i32* @sendTimeLineValidUpto, align 4
  %84 = ashr i32 %83, 32
  %85 = load i32, i32* @sendTimeLineValidUpto, align 4
  %86 = load i32, i32* @sentPtr, align 4
  %87 = ashr i32 %86, 32
  %88 = load i32, i32* @sentPtr, align 4
  %89 = call i32 @elog(i32 %82, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i32 %87, i32 %88)
  br label %186

90:                                               ; preds = %64, %58
  %91 = load i32, i32* @sentPtr, align 4
  %92 = load i32, i32* %1, align 4
  %93 = icmp sle i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @Assert(i32 %94)
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* @sentPtr, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 1, i32* @WalSndCaughtUp, align 4
  br label %186

100:                                              ; preds = %90
  %101 = load i32, i32* @sentPtr, align 4
  store i32 %101, i32* %2, align 4
  %102 = load i32, i32* %2, align 4
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* @MAX_SEND_SIZE, align 4
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %3, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* %3, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load i32, i32* %1, align 4
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* @sendTimeLineIsHistoric, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  store i32 0, i32* @WalSndCaughtUp, align 4
  br label %115

114:                                              ; preds = %109
  store i32 1, i32* @WalSndCaughtUp, align 4
  br label %115

115:                                              ; preds = %114, %113
  br label %122

116:                                              ; preds = %100
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @XLOG_BLCKSZ, align 4
  %119 = srem i32 %117, %118
  %120 = load i32, i32* %3, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %3, align 4
  store i32 0, i32* @WalSndCaughtUp, align 4
  br label %122

122:                                              ; preds = %116, %115
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %2, align 4
  %125 = sub nsw i32 %123, %124
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @MAX_SEND_SIZE, align 4
  %128 = icmp sle i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @Assert(i32 %129)
  %131 = call i32 @resetStringInfo(%struct.TYPE_11__* @output_message)
  %132 = call i32 @pq_sendbyte(%struct.TYPE_11__* @output_message, i8 signext 119)
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @pq_sendint64(%struct.TYPE_11__* @output_message, i32 %133)
  %135 = load i32, i32* %1, align 4
  %136 = call i32 @pq_sendint64(%struct.TYPE_11__* @output_message, i32 %135)
  %137 = call i32 @pq_sendint64(%struct.TYPE_11__* @output_message, i32 0)
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @enlargeStringInfo(%struct.TYPE_11__* @output_message, i32 %138)
  %140 = load i32, i32* @sendCxt, align 4
  %141 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 0), align 8
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 1), align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i32, i32* %2, align 4
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @XLogRead(i32 %140, i8* %143, i32 %144, i32 %145)
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 1), align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 1), align 8
  %151 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 0), align 8
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 1), align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  store i8 0, i8* %153, align 1
  %154 = call i32 @resetStringInfo(%struct.TYPE_11__* @tmpbuf)
  %155 = call i32 (...) @GetCurrentTimestamp()
  %156 = call i32 @pq_sendint64(%struct.TYPE_11__* @tmpbuf, i32 %155)
  %157 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 0), align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 9
  %159 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tmpbuf, i32 0, i32 0), align 8
  %160 = call i32 @memcpy(i8* %158, i8* %159, i32 4)
  %161 = load i8*, i8** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 0), align 8
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @output_message, i32 0, i32 1), align 8
  %163 = call i32 @pq_putmessage_noblock(i8 signext 100, i8* %161, i64 %162)
  %164 = load i32, i32* %3, align 4
  store i32 %164, i32* @sentPtr, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** @MyWalSnd, align 8
  store %struct.TYPE_10__* %165, %struct.TYPE_10__** %7, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = call i32 @SpinLockAcquire(i32* %167)
  %169 = load i32, i32* @sentPtr, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = call i32 @SpinLockRelease(i32* %173)
  %175 = load i64, i64* @update_process_title, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %122
  %178 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %179 = load i32, i32* @sentPtr, align 4
  %180 = ashr i32 %179, 32
  %181 = load i32, i32* @sentPtr, align 4
  %182 = call i32 @snprintf(i8* %178, i32 50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %180, i32 %181)
  %183 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %184 = call i32 @set_ps_display(i8* %183, i32 0)
  br label %185

185:                                              ; preds = %177, %122
  br label %186

186:                                              ; preds = %185, %99, %78, %17
  ret void
}

declare dso_local i32 @WalSndSetState(i32) #1

declare dso_local i32 @GetStandbyFlushRecPtr(...) #1

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i32* @readTimeLineHistory(i64) #1

declare dso_local i32 @tliSwitchPoint(i64, i32*, i64*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_free_deep(i32*) #1

declare dso_local i32 @GetFlushRecPtr(...) #1

declare dso_local i32 @LagTrackerWrite(i32, i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pq_putmessage_noblock(i8 signext, i8*, i64) #1

declare dso_local i32 @elog(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_11__*) #1

declare dso_local i32 @pq_sendbyte(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @pq_sendint64(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @enlargeStringInfo(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @XLogRead(i32, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @set_ps_display(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

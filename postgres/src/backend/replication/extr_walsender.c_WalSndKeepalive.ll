; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndKeepalive.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_WalSndKeepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sending replication keepalive\00", align 1
@output_message = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@sentPtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @WalSndKeepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WalSndKeepalive(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @DEBUG2, align 4
  %4 = call i32 @elog(i32 %3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @resetStringInfo(%struct.TYPE_5__* @output_message)
  %6 = call i32 @pq_sendbyte(%struct.TYPE_5__* @output_message, i32 107)
  %7 = load i32, i32* @sentPtr, align 4
  %8 = call i32 @pq_sendint64(%struct.TYPE_5__* @output_message, i32 %7)
  %9 = call i32 (...) @GetCurrentTimestamp()
  %10 = call i32 @pq_sendint64(%struct.TYPE_5__* @output_message, i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = call i32 @pq_sendbyte(%struct.TYPE_5__* @output_message, i32 %14)
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @output_message, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @output_message, i32 0, i32 0), align 4
  %18 = call i32 @pq_putmessage_noblock(i8 signext 100, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @resetStringInfo(%struct.TYPE_5__*) #1

declare dso_local i32 @pq_sendbyte(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @pq_sendint64(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @GetCurrentTimestamp(...) #1

declare dso_local i32 @pq_putmessage_noblock(i8 signext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

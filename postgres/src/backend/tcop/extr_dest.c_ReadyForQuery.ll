; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_dest.c_ReadyForQuery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_dest.c_ReadyForQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FrontendProtocol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadyForQuery(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %19 [
    i32 135, label %5
    i32 134, label %5
    i32 133, label %5
    i32 136, label %18
    i32 138, label %18
    i32 132, label %18
    i32 128, label %18
    i32 137, label %18
    i32 139, label %18
    i32 131, label %18
    i32 130, label %18
    i32 129, label %18
  ]

5:                                                ; preds = %1, %1, %1
  %6 = load i32, i32* @FrontendProtocol, align 4
  %7 = call i32 @PG_PROTOCOL_MAJOR(i32 %6)
  %8 = icmp sge i32 %7, 3
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = call i32 @pq_beginmessage(i32* %3, i8 signext 90)
  %11 = call i32 (...) @TransactionBlockStatusCode()
  %12 = call i32 @pq_sendbyte(i32* %3, i32 %11)
  %13 = call i32 @pq_endmessage(i32* %3)
  br label %16

14:                                               ; preds = %5
  %15 = call i32 @pq_putemptymessage(i8 signext 90)
  br label %16

16:                                               ; preds = %14, %9
  %17 = call i32 (...) @pq_flush()
  br label %19

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %19

19:                                               ; preds = %1, %18, %16
  ret void
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_beginmessage(i32*, i8 signext) #1

declare dso_local i32 @pq_sendbyte(i32*, i32) #1

declare dso_local i32 @TransactionBlockStatusCode(...) #1

declare dso_local i32 @pq_endmessage(i32*) #1

declare dso_local i32 @pq_putemptymessage(i8 signext) #1

declare dso_local i32 @pq_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

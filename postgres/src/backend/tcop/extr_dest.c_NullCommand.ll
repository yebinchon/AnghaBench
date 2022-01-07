; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tcop/extr_dest.c_NullCommand.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tcop/extr_dest.c_NullCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FrontendProtocol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NullCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %14 [
    i32 135, label %4
    i32 134, label %4
    i32 133, label %4
    i32 136, label %13
    i32 138, label %13
    i32 132, label %13
    i32 128, label %13
    i32 137, label %13
    i32 139, label %13
    i32 131, label %13
    i32 130, label %13
    i32 129, label %13
  ]

4:                                                ; preds = %1, %1, %1
  %5 = load i32, i32* @FrontendProtocol, align 4
  %6 = call i32 @PG_PROTOCOL_MAJOR(i32 %5)
  %7 = icmp sge i32 %6, 3
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = call i32 @pq_putemptymessage(i8 signext 73)
  br label %12

10:                                               ; preds = %4
  %11 = call i32 @pq_putmessage(i8 signext 73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %12

12:                                               ; preds = %10, %8
  br label %14

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1
  br label %14

14:                                               ; preds = %1, %13, %12
  ret void
}

declare dso_local i32 @PG_PROTOCOL_MAJOR(i32) #1

declare dso_local i32 @pq_putemptymessage(i8 signext) #1

declare dso_local i32 @pq_putmessage(i8 signext, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_add_client.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_add_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_thread = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Dropping connection %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_add_client(%struct.lwan_thread* %0, i32 %1) #0 {
  %3 = alloca %struct.lwan_thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lwan_thread* %0, %struct.lwan_thread** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 10
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %12 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %11, i32 0, i32 0
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @spsc_queue_push(i32* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @LIKELY(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %30

19:                                               ; preds = %10
  %20 = load %struct.lwan_thread*, %struct.lwan_thread** %3, align 8
  %21 = call i32 @lwan_thread_nudge(%struct.lwan_thread* %20)
  br label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @lwan_status_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @close(i32 %28)
  br label %30

30:                                               ; preds = %25, %18
  ret void
}

declare dso_local i32 @spsc_queue_push(i32*, i32) #1

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i32 @lwan_thread_nudge(%struct.lwan_thread*) #1

declare dso_local i32 @lwan_status_error(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

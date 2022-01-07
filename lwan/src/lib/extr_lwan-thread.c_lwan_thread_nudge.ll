; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_nudge.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-thread.c_lwan_thread_nudge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_thread = type { i32* }

@.str = private unnamed_addr constant [6 x i8] c"write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_thread_nudge(%struct.lwan_thread* %0) #0 {
  %2 = alloca %struct.lwan_thread*, align 8
  %3 = alloca i32, align 4
  store %struct.lwan_thread* %0, %struct.lwan_thread** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.lwan_thread*, %struct.lwan_thread** %2, align 8
  %5 = getelementptr inbounds %struct.lwan_thread, %struct.lwan_thread* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @write(i32 %8, i32* %3, i32 4)
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @UNLIKELY(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @lwan_status_perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  ret void
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i64 @write(i32, i32*, i32) #1

declare dso_local i32 @lwan_status_perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

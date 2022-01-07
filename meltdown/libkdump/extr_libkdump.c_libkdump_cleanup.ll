; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_cleanup.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIGNAL_HANDLER = common dso_local global i64 0, align 8
@SIGSEGV = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@load_thread = common dso_local global i32* null, align 8
@_mem = common dso_local global i32* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Everything is cleaned up, good bye!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libkdump_cleanup() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %3 = load i64, i64* @SIGNAL_HANDLER, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @SIGSEGV, align 4
  %7 = load i32, i32* @SIG_DFL, align 4
  %8 = call i32 @signal(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %0
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %21, %9
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32*, i32** @load_thread, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pthread_cancel(i32 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %10

24:                                               ; preds = %10
  %25 = load i32*, i32** @load_thread, align 8
  %26 = call i32 @free(i32* %25)
  %27 = load i32*, i32** @_mem, align 8
  %28 = call i32 @free(i32* %27)
  %29 = load i32, i32* @SUCCESS, align 4
  %30 = call i32 @debug(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @pthread_cancel(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

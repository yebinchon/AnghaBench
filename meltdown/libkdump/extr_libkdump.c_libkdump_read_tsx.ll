; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_read_tsx.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_read_tsx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@_XBEGIN_STARTED = common dso_local global i64 0, align 8
@MELTDOWN = common dso_local global i32 0, align 4
@mem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libkdump_read_tsx() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 4
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %43, %0
  %10 = load i64, i64* %2, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %2, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = call i64 (...) @xbegin()
  %15 = load i64, i64* @_XBEGIN_STARTED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @MELTDOWN, align 4
  %19 = call i32 (...) @xend()
  br label %20

20:                                               ; preds = %17, %13
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %40, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 256
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i64, i64* @mem, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 4096
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i64 @flush_reload(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %1, align 4
  br label %46

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %24
  %39 = call i32 (...) @sched_yield()
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %21

43:                                               ; preds = %21
  %44 = call i32 (...) @sched_yield()
  br label %9

45:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i64 @xbegin(...) #1

declare dso_local i32 @xend(...) #1

declare dso_local i64 @flush_reload(i64) #1

declare dso_local i32 @sched_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

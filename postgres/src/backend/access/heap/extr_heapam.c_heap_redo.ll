; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_heap_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@XLOG_HEAP_OPMASK = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"heap_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @heap_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @XLogRecGetInfo(i32* %4)
  %6 = load i32, i32* @XLR_INFO_MASK, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %5, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @XLOG_HEAP_OPMASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %34 [
    i32 131, label %12
    i32 134, label %15
    i32 128, label %18
    i32 129, label %21
    i32 133, label %22
    i32 135, label %25
    i32 130, label %28
    i32 132, label %31
  ]

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @heap_xlog_insert(i32* %13)
  br label %38

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @heap_xlog_delete(i32* %16)
  br label %38

18:                                               ; preds = %1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @heap_xlog_update(i32* %19, i32 0)
  br label %38

21:                                               ; preds = %1
  br label %38

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @heap_xlog_update(i32* %23, i32 1)
  br label %38

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @heap_xlog_confirm(i32* %26)
  br label %38

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @heap_xlog_lock(i32* %29)
  br label %38

31:                                               ; preds = %1
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @heap_xlog_inplace(i32* %32)
  br label %38

34:                                               ; preds = %1
  %35 = load i32, i32* @PANIC, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @elog(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %31, %28, %25, %22, %21, %18, %15, %12
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @heap_xlog_insert(i32*) #1

declare dso_local i32 @heap_xlog_delete(i32*) #1

declare dso_local i32 @heap_xlog_update(i32*, i32) #1

declare dso_local i32 @heap_xlog_confirm(i32*) #1

declare dso_local i32 @heap_xlog_lock(i32*) #1

declare dso_local i32 @heap_xlog_inplace(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

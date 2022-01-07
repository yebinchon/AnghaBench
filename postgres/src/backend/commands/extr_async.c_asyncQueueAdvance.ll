; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueAdvance.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_async.c_asyncQueueAdvance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@QUEUE_PAGESIZE = common dso_local global i32 0, align 4
@AsyncQueueEntryEmptySize = common dso_local global i32 0, align 4
@QUEUE_MAX_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @asyncQueueAdvance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyncQueueAdvance(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load volatile i32, i32* %8, align 4
  %10 = call i32 @QUEUE_POS_PAGE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load volatile i32, i32* %11, align 4
  %13 = call i32 @QUEUE_POS_OFFSET(i32 %12)
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @QUEUE_PAGESIZE, align 4
  %19 = icmp sle i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @AsyncQueueEntryEmptySize, align 4
  %24 = call i32 @QUEUEALIGN(i32 %23)
  %25 = add nsw i32 %22, %24
  %26 = load i32, i32* @QUEUE_PAGESIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @QUEUE_MAX_PAGE, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %28
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32*, i32** %3, align 8
  %38 = load volatile i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @SET_QUEUE_POS(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @QUEUE_POS_PAGE(i32) #1

declare dso_local i32 @QUEUE_POS_OFFSET(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @QUEUEALIGN(i32) #1

declare dso_local i32 @SET_QUEUE_POS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

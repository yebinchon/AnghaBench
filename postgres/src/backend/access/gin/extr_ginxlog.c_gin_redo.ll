; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_gin_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_gin_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLR_INFO_MASK = common dso_local global i32 0, align 4
@opCtx = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"gin_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gin_redo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @XLogRecGetInfo(i32* %5)
  %7 = load i32, i32* @XLR_INFO_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @opCtx, align 4
  %11 = call i32 @MemoryContextSwitchTo(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %40 [
    i32 136, label %13
    i32 133, label %16
    i32 131, label %19
    i32 128, label %22
    i32 129, label %25
    i32 134, label %28
    i32 130, label %31
    i32 132, label %34
    i32 135, label %37
  ]

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @ginRedoCreatePTree(i32* %14)
  br label %44

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ginRedoInsert(i32* %17)
  br label %44

19:                                               ; preds = %1
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @ginRedoSplit(i32* %20)
  br label %44

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @ginRedoVacuumPage(i32* %23)
  br label %44

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @ginRedoVacuumDataLeafPage(i32* %26)
  br label %44

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @ginRedoDeletePage(i32* %29)
  br label %44

31:                                               ; preds = %1
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @ginRedoUpdateMetapage(i32* %32)
  br label %44

34:                                               ; preds = %1
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @ginRedoInsertListPage(i32* %35)
  br label %44

37:                                               ; preds = %1
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @ginRedoDeleteListPages(i32* %38)
  br label %44

40:                                               ; preds = %1
  %41 = load i32, i32* @PANIC, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @elog(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %19, %16, %13
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @MemoryContextSwitchTo(i32 %45)
  %47 = load i32, i32* @opCtx, align 4
  %48 = call i32 @MemoryContextReset(i32 %47)
  ret void
}

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @ginRedoCreatePTree(i32*) #1

declare dso_local i32 @ginRedoInsert(i32*) #1

declare dso_local i32 @ginRedoSplit(i32*) #1

declare dso_local i32 @ginRedoVacuumPage(i32*) #1

declare dso_local i32 @ginRedoVacuumDataLeafPage(i32*) #1

declare dso_local i32 @ginRedoDeletePage(i32*) #1

declare dso_local i32 @ginRedoUpdateMetapage(i32*) #1

declare dso_local i32 @ginRedoInsertListPage(i32*) #1

declare dso_local i32 @ginRedoDeleteListPages(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

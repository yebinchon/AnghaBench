; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spginsert.c_spginsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spginsert.c_spginsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SP-GiST insert temporary context\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spginsert(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load i32, i32* @CurrentMemoryContext, align 4
  %19 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %20 = call i32 @AllocSetContextCreate(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = call i32 @MemoryContextSwitchTo(i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @initSpGistState(i32* %15, i32 %23)
  br label %25

25:                                               ; preds = %35, %7
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @spgdoinsert(i32 %26, i32* %15, i32 %27, i32 %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @MemoryContextReset(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @initSpGistState(i32* %15, i32 %38)
  br label %25

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @SpGistUpdateMetaPage(i32 %41)
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @MemoryContextSwitchTo(i32 %43)
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @MemoryContextDelete(i32 %45)
  ret i32 0
}

declare dso_local i32 @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @initSpGistState(i32*, i32) #1

declare dso_local i32 @spgdoinsert(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @SpGistUpdateMetaPage(i32) #1

declare dso_local i32 @MemoryContextDelete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

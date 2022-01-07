; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_EvalPlanQual.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execMain.c_EvalPlanQual.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EvalPlanQual(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @EvalPlanQualBegin(i32* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @EvalPlanQualSlot(i32* %17, i32 %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @ExecCopySlot(i32* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @EvalPlanQualNext(i32* %29)
  store i32* %30, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @TupIsNull(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @ExecMaterializeSlot(i32* %35)
  br label %37

37:                                               ; preds = %34, %28
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @ExecClearTuple(i32* %38)
  %40 = load i32*, i32** %9, align 8
  ret i32* %40
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @EvalPlanQualBegin(i32*) #1

declare dso_local i32* @EvalPlanQualSlot(i32*, i32, i32) #1

declare dso_local i32 @ExecCopySlot(i32*, i32*) #1

declare dso_local i32* @EvalPlanQualNext(i32*) #1

declare dso_local i32 @TupIsNull(i32*) #1

declare dso_local i32 @ExecMaterializeSlot(i32*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

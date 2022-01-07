; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execAmi.c_ExecMarkPos.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execAmi.c_ExecMarkPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unrecognized node type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ExecMarkPos(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @nodeTag(i32* %3)
  switch i32 %4, label %23 [
    i32 131, label %5
    i32 132, label %8
    i32 133, label %11
    i32 130, label %14
    i32 128, label %17
    i32 129, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @ExecIndexMarkPos(i32* %6)
  br label %28

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @ExecIndexOnlyMarkPos(i32* %9)
  br label %28

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @ExecCustomMarkPos(i32* %12)
  br label %28

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ExecMaterialMarkPos(i32* %15)
  br label %28

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @ExecSortMarkPos(i32* %18)
  br label %28

20:                                               ; preds = %1
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @ExecResultMarkPos(i32* %21)
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @DEBUG2, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @nodeTag(i32* %25)
  %27 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %20, %17, %14, %11, %8, %5
  ret void
}

declare dso_local i32 @nodeTag(i32*) #1

declare dso_local i32 @ExecIndexMarkPos(i32*) #1

declare dso_local i32 @ExecIndexOnlyMarkPos(i32*) #1

declare dso_local i32 @ExecCustomMarkPos(i32*) #1

declare dso_local i32 @ExecMaterialMarkPos(i32*) #1

declare dso_local i32 @ExecSortMarkPos(i32*) #1

declare dso_local i32 @ExecResultMarkPos(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

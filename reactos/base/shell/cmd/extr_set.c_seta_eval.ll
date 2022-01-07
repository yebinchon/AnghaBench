; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_eval.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_set.c_seta_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_SYNTAX_COMMAND_INCORRECT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @seta_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seta_eval(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @STRING_SYNTAX_COMMAND_INCORRECT, align 4
  %10 = call i32 @ConErrResPuts(i32 %9)
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = call i32 @seta_stmt(i32** %3, i32* %4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %12
  %18 = load i32, i32* @bc, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @ConOutPrintf(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %15, %8
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ConErrResPuts(i32) #1

declare dso_local i32 @seta_stmt(i32**, i32*) #1

declare dso_local i32 @ConOutPrintf(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

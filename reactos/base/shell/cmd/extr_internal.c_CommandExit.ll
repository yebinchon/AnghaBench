; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_CommandExit.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_internal.c_CommandExit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@TRUE = common dso_local global i32 0, align 4
@STRING_EXIT_HELP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@bExit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"/b\00", align 1
@bc = common dso_local global i64 0, align 8
@nErrorLevel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CommandExit(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @_tcsncmp(i32* %4, i32 %5, i32 2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @TRUE, align 4
  %10 = load i32, i32* @STRING_EXIT_HELP, align 4
  %11 = call i32 @ConOutResPaging(i32 %9, i32 %10)
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* @bExit, align 4
  store i32 0, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @_T(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i64 @_tcsnicmp(i32* %14, i32 %15, i32 2)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  store i32* %20, i32** %3, align 8
  %21 = load i64, i64* @bc, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @ExitBatch()
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* @bExit, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* @bExit, align 4
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %36, %30
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @_istspace(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %3, align 8
  br label %31

39:                                               ; preds = %31
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @_istdigit(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @_ttoi(i32* %45)
  store i32 %46, i32* @nErrorLevel, align 4
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %8
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @_tcsncmp(i32*, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @ConOutResPaging(i32, i32) #1

declare dso_local i64 @_tcsnicmp(i32*, i32, i32) #1

declare dso_local i32 @ExitBatch(...) #1

declare dso_local i64 @_istspace(i32) #1

declare dso_local i64 @_istdigit(i32) #1

declare dso_local i32 @_ttoi(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

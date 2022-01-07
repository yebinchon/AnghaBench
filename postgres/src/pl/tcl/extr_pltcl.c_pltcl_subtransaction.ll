; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_subtransaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_subtransaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@TCL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_subtransaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_subtransaction(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %13 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32**, i32*** %9, align 8
  %20 = call i32 @Tcl_WrongNumArgs(i32* %18, i32 1, i32** %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @TCL_ERROR, align 4
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = call i32 @BeginInternalSubTransaction(i32* null)
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @MemoryContextSwitchTo(i32 %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32**, i32*** %9, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @Tcl_EvalObjEx(i32* %26, i32* %29, i32 0)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @TCL_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = call i32 (...) @RollbackAndReleaseCurrentSubTransaction()
  br label %38

36:                                               ; preds = %22
  %37 = call i32 (...) @ReleaseCurrentSubTransaction()
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @MemoryContextSwitchTo(i32 %39)
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* @CurrentResourceOwner, align 4
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %38, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @Tcl_WrongNumArgs(i32*, i32, i32**, i8*) #1

declare dso_local i32 @BeginInternalSubTransaction(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i32 @RollbackAndReleaseCurrentSubTransaction(...) #1

declare dso_local i32 @ReleaseCurrentSubTransaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

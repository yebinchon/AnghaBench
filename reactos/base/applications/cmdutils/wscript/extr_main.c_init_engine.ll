; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_init_engine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@script_site = common dso_local global i32 0, align 4
@wscriptW = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@wshW = common dso_local global i32 0, align 4
@SCRIPTSTATE_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @init_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_engine(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 (...) @load_typelib()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %53

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @IActiveScript_SetScriptSite(i32* %12, i32* @script_site)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @FAILED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %3, align 4
  br label %53

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @IActiveScriptParse_InitNew(i32* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %19
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @wscriptW, align 4
  %30 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %31 = call i32 @IActiveScript_AddNamedItem(i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @FAILED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %27
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @wshW, align 4
  %40 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %41 = call i32 @IActiveScript_AddNamedItem(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @FAILED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %3, align 4
  br label %53

47:                                               ; preds = %37
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* @SCRIPTSTATE_INITIALIZED, align 4
  %50 = call i32 @IActiveScript_SetScriptState(i32* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SUCCEEDED(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %45, %35, %25, %17, %9
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @load_typelib(...) #1

declare dso_local i32 @IActiveScript_SetScriptSite(i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IActiveScriptParse_InitNew(i32*) #1

declare dso_local i32 @IActiveScript_AddNamedItem(i32*, i32, i32) #1

declare dso_local i32 @IActiveScript_SetScriptState(i32*, i32) #1

declare dso_local i32 @SUCCEEDED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

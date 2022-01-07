; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_create_engine.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_create_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IID_IActiveScript = common dso_local global i32 0, align 4
@IID_IActiveScriptParse = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**)* @create_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_engine(i32* %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %13 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %14 = or i32 %12, %13
  %15 = bitcast i32** %9 to i8**
  %16 = call i32 @CoCreateInstance(i32* %11, i32* null, i32 %14, i32* @IID_IUnknown, i8** %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %49

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = bitcast i32** %8 to i8**
  %25 = call i32 @IUnknown_QueryInterface(i32* %23, i32* @IID_IActiveScript, i8** %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @IUnknown_Release(i32* %26)
  %28 = load i32, i32* %10, align 4
  %29 = call i64 @FAILED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* %4, align 4
  br label %49

33:                                               ; preds = %22
  %34 = load i32*, i32** %8, align 8
  %35 = load i32**, i32*** %7, align 8
  %36 = bitcast i32** %35 to i8**
  %37 = call i32 @IActiveScript_QueryInterface(i32* %34, i32* @IID_IActiveScriptParse, i8** %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @IActiveScript_Release(i32* %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %4, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load i32*, i32** %8, align 8
  %47 = load i32**, i32*** %6, align 8
  store i32* %46, i32** %47, align 8
  %48 = load i32, i32* @TRUE, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %45, %41, %31, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IActiveScript_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IActiveScript_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

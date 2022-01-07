; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_ScriptEngine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_global.c_JSGlobal_ScriptEngine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSGlobal_ScriptEngine.JScriptW = internal constant [8 x i8] c"JScript\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @JSGlobal_ScriptEngine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSGlobal_ScriptEngine(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %13, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %6
  %19 = call i32* @jsstr_alloc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @JSGlobal_ScriptEngine.JScriptW, i64 0, i64 0))
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %7, align 4
  br label %30

24:                                               ; preds = %18
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @jsval_string(i32* %25)
  %27 = load i32*, i32** %13, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %6
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32* @jsstr_alloc(i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

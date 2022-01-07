; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_run_script.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/wscript/extr_main.c_run_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Could not get script text\0A\00", align 1
@SCRIPTTEXT_HOSTMANAGESSOURCE = common dso_local global i32 0, align 4
@SCRIPTITEM_ISVISIBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ParseScriptText failed: %08x\0A\00", align 1
@SCRIPTSTATE_STARTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"SetScriptState failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @run_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_script(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @get_script_str(i32* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @WINE_FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %40

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SCRIPTTEXT_HOSTMANAGESSOURCE, align 4
  %19 = load i32, i32* @SCRIPTITEM_ISVISIBLE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @IActiveScriptParse_ParseScriptText(i32* %16, i32 %17, i32* null, i32* null, i32* null, i32 1, i32 1, i32 %20, i32* null, i32* null)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @SysFreeString(i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* %8, align 4
  %29 = call i32 (i8*, ...) @WINE_FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %40

30:                                               ; preds = %15
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* @SCRIPTSTATE_STARTED, align 4
  %33 = call i32 @IActiveScript_SetScriptState(i32* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @FAILED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (i8*, ...) @WINE_FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %13, %27, %37, %30
  ret void
}

declare dso_local i32 @get_script_str(i32*) #1

declare dso_local i32 @WINE_FIXME(i8*, ...) #1

declare dso_local i32 @IActiveScriptParse_ParseScriptText(i32*, i32, i32*, i32*, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IActiveScript_SetScriptState(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

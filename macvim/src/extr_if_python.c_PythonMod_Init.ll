; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_python.c_PythonMod_Init.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_python.c_PythonMod_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PythonMod_Init.argv = internal global [2 x i8*] [i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [20 x i8] c"/must>not&exist/foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vim\00", align 1
@VimMethods = common dso_local global i32 0, align 4
@PYTHON_API_VERSION = common dso_local global i32 0, align 4
@vim_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @PythonMod_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PythonMod_Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @init_types()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %19

5:                                                ; preds = %0
  %6 = call i32 @PySys_SetArgv(i32 1, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @PythonMod_Init.argv, i64 0, i64 0))
  %7 = load i32, i32* @VimMethods, align 4
  %8 = load i32, i32* @PYTHON_API_VERSION, align 4
  %9 = call i32 @Py_InitModule4(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %7, i8* null, i32* null, i32 %8)
  store i32 %9, i32* @vim_module, align 4
  %10 = load i32, i32* @vim_module, align 4
  %11 = call i64 @populate_module(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %19

14:                                               ; preds = %5
  %15 = call i64 (...) @init_sys_path()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 -1, i32* %1, align 4
  br label %19

18:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %17, %13, %4
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @init_types(...) #1

declare dso_local i32 @PySys_SetArgv(i32, i8**) #1

declare dso_local i32 @Py_InitModule4(i8*, i32, i8*, i32*, i32) #1

declare dso_local i64 @populate_module(i32) #1

declare dso_local i64 @init_sys_path(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

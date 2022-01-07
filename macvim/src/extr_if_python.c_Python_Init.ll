; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_python.c_Python_Init.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_python.c_Python_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialised = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@globals = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"import sys; sys.path = filter(lambda x: x != '/must>not&exist', sys.path)\00", align 1
@saved_python_thread = common dso_local global i32 0, align 4
@PYTHON_HOME = common dso_local global i32 0, align 4
@Py_NoSiteFlag = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Python_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Python_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @initialised, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @init_structs()
  %6 = call i32 (...) @Py_Initialize()
  %7 = call i32 (...) @PyEval_InitThreads()
  %8 = call i64 (...) @PythonIO_Init_io()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  br label %21

11:                                               ; preds = %4
  %12 = call i64 (...) @PythonMod_Init()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %21

15:                                               ; preds = %11
  %16 = call i32 @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @PyModule_GetDict(i32 %16)
  store i32 %17, i32* @globals, align 4
  %18 = call i32 @PyRun_SimpleString(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 (...) @PyEval_SaveThread()
  store i32 %19, i32* @saved_python_thread, align 4
  store i32 1, i32* @initialised, align 4
  br label %20

20:                                               ; preds = %15, %0
  store i32 0, i32* %1, align 4
  br label %23

21:                                               ; preds = %14, %10
  %22 = call i32 (...) @PythonIO_Flush()
  store i32 -1, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @init_structs(...) #1

declare dso_local i32 @Py_Initialize(...) #1

declare dso_local i32 @PyEval_InitThreads(...) #1

declare dso_local i64 @PythonIO_Init_io(...) #1

declare dso_local i64 @PythonMod_Init(...) #1

declare dso_local i32 @PyModule_GetDict(i32) #1

declare dso_local i32 @PyImport_AddModule(i8*) #1

declare dso_local i32 @PyRun_SimpleString(i8*) #1

declare dso_local i32 @PyEval_SaveThread(...) #1

declare dso_local i32 @PythonIO_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

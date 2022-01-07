; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_PythonIO_Init_io.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_PythonIO_Init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@Output = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@Error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"E264: Python: Error initialising I/O objects\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @PythonIO_Init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PythonIO_Init_io() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @PySys_SetObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @Output)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %16

5:                                                ; preds = %0
  %6 = call i64 @PySys_SetObject(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* @Error)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 -1, i32* %1, align 4
  br label %16

9:                                                ; preds = %5
  %10 = call i64 (...) @PyErr_Occurred()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @EMSG(i32 %13)
  store i32 -1, i32* %1, align 4
  br label %16

15:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %15, %12, %8, %4
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @PySys_SetObject(i8*, i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

declare dso_local i32 @EMSG(i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

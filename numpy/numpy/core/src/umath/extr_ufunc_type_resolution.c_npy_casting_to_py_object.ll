; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_npy_casting_to_py_object.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_ufunc_type_resolution.c_npy_casting_to_py_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"equiv\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"safe\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"same_kind\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @npy_casting_to_py_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @npy_casting_to_py_object(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 131, label %5
    i32 132, label %7
    i32 130, label %9
    i32 129, label %11
    i32 128, label %13
  ]

5:                                                ; preds = %1
  %6 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %2, align 8
  br label %18

7:                                                ; preds = %1
  %8 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %8, i32** %2, align 8
  br label %18

9:                                                ; preds = %1
  %10 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32* %10, i32** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32* %12, i32** %2, align 8
  br label %18

13:                                               ; preds = %1
  %14 = call i32* @PyUString_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %14, i32** %2, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32* @PyInt_FromLong(i32 %16)
  store i32* %17, i32** %2, align 8
  br label %18

18:                                               ; preds = %15, %13, %11, %9, %7, %5
  %19 = load i32*, i32** %2, align 8
  ret i32* %19
}

declare dso_local i32* @PyUString_FromString(i8*) #1

declare dso_local i32* @PyInt_FromLong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

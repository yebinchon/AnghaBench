; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/extr_lapack_litemodule.c_check_object.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/extr_lapack_litemodule.c_check_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LapackError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Expected an array for parameter %s in lapack_lite.%s\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Parameter %s is not contiguous in lapack_lite.%s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Parameter %s is not of type %s in lapack_lite.%s\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Parameter %s has non-native byte order in lapack_lite.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i8*, i8*)* @check_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_object(i32* %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @PyArray_Check(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* @LapackError, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = call i32 (i32, i8*, i8*, i8*, ...) @PyErr_Format(i32 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18)
  store i32 0, i32* %6, align 4
  br label %50

20:                                               ; preds = %5
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @PyArray_IS_C_CONTIGUOUS(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @LapackError, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 (i32, i8*, i8*, i8*, ...) @PyErr_Format(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  store i32 0, i32* %6, align 4
  br label %50

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @PyArray_TYPE(i32* %30)
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @LapackError, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 (i32, i8*, i8*, i8*, ...) @PyErr_Format(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %36, i8* %37, i8* %38)
  store i32 0, i32* %6, align 4
  br label %50

40:                                               ; preds = %29
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @PyArray_ISBYTESWAPPED(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @LapackError, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 (i32, i8*, i8*, i8*, ...) @PyErr_Format(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %47)
  store i32 0, i32* %6, align 4
  br label %50

49:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %44, %34, %24, %15
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @PyArray_Check(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32 @PyArray_IS_C_CONTIGUOUS(i32*) #1

declare dso_local i32 @PyArray_TYPE(i32*) #1

declare dso_local i64 @PyArray_ISBYTESWAPPED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

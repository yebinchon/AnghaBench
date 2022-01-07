; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_BufferSetattr.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_BufferSetattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to rename buffer\00", align 1
@PyExc_AttributeError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32*)* @BufferSetattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BufferSetattr(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = call i64 @CheckBuffer(%struct.TYPE_4__* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @StringToChars(i32* %21, i32** %11)
  store i32* %22, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %51

25:                                               ; preds = %20
  %26 = call i32 (...) @VimTryStart()
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @aucmd_prepbuf(i32* %9, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @rename_buffer(i32* %31)
  store i32 %32, i32* %10, align 4
  %33 = call i32 @aucmd_restbuf(i32* %9)
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @Py_XDECREF(i32* %34)
  %36 = call i64 (...) @VimTryEnd()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %51

39:                                               ; preds = %25
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @FAIL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = call i32 @PyErr_SET_VIM(i32 %44)
  store i32 -1, i32* %4, align 4
  br label %51

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %51

47:                                               ; preds = %16
  %48 = load i32, i32* @PyExc_AttributeError, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @PyErr_SetString(i32 %48, i8* %49)
  store i32 -1, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %46, %43, %38, %24, %15
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @CheckBuffer(%struct.TYPE_4__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @StringToChars(i32*, i32**) #1

declare dso_local i32 @VimTryStart(...) #1

declare dso_local i32 @aucmd_prepbuf(i32*, i32) #1

declare dso_local i32 @rename_buffer(i32*) #1

declare dso_local i32 @aucmd_restbuf(i32*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

declare dso_local i64 @VimTryEnd(...) #1

declare dso_local i32 @PyErr_SET_VIM(i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

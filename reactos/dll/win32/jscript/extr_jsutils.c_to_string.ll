; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_string.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@to_string.nullW = internal constant [5 x i8] c"null\00", align 1
@to_string.trueW = internal constant [5 x i8] c"true\00", align 1
@to_string.falseW = internal constant [6 x i8] c"false\00", align 1
@S_OK = common dso_local global i32 0, align 4
@HINT_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"unsupported %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_string(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @jsval_type(i32 %10)
  switch i32 %11, label %55 [
    i32 128, label %12
    i32 132, label %16
    i32 131, label %19
    i32 129, label %24
    i32 130, label %29
    i32 133, label %47
  ]

12:                                               ; preds = %3
  %13 = call i32* (...) @jsstr_undefined()
  %14 = load i32**, i32*** %7, align 8
  store i32* %13, i32** %14, align 8
  %15 = load i32, i32* @S_OK, align 4
  store i32 %15, i32* %4, align 4
  br label %70

16:                                               ; preds = %3
  %17 = call i32* @jsstr_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @to_string.nullW, i64 0, i64 0))
  %18 = load i32**, i32*** %7, align 8
  store i32* %17, i32** %18, align 8
  br label %60

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @get_number(i32 %20)
  %22 = load i32**, i32*** %7, align 8
  %23 = call i32 @double_to_string(i32 %21, i32** %22)
  store i32 %23, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @get_string(i32 %25)
  %27 = call i32* @jsstr_addref(i32 %26)
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %60

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @HINT_STRING, align 4
  %33 = call i32 @to_primitive(i32* %30, i32 %31, i32* %8, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @FAILED(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %29
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32**, i32*** %7, align 8
  %43 = call i32 @to_string(i32* %40, i32 %41, i32** %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @jsval_release(i32 %44)
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %70

47:                                               ; preds = %3
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @get_bool(i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @to_string.trueW, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @to_string.falseW, i64 0, i64 0)
  %53 = call i32* @jsstr_alloc(i8* %52)
  %54 = load i32**, i32*** %7, align 8
  store i32* %53, i32** %54, align 8
  br label %60

55:                                               ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @debugstr_jsval(i32 %56)
  %58 = call i32 @FIXME(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %59, i32* %4, align 4
  br label %70

60:                                               ; preds = %47, %24, %16
  %61 = load i32**, i32*** %7, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @S_OK, align 4
  br label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @E_OUTOFMEMORY, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %55, %39, %37, %19, %12
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32* @jsstr_alloc(i8*) #1

declare dso_local i32 @double_to_string(i32, i32**) #1

declare dso_local i32 @get_number(i32) #1

declare dso_local i32* @jsstr_addref(i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @to_primitive(i32*, i32, i32*, i32) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @jsval_release(i32) #1

declare dso_local i32 @get_bool(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_jsval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_StringConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_StringConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unimplemented flags: %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @StringConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StringConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %73 [
    i32 128, label %20
    i32 129, label %41
  ]

20:                                               ; preds = %6
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @to_string(i32* %24, i32 %27, i32** %15)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @FAILED(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %79

34:                                               ; preds = %23
  br label %37

35:                                               ; preds = %20
  %36 = call i32* (...) @jsstr_empty()
  store i32* %36, i32** %15, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @jsval_string(i32* %38)
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  br label %77

41:                                               ; preds = %6
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32*, i32** %8, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @to_string(i32* %45, i32 %48, i32** %16)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @FAILED(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %7, align 4
  br label %79

55:                                               ; preds = %44
  br label %58

56:                                               ; preds = %41
  %57 = call i32* (...) @jsstr_empty()
  store i32* %57, i32** %16, align 8
  br label %58

58:                                               ; preds = %56, %55
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @create_string(i32* %59, i32* %60, i32** %17)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @SUCCEEDED(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32*, i32** %17, align 8
  %67 = call i32 @jsval_obj(i32* %66)
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %58
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @jsstr_release(i32* %70)
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %7, align 4
  br label %79

73:                                               ; preds = %6
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %76, i32* %7, align 4
  br label %79

77:                                               ; preds = %37
  %78 = load i32, i32* @S_OK, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %73, %69, %53, %32
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32* @jsstr_empty(...) #1

declare dso_local i32 @jsval_string(i32*) #1

declare dso_local i32 @create_string(i32*, i32*, i32**) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

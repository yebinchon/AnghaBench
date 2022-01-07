; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_ObjectConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_object.c_ObjectConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unimplemented flags: %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @ObjectConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ObjectConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  switch i32 %18, label %89 [
    i32 128, label %19
    i32 129, label %19
  ]

19:                                               ; preds = %6, %6
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = load i32*, i32** %12, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @is_undefined(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %22
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @is_null(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %69, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_object_instance(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @get_object(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %40, %34
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @to_object(i32* %47, i32 %50, i32** %16)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @FAILED(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %7, align 4
  br label %95

57:                                               ; preds = %46
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32*, i32** %16, align 8
  %62 = call i32 @jsval_disp(i32* %61)
  %63 = load i32*, i32** %13, align 8
  store i32 %62, i32* %63, align 4
  br label %67

64:                                               ; preds = %57
  %65 = load i32*, i32** %16, align 8
  %66 = call i32 @IDispatch_Release(i32* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* @S_OK, align 4
  store i32 %68, i32* %7, align 4
  br label %95

69:                                               ; preds = %40, %28, %22
  br label %70

70:                                               ; preds = %69, %19
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @create_object(i32* %71, i32* null, i32** %15)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @FAILED(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %7, align 4
  br label %95

78:                                               ; preds = %70
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @jsval_obj(i32* %82)
  %84 = load i32*, i32** %13, align 8
  store i32 %83, i32* %84, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32*, i32** %15, align 8
  %87 = call i32 @jsdisp_release(i32* %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %93

89:                                               ; preds = %6
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %92, i32* %7, align 4
  br label %95

93:                                               ; preds = %88
  %94 = load i32, i32* @S_OK, align 4
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %93, %89, %76, %67, %55
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_undefined(i32) #1

declare dso_local i32 @is_null(i32) #1

declare dso_local i32 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @to_object(i32*, i32, i32**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @jsval_disp(i32*) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @create_object(i32*, i32*, i32**) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

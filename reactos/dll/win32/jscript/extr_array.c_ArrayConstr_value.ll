; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_ArrayConstr_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_ArrayConstr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@JS_E_INVALID_LENGTH = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unimplemented flags: %x\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @ArrayConstr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ArrayConstr_value(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %10, align 4
  switch i32 %19, label %102 [
    i32 128, label %20
    i32 129, label %20
  ]

20:                                               ; preds = %6, %6
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %59

23:                                               ; preds = %20
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @is_number(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %23
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call double @get_number(i32 %32)
  store double %33, double* %17, align 8
  %34 = load double, double* %17, align 8
  %35 = fcmp olt double %34, 0.000000e+00
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load double, double* %17, align 8
  %38 = call i32 @is_int32(double %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36, %29
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @JS_E_INVALID_LENGTH, align 4
  %43 = call i32 @throw_range_error(i32* %41, i32 %42, i32* null)
  store i32 %43, i32* %7, align 4
  br label %108

44:                                               ; preds = %36
  %45 = load i32*, i32** %8, align 8
  %46 = load double, double* %17, align 8
  %47 = fptoui double %46 to i32
  %48 = call i32 @create_array(i32* %45, i32 %47, i32** %14)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @FAILED(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %16, align 4
  store i32 %53, i32* %7, align 4
  br label %108

54:                                               ; preds = %44
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @jsval_obj(i32* %55)
  %57 = load i32*, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %7, align 4
  br label %108

59:                                               ; preds = %23, %20
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @create_array(i32* %60, i32 %61, i32** %14)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @FAILED(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %16, align 4
  store i32 %67, i32* %7, align 4
  br label %108

68:                                               ; preds = %59
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %87, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %90

73:                                               ; preds = %69
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %15, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @jsdisp_propput_idx(i32* %74, i32 %75, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @FAILED(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %90

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %15, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %69

90:                                               ; preds = %85, %69
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @FAILED(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32*, i32** %14, align 8
  %96 = call i32 @jsdisp_release(i32* %95)
  %97 = load i32, i32* %16, align 4
  store i32 %97, i32* %7, align 4
  br label %108

98:                                               ; preds = %90
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @jsval_obj(i32* %99)
  %101 = load i32*, i32** %13, align 8
  store i32 %100, i32* %101, align 4
  br label %106

102:                                              ; preds = %6
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %105, i32* %7, align 4
  br label %108

106:                                              ; preds = %98
  %107 = load i32, i32* @S_OK, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %102, %94, %66, %54, %52, %40
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_number(i32) #1

declare dso_local double @get_number(i32) #1

declare dso_local i32 @is_int32(double) #1

declare dso_local i32 @throw_range_error(i32*, i32, i32*) #1

declare dso_local i32 @create_array(i32*, i32, i32**) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @jsval_obj(i32*) #1

declare dso_local i32 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

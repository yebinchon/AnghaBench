; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_shift.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_array.c_Array_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@DISP_E_UNKNOWNNAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32, i32, i32*, i32*)* @Array_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @Array_shift(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @get_length(i32* %21, i32* %22, i32** %14, i32* %15)
  store i64 %23, i64* %19, align 8
  %24 = load i64, i64* %19, align 8
  %25 = call i64 @FAILED(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* %19, align 8
  store i64 %28, i64* %7, align 8
  br label %130

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = load i32*, i32** %14, align 8
  %34 = call i64 @set_length(i32* %33, i32 0)
  store i64 %34, i64* %19, align 8
  %35 = load i64, i64* %19, align 8
  %36 = call i64 @FAILED(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i64, i64* %19, align 8
  store i64 %39, i64* %7, align 8
  br label %130

40:                                               ; preds = %32
  %41 = load i32*, i32** %13, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = call i32 (...) @jsval_undefined()
  %45 = load i32*, i32** %13, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @S_OK, align 8
  store i64 %47, i64* %7, align 8
  br label %130

48:                                               ; preds = %29
  %49 = load i32*, i32** %14, align 8
  %50 = call i64 @jsdisp_get_idx(i32* %49, i32 0, i32* %18)
  store i64 %50, i64* %19, align 8
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = call i32 (...) @jsval_undefined()
  store i32 %55, i32* %18, align 4
  %56 = load i64, i64* @S_OK, align 8
  store i64 %56, i64* %19, align 8
  br label %57

57:                                               ; preds = %54, %48
  store i32 1, i32* %16, align 4
  br label %58

58:                                               ; preds = %92, %57
  %59 = load i64, i64* %19, align 8
  %60 = call i64 @SUCCEEDED(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %95

68:                                               ; preds = %66
  %69 = load i32*, i32** %14, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @jsdisp_get_idx(i32* %69, i32 %70, i32* %17)
  store i64 %71, i64* %19, align 8
  %72 = load i64, i64* %19, align 8
  %73 = load i64, i64* @DISP_E_UNKNOWNNAME, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sub nsw i32 %77, 1
  %79 = call i64 @jsdisp_delete_idx(i32* %76, i32 %78)
  store i64 %79, i64* %19, align 8
  br label %91

80:                                               ; preds = %68
  %81 = load i64, i64* %19, align 8
  %82 = call i64 @SUCCEEDED(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %16, align 4
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %17, align 4
  %89 = call i64 @jsdisp_propput_idx(i32* %85, i32 %87, i32 %88)
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %58

95:                                               ; preds = %66
  %96 = load i64, i64* %19, align 8
  %97 = call i64 @SUCCEEDED(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sub nsw i32 %101, 1
  %103 = call i64 @jsdisp_delete_idx(i32* %100, i32 %102)
  store i64 %103, i64* %19, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i64 @SUCCEEDED(i64 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %99
  %108 = load i32*, i32** %14, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i64 @set_length(i32* %108, i32 %110)
  store i64 %111, i64* %19, align 8
  br label %112

112:                                              ; preds = %107, %99
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i64, i64* %19, align 8
  %115 = call i64 @FAILED(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i64, i64* %19, align 8
  store i64 %118, i64* %7, align 8
  br label %130

119:                                              ; preds = %113
  %120 = load i32*, i32** %13, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %18, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %128

125:                                              ; preds = %119
  %126 = load i32, i32* %18, align 4
  %127 = call i32 @jsval_release(i32 %126)
  br label %128

128:                                              ; preds = %125, %122
  %129 = load i64, i64* %19, align 8
  store i64 %129, i64* %7, align 8
  br label %130

130:                                              ; preds = %128, %117, %46, %38, %27
  %131 = load i64, i64* %7, align 8
  ret i64 %131
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64 @get_length(i32*, i32*, i32**, i32*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @set_length(i32*, i32) #1

declare dso_local i32 @jsval_undefined(...) #1

declare dso_local i64 @jsdisp_get_idx(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @jsdisp_delete_idx(i32*, i32) #1

declare dso_local i64 @jsdisp_propput_idx(i32*, i32, i32) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_substr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_substr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_substr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_substr(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @get_string_val(i32* %22, i32* %23, i32** %17)
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* %19, align 4
  %26 = call i64 @FAILED(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %6
  %29 = load i32, i32* %19, align 4
  store i32 %29, i32* %7, align 4
  br label %127

30:                                               ; preds = %6
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 @jsstr_length(i32* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp uge i32 %33, 1
  br i1 %34, label %35, label %64

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @to_integer(i32* %36, i32 %39, double* %18)
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %19, align 4
  %42 = call i64 @FAILED(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @jsstr_release(i32* %45)
  %47 = load i32, i32* %19, align 4
  store i32 %47, i32* %7, align 4
  br label %127

48:                                               ; preds = %35
  %49 = load double, double* %18, align 8
  %50 = fcmp oge double %49, 0.000000e+00
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load double, double* %18, align 8
  %53 = call i64 @is_int32(double %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %16, align 4
  %57 = load double, double* %18, align 8
  %58 = call i32 @min(i32 %56, double %57)
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %16, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %61, %48
  br label %64

64:                                               ; preds = %63, %30
  %65 = load i32, i32* %11, align 4
  %66 = icmp uge i32 %65, 2
  br i1 %66, label %67, label %101

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @to_integer(i32* %68, i32 %71, double* %18)
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = call i64 @FAILED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load i32*, i32** %17, align 8
  %78 = call i32 @jsstr_release(i32* %77)
  %79 = load i32, i32* %19, align 4
  store i32 %79, i32* %7, align 4
  br label %127

80:                                               ; preds = %67
  %81 = load double, double* %18, align 8
  %82 = fcmp oge double %81, 0.000000e+00
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load double, double* %18, align 8
  %85 = call i64 @is_int32(double %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %88, %89
  %91 = load double, double* %18, align 8
  %92 = call i32 @min(i32 %90, double %91)
  br label %97

93:                                               ; preds = %83
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sub nsw i32 %94, %95
  br label %97

97:                                               ; preds = %93, %87
  %98 = phi i32 [ %92, %87 ], [ %96, %93 ]
  store i32 %98, i32* %15, align 4
  br label %100

99:                                               ; preds = %80
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %99, %97
  br label %105

101:                                              ; preds = %64
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %14, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %15, align 4
  br label %105

105:                                              ; preds = %101, %100
  %106 = load i32, i32* @S_OK, align 4
  store i32 %106, i32* %19, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %123

109:                                              ; preds = %105
  %110 = load i32*, i32** %17, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32* @jsstr_substr(i32* %110, i32 %111, i32 %112)
  store i32* %113, i32** %20, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load i32*, i32** %20, align 8
  %118 = call i32 @jsval_string(i32* %117)
  %119 = load i32*, i32** %13, align 8
  store i32 %118, i32* %119, align 4
  br label %122

120:                                              ; preds = %109
  %121 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %121, i32* %19, align 4
  br label %122

122:                                              ; preds = %120, %116
  br label %123

123:                                              ; preds = %122, %105
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @jsstr_release(i32* %124)
  %126 = load i32, i32* %19, align 4
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %123, %76, %44, %28
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @is_int32(double) #1

declare dso_local i32 @min(i32, double) #1

declare dso_local i32* @jsstr_substr(i32*, i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

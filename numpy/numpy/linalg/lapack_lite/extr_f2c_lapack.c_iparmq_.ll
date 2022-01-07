; ModuleID = '/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_iparmq_.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/linalg/lapack_lite/extr_f2c_lapack.c_iparmq_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@iparmq_.nh = internal global i32 0, align 4
@iparmq_.ns = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iparmq_(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %34, label %26

26:                                               ; preds = %9
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 13
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %83

34:                                               ; preds = %30, %26, %9
  %35 = load i32*, i32** %15, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %36, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @iparmq_.nh, align 4
  store i32 2, i32* @iparmq_.ns, align 4
  %41 = load i32, i32* @iparmq_.nh, align 4
  %42 = icmp sge i32 %41, 30
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 4, i32* @iparmq_.ns, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* @iparmq_.nh, align 4
  %46 = icmp sge i32 %45, 60
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 10, i32* @iparmq_.ns, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* @iparmq_.nh, align 4
  %50 = icmp sge i32 %49, 150
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i32, i32* @iparmq_.nh, align 4
  %53 = sitofp i32 %52 to float
  %54 = call float @log(float %53)
  %55 = call float @log(float 2.000000e+00)
  %56 = fdiv float %54, %55
  store float %56, float* %22, align 4
  store i32 10, i32* %20, align 4
  %57 = load i32, i32* @iparmq_.nh, align 4
  %58 = call i32 @i_nint(float* %22)
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @max(i32 %60, i32 %61)
  store i32 %62, i32* @iparmq_.ns, align 4
  br label %63

63:                                               ; preds = %51, %48
  %64 = load i32, i32* @iparmq_.nh, align 4
  %65 = icmp sge i32 %64, 590
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 64, i32* @iparmq_.ns, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* @iparmq_.nh, align 4
  %69 = icmp sge i32 %68, 3000
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 128, i32* @iparmq_.ns, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* @iparmq_.nh, align 4
  %73 = icmp sge i32 %72, 6000
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 256, i32* @iparmq_.ns, align 4
  br label %75

75:                                               ; preds = %74, %71
  store i32 2, i32* %20, align 4
  %76 = load i32, i32* @iparmq_.ns, align 4
  %77 = load i32, i32* @iparmq_.ns, align 4
  %78 = srem i32 %77, 2
  %79 = sub nsw i32 %76, %78
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = call i32 @max(i32 %80, i32 %81)
  store i32 %82, i32* @iparmq_.ns, align 4
  br label %83

83:                                               ; preds = %75, %30
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 12
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 75, i32* %19, align 4
  br label %131

88:                                               ; preds = %83
  %89 = load i32*, i32** %10, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 14
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 14, i32* %19, align 4
  br label %130

93:                                               ; preds = %88
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 15
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @iparmq_.ns, align 4
  store i32 %98, i32* %19, align 4
  br label %129

99:                                               ; preds = %93
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 13
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = load i32, i32* @iparmq_.nh, align 4
  %105 = icmp sle i32 %104, 500
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @iparmq_.ns, align 4
  store i32 %107, i32* %19, align 4
  br label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @iparmq_.ns, align 4
  %110 = mul nsw i32 %109, 3
  %111 = sdiv i32 %110, 2
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %108, %106
  br label %128

113:                                              ; preds = %99
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  store i32 0, i32* %19, align 4
  %118 = load i32, i32* @iparmq_.ns, align 4
  %119 = icmp sge i32 %118, 14
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %19, align 4
  br label %121

121:                                              ; preds = %120, %117
  %122 = load i32, i32* @iparmq_.ns, align 4
  %123 = icmp sge i32 %122, 14
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 2, i32* %19, align 4
  br label %125

125:                                              ; preds = %124, %121
  br label %127

126:                                              ; preds = %113
  store i32 -1, i32* %19, align 4
  br label %127

127:                                              ; preds = %126, %125
  br label %128

128:                                              ; preds = %127, %112
  br label %129

129:                                              ; preds = %128, %97
  br label %130

130:                                              ; preds = %129, %92
  br label %131

131:                                              ; preds = %130, %87
  %132 = load i32, i32* %19, align 4
  ret i32 %132
}

declare dso_local float @log(float) #1

declare dso_local i32 @i_nint(float*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

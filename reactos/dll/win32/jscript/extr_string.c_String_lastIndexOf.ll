; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_lastIndexOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_lastIndexOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_lastIndexOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_lastIndexOf(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %21, align 4
  %25 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @get_string_flat_val(i32* %26, i32* %27, i32** %18, i32** %20)
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %22, align 4
  %30 = call i64 @FAILED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %22, align 4
  store i32 %33, i32* %7, align 4
  br label %157

34:                                               ; preds = %6
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load i32*, i32** %13, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i32 @jsval_number(i32 -1)
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32*, i32** %18, align 8
  %45 = call i32 @jsstr_release(i32* %44)
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %7, align 4
  br label %157

47:                                               ; preds = %34
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @to_flat_string(i32* %48, i32 %51, i32** %17, i32** %19)
  store i32 %52, i32* %22, align 4
  %53 = load i32, i32* %22, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32*, i32** %18, align 8
  %58 = call i32 @jsstr_release(i32* %57)
  %59 = load i32, i32* %22, align 4
  store i32 %59, i32* %7, align 4
  br label %157

60:                                               ; preds = %47
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @jsstr_length(i32* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = call i32 @jsstr_length(i32* %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp uge i32 %65, 2
  br i1 %66, label %67, label %93

67:                                               ; preds = %60
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @to_integer(i32* %68, i32 %71, double* %23)
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = call i64 @SUCCEEDED(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %67
  %77 = load double, double* %23, align 8
  %78 = fcmp ogt double %77, 0.000000e+00
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load double, double* %23, align 8
  %81 = call i64 @is_int32(double %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load double, double* %23, align 8
  %86 = fptoui double %85 to i32
  %87 = call i32 @min(i32 %84, i32 %86)
  br label %90

88:                                               ; preds = %79
  %89 = load i32, i32* %16, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = phi i32 [ %87, %83 ], [ %89, %88 ]
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %76, %67
  br label %95

93:                                               ; preds = %60
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = load i32, i32* %22, align 4
  %97 = call i64 @SUCCEEDED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %138

99:                                               ; preds = %95
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp uge i32 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %99
  %104 = load i32*, i32** %20, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sub i32 %106, %107
  %109 = call i32 @min(i32 %105, i32 %108)
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  store i32* %111, i32** %24, align 8
  br label %112

112:                                              ; preds = %134, %103
  %113 = load i32*, i32** %24, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = icmp uge i32* %113, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %112
  %117 = load i32*, i32** %24, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* %15, align 4
  %120 = zext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memcmp(i32* %117, i32* %118, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %116
  %126 = load i32*, i32** %24, align 8
  %127 = load i32*, i32** %20, align 8
  %128 = ptrtoint i32* %126 to i64
  %129 = ptrtoint i32* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %21, align 4
  br label %137

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %133
  %135 = load i32*, i32** %24, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 -1
  store i32* %136, i32** %24, align 8
  br label %112

137:                                              ; preds = %125, %112
  br label %138

138:                                              ; preds = %137, %99, %95
  %139 = load i32*, i32** %17, align 8
  %140 = call i32 @jsstr_release(i32* %139)
  %141 = load i32*, i32** %18, align 8
  %142 = call i32 @jsstr_release(i32* %141)
  %143 = load i32, i32* %22, align 4
  %144 = call i64 @FAILED(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* %22, align 4
  store i32 %147, i32* %7, align 4
  br label %157

148:                                              ; preds = %138
  %149 = load i32*, i32** %13, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* %21, align 4
  %153 = call i32 @jsval_number(i32 %152)
  %154 = load i32*, i32** %13, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* @S_OK, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %155, %146, %56, %43, %32
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_flat_val(i32*, i32*, i32**, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32 @to_flat_string(i32*, i32, i32**, i32**) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i64 @is_int32(double) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

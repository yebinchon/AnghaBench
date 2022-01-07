; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_slice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_slice(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  br label %162

30:                                               ; preds = %6
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 @jsstr_length(i32* %31)
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %80

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
  br label %162

48:                                               ; preds = %35
  %49 = load double, double* %18, align 8
  %50 = call i64 @is_int32(double %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load double, double* %18, align 8
  %54 = fptosi double %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %72

65:                                               ; preds = %52
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %64
  br label %79

73:                                               ; preds = %48
  %74 = load double, double* %18, align 8
  %75 = fcmp ogt double %74, 0.000000e+00
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %76, %73
  br label %79

79:                                               ; preds = %78, %72
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* %11, align 4
  %82 = icmp uge i32 %81, 2
  br i1 %82, label %83, label %130

83:                                               ; preds = %80
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @to_integer(i32* %84, i32 %87, double* %18)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = call i64 @FAILED(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @jsstr_release(i32* %93)
  %95 = load i32, i32* %19, align 4
  store i32 %95, i32* %7, align 4
  br label %162

96:                                               ; preds = %83
  %97 = load double, double* %18, align 8
  %98 = call i64 @is_int32(double %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load double, double* %18, align 8
  %102 = fptosi double %101 to i32
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %15, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %112

112:                                              ; preds = %111, %105
  br label %120

113:                                              ; preds = %100
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* %16, align 4
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %117, %113
  br label %120

120:                                              ; preds = %119, %112
  br label %129

121:                                              ; preds = %96
  %122 = load double, double* %18, align 8
  %123 = fcmp olt double %122, 0.000000e+00
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  br label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %16, align 4
  br label %127

127:                                              ; preds = %125, %124
  %128 = phi i32 [ 0, %124 ], [ %126, %125 ]
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %127, %120
  br label %132

130:                                              ; preds = %80
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %130, %129
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i32*, i32** %13, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %158

141:                                              ; preds = %138
  %142 = load i32*, i32** %17, align 8
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %14, align 4
  %146 = sub nsw i32 %144, %145
  %147 = call i32* @jsstr_substr(i32* %142, i32 %143, i32 %146)
  store i32* %147, i32** %20, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %141
  %151 = load i32*, i32** %17, align 8
  %152 = call i32 @jsstr_release(i32* %151)
  %153 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %153, i32* %7, align 4
  br label %162

154:                                              ; preds = %141
  %155 = load i32*, i32** %20, align 8
  %156 = call i32 @jsval_string(i32* %155)
  %157 = load i32*, i32** %13, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %154, %138
  %159 = load i32*, i32** %17, align 8
  %160 = call i32 @jsstr_release(i32* %159)
  %161 = load i32, i32* @S_OK, align 4
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %158, %150, %92, %44, %28
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32 @to_integer(i32*, i32, double*) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i64 @is_int32(double) #1

declare dso_local i32* @jsstr_substr(i32*, i32, i32) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

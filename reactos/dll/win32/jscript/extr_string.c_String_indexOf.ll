; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_indexOf.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_String_indexOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32, i32*, i32*)* @String_indexOf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @String_indexOf(i32* %0, i32* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
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
  %25 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %21, align 4
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @get_string_flat_val(i32* %27, i32* %28, i32** %18, i32** %20)
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* %22, align 4
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %22, align 4
  store i32 %34, i32* %7, align 4
  br label %159

35:                                               ; preds = %6
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i32 @jsval_number(i32 -1)
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** %18, align 8
  %46 = call i32 @jsstr_release(i32* %45)
  %47 = load i32, i32* @S_OK, align 4
  store i32 %47, i32* %7, align 4
  br label %159

48:                                               ; preds = %35
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @to_flat_string(i32* %49, i32 %52, i32** %17, i32** %19)
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %22, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32*, i32** %18, align 8
  %59 = call i32 @jsstr_release(i32* %58)
  %60 = load i32, i32* %22, align 4
  store i32 %60, i32* %7, align 4
  br label %159

61:                                               ; preds = %48
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @jsstr_length(i32* %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32*, i32** %18, align 8
  %65 = call i32 @jsstr_length(i32* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp uge i32 %66, 2
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @to_integer(i32* %69, i32 %72, double* %23)
  store i32 %73, i32* %22, align 4
  %74 = load i32, i32* %22, align 4
  %75 = call i64 @SUCCEEDED(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %68
  %78 = load double, double* %23, align 8
  %79 = fcmp ogt double %78, 0.000000e+00
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load double, double* %23, align 8
  %82 = call i64 @is_int32(double %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* %16, align 4
  %86 = load double, double* %23, align 8
  %87 = call i32 @min(i32 %85, double %86)
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %16, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = phi i32 [ %87, %84 ], [ %89, %88 ]
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %77, %68
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* %22, align 4
  %95 = call i64 @SUCCEEDED(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %140

97:                                               ; preds = %93
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp uge i32 %98, %99
  br i1 %100, label %101, label %140

101:                                              ; preds = %97
  %102 = load i32*, i32** %20, align 8
  %103 = load i32, i32* %16, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = sub i64 0, %107
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32* %109, i32** %24, align 8
  %110 = load i32*, i32** %20, align 8
  %111 = load i32, i32* %14, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32* %113, i32** %25, align 8
  br label %114

114:                                              ; preds = %136, %101
  %115 = load i32*, i32** %25, align 8
  %116 = load i32*, i32** %24, align 8
  %117 = icmp ule i32* %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load i32*, i32** %25, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = load i32, i32* %15, align 4
  %122 = zext i32 %121 to i64
  %123 = mul i64 %122, 4
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memcmp(i32* %119, i32* %120, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %118
  %128 = load i32*, i32** %25, align 8
  %129 = load i32*, i32** %20, align 8
  %130 = ptrtoint i32* %128 to i64
  %131 = ptrtoint i32* %129 to i64
  %132 = sub i64 %130, %131
  %133 = sdiv exact i64 %132, 4
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %21, align 4
  br label %139

135:                                              ; preds = %118
  br label %136

136:                                              ; preds = %135
  %137 = load i32*, i32** %25, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %25, align 8
  br label %114

139:                                              ; preds = %127, %114
  br label %140

140:                                              ; preds = %139, %97, %93
  %141 = load i32*, i32** %17, align 8
  %142 = call i32 @jsstr_release(i32* %141)
  %143 = load i32*, i32** %18, align 8
  %144 = call i32 @jsstr_release(i32* %143)
  %145 = load i32, i32* %22, align 4
  %146 = call i64 @FAILED(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %140
  %149 = load i32, i32* %22, align 4
  store i32 %149, i32* %7, align 4
  br label %159

150:                                              ; preds = %140
  %151 = load i32*, i32** %13, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load i32, i32* %21, align 4
  %155 = call i32 @jsval_number(i32 %154)
  %156 = load i32*, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* @S_OK, align 4
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %157, %148, %57, %44, %33
  %160 = load i32, i32* %7, align 4
  ret i32 %160
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

declare dso_local i32 @min(i32, double) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

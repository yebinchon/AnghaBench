; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_floatformat_to_double.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_floatformat_to_double.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32, i32, i64, i32, i32, i32, i32, i64, i32, i32 }

@NAN = common dso_local global double 0.000000e+00, align 8
@INFINITY = common dso_local global double 0.000000e+00, align 8
@floatformat_intbit_no = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @floatformat_to_double(%struct.floatformat* %0, i8* %1, double* %2) #0 {
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store i8* %1, i8** %5, align 8
  store double* %2, double** %6, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %18 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %21 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %24 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %27 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @get_field(i8* %16, i32 %19, i32 %22, i32 %25, i32 %28)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %32 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %64

35:                                               ; preds = %3
  %36 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @mant_bits_set(%struct.floatformat* %36, i8* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load double, double* @NAN, align 8
  store double %42, double* %8, align 8
  br label %45

43:                                               ; preds = %35
  %44 = load double, double* @INFINITY, align 8
  store double %44, double* %8, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %48 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %51 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %54 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @get_field(i8* %46, i32 %49, i32 %52, i32 %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load double, double* %8, align 8
  %60 = fneg double %59
  store double %60, double* %8, align 8
  br label %61

61:                                               ; preds = %58, %45
  %62 = load double, double* %8, align 8
  %63 = load double*, double** %6, align 8
  store double %62, double* %63, align 8
  br label %153

64:                                               ; preds = %3
  %65 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %66 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %69 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %12, align 4
  store double 0.000000e+00, double* %8, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %75 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 1, %76
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %9, align 8
  br label %98

79:                                               ; preds = %64
  %80 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %81 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %9, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %9, align 8
  %86 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %87 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @floatformat_intbit_no, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i64, i64* %9, align 8
  %93 = call double @ldexp(double 1.000000e+00, i64 %92)
  store double %93, double* %8, align 8
  br label %97

94:                                               ; preds = %79
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %73
  br label %99

99:                                               ; preds = %102, %98
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %99
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @min(i32 %103, i32 32)
  store i32 %104, i32* %11, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %107 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %110 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @get_field(i8* %105, i32 %108, i32 %111, i32 %112, i32 %113)
  store i64 %114, i64* %10, align 8
  %115 = load i64, i64* %10, align 8
  %116 = uitofp i64 %115 to double
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = sub nsw i64 %117, %119
  %121 = call double @ldexp(double %116, i64 %120)
  %122 = load double, double* %8, align 8
  %123 = fadd double %122, %121
  store double %123, double* %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* %9, align 8
  %127 = sub nsw i64 %126, %125
  store i64 %127, i64* %9, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %13, align 4
  %133 = sub i32 %132, %131
  store i32 %133, i32* %13, align 4
  br label %99

134:                                              ; preds = %99
  %135 = load i8*, i8** %7, align 8
  %136 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %137 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %140 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %143 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @get_field(i8* %135, i32 %138, i32 %141, i32 %144, i32 1)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %134
  %148 = load double, double* %8, align 8
  %149 = fneg double %148
  store double %149, double* %8, align 8
  br label %150

150:                                              ; preds = %147, %134
  %151 = load double, double* %8, align 8
  %152 = load double*, double** %6, align 8
  store double %151, double* %152, align 8
  br label %153

153:                                              ; preds = %150, %61
  ret void
}

declare dso_local i64 @get_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mant_bits_set(%struct.floatformat*, i8*) #1

declare dso_local double @ldexp(double, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

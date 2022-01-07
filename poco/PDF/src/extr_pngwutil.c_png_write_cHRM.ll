; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_cHRM.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_pngwutil.c_png_write_cHRM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"in png_write_cHRM\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid cHRM white point specified\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"white_x=%f, white_y=%f\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid cHRM red point specified\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Invalid cHRM green point specified\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Invalid cHRM blue point specified\00", align 1
@png_cHRM = common dso_local global i32 0, align 4
@PNG_cHRM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_write_cHRM(i32 %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca [32 x i32], align 16
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  store double %8, double* %18, align 8
  %21 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %22 = load double, double* %11, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %38, label %24

24:                                               ; preds = %9
  %25 = load double, double* %11, align 8
  %26 = fcmp ogt double %25, 8.000000e-01
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load double, double* %12, align 8
  %29 = fcmp olt double %28, 0.000000e+00
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load double, double* %12, align 8
  %32 = fcmp ogt double %31, 8.000000e-01
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load double, double* %11, align 8
  %35 = load double, double* %12, align 8
  %36 = fadd double %34, %35
  %37 = fcmp ogt double %36, 1.000000e+00
  br i1 %37, label %38, label %45

38:                                               ; preds = %33, %30, %27, %24, %9
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @png_warning(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = load double, double* %11, align 8
  %43 = load double, double* %12, align 8
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), double %42, double %43)
  br label %155

45:                                               ; preds = %33
  %46 = load double, double* %11, align 8
  %47 = fmul double %46, 1.000000e+05
  %48 = fadd double %47, 5.000000e-01
  %49 = fptosi double %48 to i64
  store i64 %49, i64* %20, align 8
  %50 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %51 = load i64, i64* %20, align 8
  %52 = call i32 @png_save_uint_32(i32* %50, i64 %51)
  %53 = load double, double* %12, align 8
  %54 = fmul double %53, 1.000000e+05
  %55 = fadd double %54, 5.000000e-01
  %56 = fptosi double %55 to i64
  store i64 %56, i64* %20, align 8
  %57 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = load i64, i64* %20, align 8
  %60 = call i32 @png_save_uint_32(i32* %58, i64 %59)
  %61 = load double, double* %13, align 8
  %62 = fcmp olt double %61, 0.000000e+00
  br i1 %62, label %71, label %63

63:                                               ; preds = %45
  %64 = load double, double* %14, align 8
  %65 = fcmp olt double %64, 0.000000e+00
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load double, double* %13, align 8
  %68 = load double, double* %14, align 8
  %69 = fadd double %67, %68
  %70 = fcmp ogt double %69, 1.000000e+00
  br i1 %70, label %71, label %74

71:                                               ; preds = %66, %63, %45
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @png_warning(i32 %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %155

74:                                               ; preds = %66
  %75 = load double, double* %13, align 8
  %76 = fmul double %75, 1.000000e+05
  %77 = fadd double %76, 5.000000e-01
  %78 = fptosi double %77 to i64
  store i64 %78, i64* %20, align 8
  %79 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i64, i64* %20, align 8
  %82 = call i32 @png_save_uint_32(i32* %80, i64 %81)
  %83 = load double, double* %14, align 8
  %84 = fmul double %83, 1.000000e+05
  %85 = fadd double %84, 5.000000e-01
  %86 = fptosi double %85 to i64
  store i64 %86, i64* %20, align 8
  %87 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %88 = getelementptr inbounds i32, i32* %87, i64 12
  %89 = load i64, i64* %20, align 8
  %90 = call i32 @png_save_uint_32(i32* %88, i64 %89)
  %91 = load double, double* %15, align 8
  %92 = fcmp olt double %91, 0.000000e+00
  br i1 %92, label %101, label %93

93:                                               ; preds = %74
  %94 = load double, double* %16, align 8
  %95 = fcmp olt double %94, 0.000000e+00
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = load double, double* %15, align 8
  %98 = load double, double* %16, align 8
  %99 = fadd double %97, %98
  %100 = fcmp ogt double %99, 1.000000e+00
  br i1 %100, label %101, label %104

101:                                              ; preds = %96, %93, %74
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @png_warning(i32 %102, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %155

104:                                              ; preds = %96
  %105 = load double, double* %15, align 8
  %106 = fmul double %105, 1.000000e+05
  %107 = fadd double %106, 5.000000e-01
  %108 = fptosi double %107 to i64
  store i64 %108, i64* %20, align 8
  %109 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  %111 = load i64, i64* %20, align 8
  %112 = call i32 @png_save_uint_32(i32* %110, i64 %111)
  %113 = load double, double* %16, align 8
  %114 = fmul double %113, 1.000000e+05
  %115 = fadd double %114, 5.000000e-01
  %116 = fptosi double %115 to i64
  store i64 %116, i64* %20, align 8
  %117 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %118 = getelementptr inbounds i32, i32* %117, i64 20
  %119 = load i64, i64* %20, align 8
  %120 = call i32 @png_save_uint_32(i32* %118, i64 %119)
  %121 = load double, double* %17, align 8
  %122 = fcmp olt double %121, 0.000000e+00
  br i1 %122, label %131, label %123

123:                                              ; preds = %104
  %124 = load double, double* %18, align 8
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = load double, double* %17, align 8
  %128 = load double, double* %18, align 8
  %129 = fadd double %127, %128
  %130 = fcmp ogt double %129, 1.000000e+00
  br i1 %130, label %131, label %134

131:                                              ; preds = %126, %123, %104
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @png_warning(i32 %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %155

134:                                              ; preds = %126
  %135 = load double, double* %17, align 8
  %136 = fmul double %135, 1.000000e+05
  %137 = fadd double %136, 5.000000e-01
  %138 = fptosi double %137 to i64
  store i64 %138, i64* %20, align 8
  %139 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %140 = getelementptr inbounds i32, i32* %139, i64 24
  %141 = load i64, i64* %20, align 8
  %142 = call i32 @png_save_uint_32(i32* %140, i64 %141)
  %143 = load double, double* %18, align 8
  %144 = fmul double %143, 1.000000e+05
  %145 = fadd double %144, 5.000000e-01
  %146 = fptosi double %145 to i64
  store i64 %146, i64* %20, align 8
  %147 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %148 = getelementptr inbounds i32, i32* %147, i64 28
  %149 = load i64, i64* %20, align 8
  %150 = call i32 @png_save_uint_32(i32* %148, i64 %149)
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @png_cHRM, align 4
  %153 = getelementptr inbounds [32 x i32], [32 x i32]* %19, i64 0, i64 0
  %154 = call i32 @png_write_chunk(i32 %151, i32 %152, i32* %153, i32 32)
  br label %155

155:                                              ; preds = %134, %131, %101, %71, %38
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

declare dso_local i32 @png_warning(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, double, double) #1

declare dso_local i32 @png_save_uint_32(i32*, i64) #1

declare dso_local i32 @png_write_chunk(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

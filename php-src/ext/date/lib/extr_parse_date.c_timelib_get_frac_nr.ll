; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_get_frac_nr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_get_frac_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMELIB_UNSET = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i8**, i32)* @timelib_get_frac_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @timelib_get_frac_nr(i8** %0, i32 %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load double, double* @TIMELIB_UNSET, align 8
  store double %11, double* %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i8**, i8*** %4, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 46
  br i1 %17, label %18, label %38

18:                                               ; preds = %12
  %19 = load i8**, i8*** %4, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 58
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp slt i32 %28, 48
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sgt i32 %34, 57
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i1 [ true, %24 ], [ %35, %30 ]
  br label %38

38:                                               ; preds = %36, %18, %12
  %39 = phi i1 [ false, %18 ], [ false, %12 ], [ %37, %36 ]
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = load i8**, i8*** %4, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load double, double* @TIMELIB_UNSET, align 8
  store double %47, double* %3, align 8
  br label %126

48:                                               ; preds = %40
  %49 = load i8**, i8*** %4, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %49, align 8
  br label %12

52:                                               ; preds = %38
  %53 = load i8**, i8*** %4, align 8
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %85, %52
  %56 = load i8**, i8*** %4, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 46
  br i1 %60, label %79, label %61

61:                                               ; preds = %55
  %62 = load i8**, i8*** %4, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load i8**, i8*** %4, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sge i32 %71, 48
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i8**, i8*** %4, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sle i32 %77, 57
  br i1 %78, label %79, label %83

79:                                               ; preds = %73, %61, %55
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %73, %67
  %84 = phi i1 [ false, %73 ], [ false, %67 ], [ %82, %79 ]
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = load i8**, i8*** %4, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %55

91:                                               ; preds = %83
  %92 = load i8**, i8*** %4, align 8
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = trunc i64 %98 to i32
  %100 = call i8* @timelib_calloc(i32 1, i32 %99)
  store i8* %100, i8** %8, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = sub nsw i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memcpy(i8* %101, i8* %103, i32 %110)
  %112 = load i8*, i8** %8, align 8
  %113 = call double @strtod(i8* %112, i32* null)
  %114 = load i8*, i8** %7, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 7, %118
  %120 = trunc i64 %119 to i32
  %121 = call double @pow(i32 10, i32 %120)
  %122 = fmul double %113, %121
  store double %122, double* %9, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = call i32 @timelib_free(i8* %123)
  %125 = load double, double* %9, align 8
  store double %125, double* %3, align 8
  br label %126

126:                                              ; preds = %91, %46
  %127 = load double, double* %3, align 8
  ret double %127
}

declare dso_local i8* @timelib_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local double @strtod(i8*, i32*) #1

declare dso_local double @pow(i32, i32) #1

declare dso_local i32 @timelib_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_timestring.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_parse_timestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i32, i8* }

@.str = private unnamed_addr constant [12 x i8] c"%d:%d:%lf%n\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d:%lf%n\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%lf%n\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, double*, i8)* @parse_timestring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_timestring(i32 %0, i8* %1, double* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bstr, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = bitcast %struct.bstr* %6 to { i32, i8* }*
  %14 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %13, i32 0, i32 0
  store i32 %0, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %13, i32 0, i32 1
  store i8* %1, i8** %15, align 8
  store double* %2, double** %7, align 8
  store i8 %3, i8* %8, align 1
  %16 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %16, align 8
  %17 = bitcast %struct.bstr* %6 to { i32, i8* }*
  %18 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %17, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @bstr_sscanf(i32 %19, i8* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %9, i32* %10, double* %12, i32* %11)
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %34

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 3600, %25
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 60, %27
  %29 = add nsw i32 %26, %28
  %30 = sitofp i32 %29 to double
  %31 = load double, double* %12, align 8
  %32 = fadd double %30, %31
  %33 = load double*, double** %7, align 8
  store double %32, double* %33, align 8
  br label %63

34:                                               ; preds = %4
  %35 = bitcast %struct.bstr* %6 to { i32, i8* }*
  %36 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %35, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i32, i8*, i8*, ...) @bstr_sscanf(i32 %37, i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %9, double* %12, i32* %11)
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 60, %43
  %45 = sitofp i32 %44 to double
  %46 = load double, double* %12, align 8
  %47 = fadd double %45, %46
  %48 = load double*, double** %7, align 8
  store double %47, double* %48, align 8
  br label %62

49:                                               ; preds = %34
  %50 = bitcast %struct.bstr* %6 to { i32, i8* }*
  %51 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %50, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i32, i8*, i8*, ...) @bstr_sscanf(i32 %52, i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double* %12, i32* %11)
  %56 = icmp sge i32 %55, 1
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load double, double* %12, align 8
  %59 = load double*, double** %7, align 8
  store double %58, double* %59, align 8
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %88

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %24
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.bstr, %struct.bstr* %6, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %88

80:                                               ; preds = %68, %63
  %81 = load double*, double** %7, align 8
  %82 = load double, double* %81, align 8
  %83 = call i32 @isfinite(double %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %85, %79, %60
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @bstr_sscanf(i32, i8*, i8*, ...) #1

declare dso_local i32 @isfinite(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_vtt.c_parse_timestamps.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_vtt.c_parse_timestamps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c" %31s --> %31s%1023[^\0A\0D]\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Matches: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Start pts: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_timestamps(i32* %0, double* %1, double* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store i8** %3, i8*** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %18 = call i32 @sscanf(i32* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15, i8* %16, i8* %17)
  store i32 %18, i32* %12, align 4
  %19 = load double*, double** %6, align 8
  store double -1.000000e+00, double* %19, align 8
  %20 = load i8**, i8*** %8, align 8
  store i8* null, i8** %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sitofp i32 %21 to double
  %23 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), double %22)
  %24 = load i32, i32* %12, align 4
  %25 = icmp sge i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %28 = call double @parse_timestamp(i8* %27)
  %29 = load double*, double** %6, align 8
  store double %28, double* %29, align 8
  %30 = load double*, double** %6, align 8
  %31 = load double, double* %30, align 8
  %32 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), double %31)
  br label %33

33:                                               ; preds = %26, %4
  %34 = load i32, i32* %12, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %38 = call double @parse_timestamp(i8* %37)
  %39 = load double*, double** %7, align 8
  store double %38, double* %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %12, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  %52 = call i8* @malloc(i32 %51)
  %53 = load i8**, i8*** %8, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8**, i8*** %8, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @strncpy(i8* %55, i8* %56, i32 %57)
  %59 = load i8**, i8*** %8, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %47, %43, %40
  ret void
}

declare dso_local i32 @sscanf(i32*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @printf(i8*, double) #1

declare dso_local double @parse_timestamp(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

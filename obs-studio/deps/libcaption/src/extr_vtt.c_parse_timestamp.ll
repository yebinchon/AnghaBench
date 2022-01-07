; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_vtt.c_parse_timestamp.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/libcaption/src/extr_vtt.c_parse_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%d:%2d:%2d%*1[,.]%3d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%2d:%2d%*1[,.]%3d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @parse_timestamp(i32* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 (i32*, i8*, i32*, i32*, i32*, ...) @sscanf(i32* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5, i32* %6, i32* %7)
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sitofp i32 %12 to double
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call double @VTTTIME2SECONDS(double %13, i32 %14, i32 %15, i32 %16)
  store double %17, double* %2, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i32*, i8*, i32*, i32*, i32*, ...) @sscanf(i32* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call double @VTTTIME2SECONDS(double 0.000000e+00, i32 %23, i32 %24, i32 %25)
  store double %26, double* %2, align 8
  br label %28

27:                                               ; preds = %18
  store double -1.000000e+00, double* %2, align 8
  br label %28

28:                                               ; preds = %27, %22, %11
  %29 = load double, double* %2, align 8
  ret double %29
}

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local double @VTTTIME2SECONDS(double, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

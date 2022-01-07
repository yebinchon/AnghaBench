; ModuleID = '/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_command.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/filter/extr_af_rubberband.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { double }
%struct.mp_filter_command = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"set-pitch\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"multiply-pitch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_filter_command*)* @command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command(%struct.mp_filter* %0, %struct.mp_filter_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_filter_command*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_filter_command* %1, %struct.mp_filter_command** %5, align 8
  %10 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %11 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %10, i32 0, i32 0
  %12 = load %struct.priv*, %struct.priv** %11, align 8
  store %struct.priv* %12, %struct.priv** %6, align 8
  %13 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %14 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %72 [
    i32 128, label %16
    i32 129, label %66
  ]

16:                                               ; preds = %2
  store i8* null, i8** %7, align 8
  %17 = load %struct.priv*, %struct.priv** %6, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 0
  %19 = load double, double* %18, align 8
  store double %19, double* %8, align 8
  %20 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %21 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @strcmp(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %16
  %26 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %27 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call double @strtod(i32 %28, i8** %7)
  store double %29, double* %8, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %25
  %35 = load %struct.priv*, %struct.priv** %6, align 8
  %36 = load double, double* %8, align 8
  %37 = call i32 @update_pitch(%struct.priv* %35, double %36)
  store i32 %37, i32* %3, align 4
  br label %73

38:                                               ; preds = %16
  %39 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %40 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcmp(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %46 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call double @strtod(i32 %47, i8** %7)
  store double %48, double* %9, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load double, double* %9, align 8
  %55 = fcmp ole double %54, 0.000000e+00
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %44
  store i32 0, i32* %3, align 4
  br label %73

57:                                               ; preds = %53
  %58 = load double, double* %9, align 8
  %59 = load double, double* %8, align 8
  %60 = fmul double %59, %58
  store double %60, double* %8, align 8
  %61 = load %struct.priv*, %struct.priv** %6, align 8
  %62 = load double, double* %8, align 8
  %63 = call i32 @update_pitch(%struct.priv* %61, double %62)
  store i32 %63, i32* %3, align 4
  br label %73

64:                                               ; preds = %38
  br label %65

65:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %73

66:                                               ; preds = %2
  %67 = load %struct.priv*, %struct.priv** %6, align 8
  %68 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %69 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @update_speed(%struct.priv* %67, i32 %70)
  store i32 1, i32* %3, align 4
  br label %73

72:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %66, %65, %57, %56, %34, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local double @strtod(i32, i8**) #1

declare dso_local i32 @update_pitch(%struct.priv*, double) #1

declare dso_local i32 @update_speed(%struct.priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_expander-filter.c_expander_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_PRESETS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"gate\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"expander\00", align 1
@S_RATIO = common dso_local global i32 0, align 4
@S_THRESHOLD = common dso_local global i32 0, align 4
@S_ATTACK_TIME = common dso_local global i32 0, align 4
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@S_OUTPUT_GAIN = common dso_local global i32 0, align 4
@S_DETECTOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"RMS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @expander_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expander_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @S_PRESETS, align 4
  %7 = call i8* @obs_data_get_string(i32* %5, i32 %6)
  store i8* %7, i8** %3, align 8
  store i32 1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %11, %1
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @S_PRESETS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)
  %19 = call i32 @obs_data_set_default_string(i32* %13, i32 %14, i8* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* @S_RATIO, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, double 2.000000e+00, double 1.000000e+01
  %26 = call i32 @obs_data_set_default_double(i32* %20, i32 %21, double %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i32, i32* @S_THRESHOLD, align 4
  %29 = call i32 @obs_data_set_default_double(i32* %27, i32 %28, double -4.000000e+01)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32, i32* @S_ATTACK_TIME, align 4
  %32 = call i32 @obs_data_set_default_int(i32* %30, i32 %31, i32 10)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @S_RELEASE_TIME, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 50, i32 125
  %39 = call i32 @obs_data_set_default_int(i32* %33, i32 %34, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* @S_OUTPUT_GAIN, align 4
  %42 = call i32 @obs_data_set_default_double(i32* %40, i32 %41, double 0.000000e+00)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @S_DETECTOR, align 4
  %45 = call i32 @obs_data_set_default_string(i32* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i8* @obs_data_get_string(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @obs_data_set_default_string(i32*, i32, i8*) #1

declare dso_local i32 @obs_data_set_default_double(i32*, i32, double) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

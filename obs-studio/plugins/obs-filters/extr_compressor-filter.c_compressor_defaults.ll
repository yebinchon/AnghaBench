; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_defaults.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_compressor-filter.c_compressor_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_RATIO = common dso_local global i32 0, align 4
@S_THRESHOLD = common dso_local global i32 0, align 4
@S_ATTACK_TIME = common dso_local global i32 0, align 4
@S_RELEASE_TIME = common dso_local global i32 0, align 4
@S_OUTPUT_GAIN = common dso_local global i32 0, align 4
@S_SIDECHAIN_SOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @compressor_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressor_defaults(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @S_RATIO, align 4
  %5 = call i32 @obs_data_set_default_double(i32* %3, i32 %4, float 1.000000e+01)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @S_THRESHOLD, align 4
  %8 = call i32 @obs_data_set_default_double(i32* %6, i32 %7, float -1.800000e+01)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @S_ATTACK_TIME, align 4
  %11 = call i32 @obs_data_set_default_int(i32* %9, i32 %10, i32 6)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @S_RELEASE_TIME, align 4
  %14 = call i32 @obs_data_set_default_int(i32* %12, i32 %13, i32 60)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @S_OUTPUT_GAIN, align 4
  %17 = call i32 @obs_data_set_default_double(i32* %15, i32 %16, float 0.000000e+00)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @S_SIDECHAIN_SOURCE, align 4
  %20 = call i32 @obs_data_set_default_string(i32* %18, i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @obs_data_set_default_double(i32*, i32, float) #1

declare dso_local i32 @obs_data_set_default_int(i32*, i32, i32) #1

declare dso_local i32 @obs_data_set_default_string(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

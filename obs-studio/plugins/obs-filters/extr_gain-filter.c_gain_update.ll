; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gain-filter.c_gain_update.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_gain-filter.c_gain_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gain_data = type { i32, i32 }

@S_GAIN_DB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @gain_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gain_update(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.gain_data*, align 8
  %6 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.gain_data*
  store %struct.gain_data* %8, %struct.gain_data** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @S_GAIN_DB, align 4
  %11 = call double @obs_data_get_double(i32* %9, i32 %10)
  store double %11, double* %6, align 8
  %12 = call i32 (...) @obs_get_audio()
  %13 = call i32 @audio_output_get_channels(i32 %12)
  %14 = load %struct.gain_data*, %struct.gain_data** %5, align 8
  %15 = getelementptr inbounds %struct.gain_data, %struct.gain_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load double, double* %6, align 8
  %17 = fptrunc double %16 to float
  %18 = call i32 @db_to_mul(float %17)
  %19 = load %struct.gain_data*, %struct.gain_data** %5, align 8
  %20 = getelementptr inbounds %struct.gain_data, %struct.gain_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local double @obs_data_get_double(i32*, i32) #1

declare dso_local i32 @audio_output_get_channels(i32) #1

declare dso_local i32 @obs_get_audio(...) #1

declare dso_local i32 @db_to_mul(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

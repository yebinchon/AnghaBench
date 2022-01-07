; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-correction-filter.c_color_correction_filter_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-filters/extr_color-correction-filter.c_color_correction_filter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.color_correction_filter_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @color_correction_filter_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @color_correction_filter_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.color_correction_filter_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.color_correction_filter_data*
  store %struct.color_correction_filter_data* %5, %struct.color_correction_filter_data** %3, align 8
  %6 = load %struct.color_correction_filter_data*, %struct.color_correction_filter_data** %3, align 8
  %7 = getelementptr inbounds %struct.color_correction_filter_data, %struct.color_correction_filter_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = call i32 (...) @obs_enter_graphics()
  %12 = load %struct.color_correction_filter_data*, %struct.color_correction_filter_data** %3, align 8
  %13 = getelementptr inbounds %struct.color_correction_filter_data, %struct.color_correction_filter_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gs_effect_destroy(i64 %14)
  %16 = call i32 (...) @obs_leave_graphics()
  br label %17

17:                                               ; preds = %10, %1
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @bfree(i8* %18)
  ret void
}

declare dso_local i32 @obs_enter_graphics(...) #1

declare dso_local i32 @gs_effect_destroy(i64) #1

declare dso_local i32 @obs_leave_graphics(...) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

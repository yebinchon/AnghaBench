; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_path_data_free.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-properties.c_path_data_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path_data = type { i64, i32, i32 }

@OBS_PATH_FILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.path_data*)* @path_data_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @path_data_free(%struct.path_data* %0) #0 {
  %2 = alloca %struct.path_data*, align 8
  store %struct.path_data* %0, %struct.path_data** %2, align 8
  %3 = load %struct.path_data*, %struct.path_data** %2, align 8
  %4 = getelementptr inbounds %struct.path_data, %struct.path_data* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @bfree(i32 %5)
  %7 = load %struct.path_data*, %struct.path_data** %2, align 8
  %8 = getelementptr inbounds %struct.path_data, %struct.path_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @OBS_PATH_FILE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.path_data*, %struct.path_data** %2, align 8
  %14 = getelementptr inbounds %struct.path_data, %struct.path_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bfree(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @bfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

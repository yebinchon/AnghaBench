; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_free_capture_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_duplicator-monitor-capture.c_free_capture_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.duplicator_capture = type { float, i64, i64, i64, i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.duplicator_capture*)* @free_capture_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_capture_data(%struct.duplicator_capture* %0) #0 {
  %2 = alloca %struct.duplicator_capture*, align 8
  store %struct.duplicator_capture* %0, %struct.duplicator_capture** %2, align 8
  %3 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %4 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %3, i32 0, i32 6
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @gs_duplicator_destroy(i32* %5)
  %7 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %8 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %7, i32 0, i32 7
  %9 = call i32 @cursor_data_free(i32* %8)
  %10 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %11 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %10, i32 0, i32 6
  store i32* null, i32** %11, align 8
  %12 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %13 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %15 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %17 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %19 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %21 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.duplicator_capture*, %struct.duplicator_capture** %2, align 8
  %23 = getelementptr inbounds %struct.duplicator_capture, %struct.duplicator_capture* %22, i32 0, i32 0
  store float 0.000000e+00, float* %23, align 8
  ret void
}

declare dso_local i32 @gs_duplicator_destroy(i32*) #1

declare dso_local i32 @cursor_data_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

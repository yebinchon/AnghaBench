; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-output.c_flv_output_actual_stop.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_flv-output.c_flv_output_actual_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flv_output = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"FLV file output complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flv_output*, i32)* @flv_output_actual_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flv_output_actual_stop(%struct.flv_output* %0, i32 %1) #0 {
  %3 = alloca %struct.flv_output*, align 8
  %4 = alloca i32, align 4
  store %struct.flv_output* %0, %struct.flv_output** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %6 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %5, i32 0, i32 3
  %7 = call i32 @os_atomic_set_bool(i32* %6, i32 0)
  %8 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %9 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %14 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %17 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %20 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @os_ftelli64(i64 %21)
  %23 = call i32 @write_file_info(i64 %15, i32 %18, i32 %22)
  %24 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %25 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @fclose(i64 %26)
  br label %28

28:                                               ; preds = %12, %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %33 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @obs_output_signal_stop(i32 %34, i32 %35)
  br label %42

37:                                               ; preds = %28
  %38 = load %struct.flv_output*, %struct.flv_output** %3, align 8
  %39 = getelementptr inbounds %struct.flv_output, %struct.flv_output* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @obs_output_end_data_capture(i32 %40)
  br label %42

42:                                               ; preds = %37, %31
  %43 = call i32 @info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @os_atomic_set_bool(i32*, i32) #1

declare dso_local i32 @write_file_info(i64, i32, i32) #1

declare dso_local i32 @os_ftelli64(i64) #1

declare dso_local i32 @fclose(i64) #1

declare dso_local i32 @obs_output_signal_stop(i32, i32) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

declare dso_local i32 @info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_loop_file.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_loop_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i32, i64, %struct.MPOpts* }
%struct.MPOpts = type { i64 }

@AT_END_OF_FILE = common dso_local global i64 0, align 8
@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@MPSEEK_DEFAULT = common dso_local global i32 0, align 4
@MPSEEK_EXACT = common dso_local global i32 0, align 4
@KEEP_PLAYING = common dso_local global i64 0, align 8
@OSD_FFW = common dso_local global i32 0, align 4
@MPSEEK_ABSOLUTE = common dso_local global i32 0, align 4
@MPSEEK_FLAG_NOFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_loop_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_loop_file(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x double], align 16
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %7 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %8 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %7, i32 0, i32 3
  %9 = load %struct.MPOpts*, %struct.MPOpts** %8, align 8
  store %struct.MPOpts* %9, %struct.MPOpts** %3, align 8
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AT_END_OF_FILE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %73

16:                                               ; preds = %1
  %17 = load double, double* @MP_NOPTS_VALUE, align 8
  store double %17, double* %4, align 8
  %18 = load i32, i32* @MPSEEK_DEFAULT, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %20 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0
  %21 = call i64 @get_ab_loop_times(%struct.MPContext* %19, double* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %25 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds [2 x double], [2 x double]* %6, i64 0, i64 0
  %30 = load double, double* %29, align 16
  store double %30, double* %4, align 8
  %31 = load i32, i32* @MPSEEK_EXACT, align 4
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %23, %16
  %33 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %34 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %39 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %44 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %49 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %50 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call double @get_start_time(%struct.MPContext* %48, i32 %51)
  store double %52, double* %4, align 8
  br label %53

53:                                               ; preds = %47, %32
  br label %54

54:                                               ; preds = %53, %28
  %55 = load double, double* %4, align 8
  %56 = load double, double* @MP_NOPTS_VALUE, align 8
  %57 = fcmp une double %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i64, i64* @KEEP_PLAYING, align 8
  %60 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %61 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %63 = load i32, i32* @OSD_FFW, align 4
  %64 = call i32 @set_osd_function(%struct.MPContext* %62, i32 %63)
  %65 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %66 = call i32 @mark_seek(%struct.MPContext* %65)
  %67 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %68 = load i32, i32* @MPSEEK_ABSOLUTE, align 4
  %69 = load double, double* %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MPSEEK_FLAG_NOFLUSH, align 4
  %72 = call i32 @queue_seek(%struct.MPContext* %67, i32 %68, double %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %15, %58, %54
  ret void
}

declare dso_local i64 @get_ab_loop_times(%struct.MPContext*, double*) #1

declare dso_local double @get_start_time(%struct.MPContext*, i32) #1

declare dso_local i32 @set_osd_function(%struct.MPContext*, i32) #1

declare dso_local i32 @mark_seek(%struct.MPContext*) #1

declare dso_local i32 @queue_seek(%struct.MPContext*, i32, double, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

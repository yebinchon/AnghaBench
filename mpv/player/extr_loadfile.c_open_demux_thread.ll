; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_open_demux_thread.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_open_demux_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, i32, i64, %struct.demuxer*, i32, i32, i32, i32 }
%struct.demuxer = type { i32 }
%struct.demuxer_params = type { i32, i32, i64, i32, i32 }
%struct.sh_stream = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"opener\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Opening done: %s\0A\00", align 1
@MP_NOPTS_VALUE = common dso_local global i32 0, align 4
@wakeup_demux = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Opening failed or was aborted: %s\0A\00", align 1
@MPV_ERROR_UNKNOWN_FORMAT = common dso_local global i32 0, align 4
@MPV_ERROR_LOADING_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @open_demux_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @open_demux_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.demuxer_params, align 8
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sh_stream*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.MPContext*
  store %struct.MPContext* %10, %struct.MPContext** %3, align 8
  %11 = call i32 @mpthread_set_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %4, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %4, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %4, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %4, i32 0, i32 3
  %16 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %4, i32 0, i32 4
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 4
  %23 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %30 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.demuxer* @demux_open_url(i32 %25, %struct.demuxer_params* %4, i32 %28, i32 %31)
  store %struct.demuxer* %32, %struct.demuxer** %5, align 8
  %33 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %34 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %35 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %34, i32 0, i32 4
  store %struct.demuxer* %33, %struct.demuxer** %35, align 8
  %36 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %37 = icmp ne %struct.demuxer* %36, null
  br i1 %37, label %38, label %81

38:                                               ; preds = %1
  %39 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %40 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %41 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @MP_VERBOSE(%struct.MPContext* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %38
  %49 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %50 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %80, label %53

53:                                               ; preds = %48
  %54 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %55 = call i32 @demux_get_num_stream(%struct.demuxer* %54)
  store i32 %55, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %68, %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.sh_stream* @demux_get_stream(%struct.demuxer* %61, i32 %62)
  store %struct.sh_stream* %63, %struct.sh_stream** %8, align 8
  %64 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %65 = load %struct.sh_stream*, %struct.sh_stream** %8, align 8
  %66 = load i32, i32* @MP_NOPTS_VALUE, align 4
  %67 = call i32 @demuxer_select_track(%struct.demuxer* %64, %struct.sh_stream* %65, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %73 = load i32, i32* @wakeup_demux, align 4
  %74 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %75 = call i32 @demux_set_wakeup_cb(%struct.demuxer* %72, i32 %73, %struct.MPContext* %74)
  %76 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %77 = call i32 @demux_start_thread(%struct.demuxer* %76)
  %78 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %79 = call i32 @demux_start_prefetch(%struct.demuxer* %78)
  br label %80

80:                                               ; preds = %71, %48, %38
  br label %99

81:                                               ; preds = %1
  %82 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %83 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %84 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @MP_VERBOSE(%struct.MPContext* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %4, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load i32, i32* @MPV_ERROR_UNKNOWN_FORMAT, align 4
  %92 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %93 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %98

94:                                               ; preds = %81
  %95 = load i32, i32* @MPV_ERROR_LOADING_FAILED, align 4
  %96 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %97 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %80
  %100 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %101 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %100, i32 0, i32 0
  %102 = call i32 @atomic_store(i32* %101, i32 1)
  %103 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %104 = call i32 @mp_wakeup_core(%struct.MPContext* %103)
  ret i8* null
}

declare dso_local i32 @mpthread_set_name(i8*) #1

declare dso_local %struct.demuxer* @demux_open_url(i32, %struct.demuxer_params*, i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @demux_get_num_stream(%struct.demuxer*) #1

declare dso_local %struct.sh_stream* @demux_get_stream(%struct.demuxer*, i32) #1

declare dso_local i32 @demuxer_select_track(%struct.demuxer*, %struct.sh_stream*, i32, i32) #1

declare dso_local i32 @demux_set_wakeup_cb(%struct.demuxer*, i32, %struct.MPContext*) #1

declare dso_local i32 @demux_start_thread(%struct.demuxer*) #1

declare dso_local i32 @demux_start_prefetch(%struct.demuxer*) #1

declare dso_local i32 @atomic_store(i32*, i32) #1

declare dso_local i32 @mp_wakeup_core(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

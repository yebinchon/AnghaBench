; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_select_track.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demuxer_select_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.demux_internal* }
%struct.demux_internal = type { i32, i32, i32, i64, i32, i64, i32 }
%struct.sh_stream = type { i32, %struct.demux_stream* }
%struct.demux_stream = type { i32, double }

@.str = private unnamed_addr constant [19 x i8] c"%sselect track %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"de\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demuxer_select_track(%struct.demuxer* %0, %struct.sh_stream* %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.demuxer*, align 8
  %6 = alloca %struct.sh_stream*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.demux_internal*, align 8
  %10 = alloca %struct.demux_stream*, align 8
  store %struct.demuxer* %0, %struct.demuxer** %5, align 8
  store %struct.sh_stream* %1, %struct.sh_stream** %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.demuxer*, %struct.demuxer** %5, align 8
  %12 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %11, i32 0, i32 0
  %13 = load %struct.demux_internal*, %struct.demux_internal** %12, align 8
  store %struct.demux_internal* %13, %struct.demux_internal** %9, align 8
  %14 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %15 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %14, i32 0, i32 1
  %16 = load %struct.demux_stream*, %struct.demux_stream** %15, align 8
  store %struct.demux_stream* %16, %struct.demux_stream** %10, align 8
  %17 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %18 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %17, i32 0, i32 1
  %19 = call i32 @pthread_mutex_lock(i32* %18)
  %20 = load double, double* %7, align 8
  %21 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %22 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 0, %23
  %25 = call double @MP_ADD_PTS(double %20, i32 %24)
  store double %25, double* %7, align 8
  %26 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %27 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %4
  %32 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.sh_stream*, %struct.sh_stream** %6, align 8
  %38 = getelementptr inbounds %struct.sh_stream, %struct.sh_stream* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MP_VERBOSE(%struct.demux_internal* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39)
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %43 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %45 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %46 = call i32 @update_stream_selection_state(%struct.demux_internal* %44, %struct.demux_stream* %45)
  %47 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %48 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %50 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %31
  %54 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %55 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load double, double* %7, align 8
  %60 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %61 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %60, i32 0, i32 1
  store double %59, double* %61, align 8
  br label %62

62:                                               ; preds = %58, %53
  %63 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %64 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %69 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %70 = load double, double* %7, align 8
  %71 = call i32 @initiate_refresh_seek(%struct.demux_internal* %68, %struct.demux_stream* %69, double %70)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %31
  %74 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %75 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %80 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %79, i32 0, i32 2
  %81 = call i32 @pthread_cond_signal(i32* %80)
  br label %85

82:                                               ; preds = %73
  %83 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %84 = call i32 @execute_trackswitch(%struct.demux_internal* %83)
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %4
  %87 = load %struct.demux_internal*, %struct.demux_internal** %9, align 8
  %88 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %87, i32 0, i32 1
  %89 = call i32 @pthread_mutex_unlock(i32* %88)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @MP_ADD_PTS(double, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, i8*, i32) #1

declare dso_local i32 @update_stream_selection_state(%struct.demux_internal*, %struct.demux_stream*) #1

declare dso_local i32 @initiate_refresh_seek(%struct.demux_internal*, %struct.demux_stream*, double) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @execute_trackswitch(%struct.demux_internal*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

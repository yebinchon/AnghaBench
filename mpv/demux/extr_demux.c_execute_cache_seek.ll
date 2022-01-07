; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_execute_cache_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_execute_cache_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_internal = type { i32, i32, %struct.TYPE_2__**, i64, i32, %struct.demux_cached_range* }
%struct.TYPE_2__ = type { %struct.demux_stream* }
%struct.demux_stream = type { i32, i32, i32, i32, %struct.demux_packet*, i32 }
%struct.demux_packet = type { i32, i32 }
%struct.demux_cached_range = type { i64, %struct.demux_queue** }
%struct.demux_queue = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"seeking stream %d (%s) to \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"packet %f/%f\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"nothing\0A\00", align 1
@SEEK_HR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"resuming demuxer to end of cached range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_internal*, %struct.demux_cached_range*, double, i32)* @execute_cache_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_cache_seek(%struct.demux_internal* %0, %struct.demux_cached_range* %1, double %2, i32 %3) #0 {
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca %struct.demux_cached_range*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.demux_stream*, align 8
  %11 = alloca %struct.demux_queue*, align 8
  %12 = alloca %struct.demux_packet*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.demux_stream*, align 8
  store %struct.demux_internal* %0, %struct.demux_internal** %5, align 8
  store %struct.demux_cached_range* %1, %struct.demux_cached_range** %6, align 8
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %16 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %17 = call i32 @adjust_cache_seek_target(%struct.demux_internal* %15, %struct.demux_cached_range* %16, double* %7, i32* %8)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %95, %4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %21 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %18
  %25 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %26 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.demux_stream*, %struct.demux_stream** %32, align 8
  store %struct.demux_stream* %33, %struct.demux_stream** %10, align 8
  %34 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %35 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %34, i32 0, i32 1
  %36 = load %struct.demux_queue**, %struct.demux_queue*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.demux_queue*, %struct.demux_queue** %36, i64 %38
  %40 = load %struct.demux_queue*, %struct.demux_queue** %39, align 8
  store %struct.demux_queue* %40, %struct.demux_queue** %11, align 8
  %41 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  %42 = load double, double* %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.demux_packet* @find_seek_target(%struct.demux_queue* %41, double %42, i32 %43)
  store %struct.demux_packet* %44, %struct.demux_packet** %12, align 8
  %45 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %46 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %47 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %46, i32 0, i32 4
  store %struct.demux_packet* %45, %struct.demux_packet** %47, align 8
  %48 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %49 = icmp ne %struct.demux_packet* %48, null
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %53 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %55 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %54, i32 0, i32 4
  %56 = load %struct.demux_packet*, %struct.demux_packet** %55, align 8
  %57 = icmp ne %struct.demux_packet* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %24
  %59 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %60 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %59, i32 0, i32 4
  %61 = load %struct.demux_packet*, %struct.demux_packet** %60, align 8
  %62 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %65 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %64, i32 0, i32 4
  %66 = load %struct.demux_packet*, %struct.demux_packet** %65, align 8
  %67 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @MP_PTS_OR_DEF(i32 %63, i32 %68)
  %70 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %71 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %58, %24
  %73 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.demux_stream*, %struct.demux_stream** %10, align 8
  %76 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @stream_type_name(i32 %77)
  %79 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %78)
  %80 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %81 = icmp ne %struct.demux_packet* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %84 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %85 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.demux_packet*, %struct.demux_packet** %12, align 8
  %88 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %83, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  br label %94

91:                                               ; preds = %72
  %92 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %93 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %92, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %18

98:                                               ; preds = %18
  %99 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %100 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %99, i32 0, i32 5
  %101 = load %struct.demux_cached_range*, %struct.demux_cached_range** %100, align 8
  %102 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %103 = icmp ne %struct.demux_cached_range* %101, %102
  br i1 %103, label %104, label %148

104:                                              ; preds = %98
  %105 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %106 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %107 = call i32 @switch_current_range(%struct.demux_internal* %105, %struct.demux_cached_range* %106)
  %108 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %109 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* @SEEK_HR, align 4
  %111 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %112 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.demux_cached_range*, %struct.demux_cached_range** %6, align 8
  %114 = getelementptr inbounds %struct.demux_cached_range, %struct.demux_cached_range* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = sitofp i64 %115 to double
  %117 = fsub double %116, 1.000000e+00
  %118 = fptosi double %117 to i64
  %119 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %120 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %142, %104
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %124 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %145

127:                                              ; preds = %121
  %128 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %129 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %130, i64 %132
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load %struct.demux_stream*, %struct.demux_stream** %135, align 8
  store %struct.demux_stream* %136, %struct.demux_stream** %14, align 8
  %137 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %138 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.demux_stream*, %struct.demux_stream** %14, align 8
  %141 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %127
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %13, align 4
  br label %121

145:                                              ; preds = %121
  %146 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %147 = call i32 (%struct.demux_internal*, i8*, ...) @MP_VERBOSE(%struct.demux_internal* %146, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %98
  ret void
}

declare dso_local i32 @adjust_cache_seek_target(%struct.demux_internal*, %struct.demux_cached_range*, double*, i32*) #1

declare dso_local %struct.demux_packet* @find_seek_target(%struct.demux_queue*, double, i32) #1

declare dso_local i32 @MP_PTS_OR_DEF(i32, i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.demux_internal*, i8*, ...) #1

declare dso_local i32 @stream_type_name(i32) #1

declare dso_local i32 @switch_current_range(%struct.demux_internal*, %struct.demux_cached_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

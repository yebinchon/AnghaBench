; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_open_source.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux_edl.c_open_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demuxer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.timeline = type { i32, i32, i32, i32 }
%struct.timeline_par = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.demuxer* }
%struct.demuxer_params = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"EDL: Could not open source file '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demuxer* (%struct.timeline*, %struct.timeline_par*, i8*)* @open_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demuxer* @open_source(%struct.timeline* %0, %struct.timeline_par* %1, i8* %2) #0 {
  %4 = alloca %struct.demuxer*, align 8
  %5 = alloca %struct.timeline*, align 8
  %6 = alloca %struct.timeline_par*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.demuxer*, align 8
  %10 = alloca %struct.demuxer_params, align 4
  %11 = alloca %struct.demuxer*, align 8
  store %struct.timeline* %0, %struct.timeline** %5, align 8
  store %struct.timeline_par* %1, %struct.timeline_par** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %41, %3
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.timeline_par*, %struct.timeline_par** %6, align 8
  %15 = getelementptr inbounds %struct.timeline_par, %struct.timeline_par* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.timeline_par*, %struct.timeline_par** %6, align 8
  %20 = getelementptr inbounds %struct.timeline_par, %struct.timeline_par* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.demuxer*, %struct.demuxer** %25, align 8
  store %struct.demuxer* %26, %struct.demuxer** %9, align 8
  %27 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %28 = icmp ne %struct.demuxer* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %18
  %30 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  %31 = getelementptr inbounds %struct.demuxer, %struct.demuxer* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i32 %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load %struct.demuxer*, %struct.demuxer** %9, align 8
  store %struct.demuxer* %39, %struct.demuxer** %4, align 8
  br label %75

40:                                               ; preds = %29, %18
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %12

44:                                               ; preds = %12
  %45 = getelementptr inbounds %struct.demuxer_params, %struct.demuxer_params* %10, i32 0, i32 0
  %46 = load %struct.timeline_par*, %struct.timeline_par** %6, align 8
  %47 = getelementptr inbounds %struct.timeline_par, %struct.timeline_par* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %45, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.timeline*, %struct.timeline** %5, align 8
  %51 = getelementptr inbounds %struct.timeline, %struct.timeline* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.timeline*, %struct.timeline** %5, align 8
  %54 = getelementptr inbounds %struct.timeline, %struct.timeline* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.demuxer* @demux_open_url(i8* %49, %struct.demuxer_params* %10, i32 %52, i32 %55)
  store %struct.demuxer* %56, %struct.demuxer** %11, align 8
  %57 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %58 = icmp ne %struct.demuxer* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %44
  %60 = load %struct.timeline*, %struct.timeline** %5, align 8
  %61 = load %struct.timeline*, %struct.timeline** %5, align 8
  %62 = getelementptr inbounds %struct.timeline, %struct.timeline* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.timeline*, %struct.timeline** %5, align 8
  %65 = getelementptr inbounds %struct.timeline, %struct.timeline* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  %68 = call i32 @MP_TARRAY_APPEND(%struct.timeline* %60, i32 %63, i32 %66, %struct.demuxer* %67)
  br label %73

69:                                               ; preds = %44
  %70 = load %struct.timeline*, %struct.timeline** %5, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @MP_ERR(%struct.timeline* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %69, %59
  %74 = load %struct.demuxer*, %struct.demuxer** %11, align 8
  store %struct.demuxer* %74, %struct.demuxer** %4, align 8
  br label %75

75:                                               ; preds = %73, %38
  %76 = load %struct.demuxer*, %struct.demuxer** %4, align 8
  ret %struct.demuxer* %76
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.demuxer* @demux_open_url(i8*, %struct.demuxer_params*, i32, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.timeline*, i32, i32, %struct.demuxer*) #1

declare dso_local i32 @MP_ERR(%struct.timeline*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

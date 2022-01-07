; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_update.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_demux_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.demux_internal* }
%struct.demux_internal = type { double, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.timed_metadata = type { i32 }

@DEMUX_EVENT_METADATA = common dso_local global i32 0, align 4
@DEMUX_EVENT_STREAMS = common dso_local global i32 0, align 4
@DEMUX_EVENT_DURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demux_update(%struct.TYPE_5__* %0, double %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.demux_internal*, align 8
  %6 = alloca %struct.timed_metadata*, align 8
  %7 = alloca %struct.timed_metadata*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store double %1, double* %4, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load %struct.demux_internal*, %struct.demux_internal** %10, align 8
  %12 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %11, i32 0, i32 7
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp eq %struct.TYPE_5__* %8, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load %struct.demux_internal*, %struct.demux_internal** %18, align 8
  store %struct.demux_internal* %19, %struct.demux_internal** %5, align 8
  %20 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %21 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %26 = call i32 @update_cache(%struct.demux_internal* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %29 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %28, i32 0, i32 3
  %30 = call i32 @pthread_mutex_lock(i32* %29)
  %31 = load double, double* %4, align 8
  %32 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %33 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 0, %34
  %36 = call double @MP_ADD_PTS(double %31, i32 %35)
  store double %36, double* %4, align 8
  %37 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %38 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %39 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = call %struct.timed_metadata* @lookup_timed_metadata(%struct.demux_internal* %37, double %40)
  store %struct.timed_metadata* %41, %struct.timed_metadata** %6, align 8
  %42 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %43 = load double, double* %4, align 8
  %44 = call %struct.timed_metadata* @lookup_timed_metadata(%struct.demux_internal* %42, double %43)
  store %struct.timed_metadata* %44, %struct.timed_metadata** %7, align 8
  %45 = load %struct.timed_metadata*, %struct.timed_metadata** %6, align 8
  %46 = load %struct.timed_metadata*, %struct.timed_metadata** %7, align 8
  %47 = icmp ne %struct.timed_metadata* %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %27
  %49 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %50 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48, %27
  %54 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %55 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = load %struct.timed_metadata*, %struct.timed_metadata** %7, align 8
  %58 = call i32 @update_final_metadata(%struct.TYPE_5__* %56, %struct.timed_metadata* %57)
  %59 = load i32, i32* @DEMUX_EVENT_METADATA, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %53, %48
  %65 = load double, double* %4, align 8
  %66 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %67 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %66, i32 0, i32 0
  store double %65, double* %67, align 8
  %68 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %69 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %76 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DEMUX_EVENT_METADATA, align 4
  %81 = load i32, i32* @DEMUX_EVENT_STREAMS, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %64
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = call i32 @demux_update_replaygain(%struct.TYPE_5__* %86)
  br label %88

88:                                               ; preds = %85, %64
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @DEMUX_EVENT_DURATION, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %97 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %88
  %102 = load %struct.demux_internal*, %struct.demux_internal** %5, align 8
  %103 = getelementptr inbounds %struct.demux_internal, %struct.demux_internal* %102, i32 0, i32 3
  %104 = call i32 @pthread_mutex_unlock(i32* %103)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @update_cache(%struct.demux_internal*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local double @MP_ADD_PTS(double, i32) #1

declare dso_local %struct.timed_metadata* @lookup_timed_metadata(%struct.demux_internal*, double) #1

declare dso_local i32 @update_final_metadata(%struct.TYPE_5__*, %struct.timed_metadata*) #1

declare dso_local i32 @demux_update_replaygain(%struct.TYPE_5__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

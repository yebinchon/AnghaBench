; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_kill_demuxers_reentrant.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_kill_demuxers_reentrant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { double }
%struct.demuxer = type { i32 }
%struct.demux_free_async_state = type { i32 }

@wakeup_demux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Terminating demuxers...\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Forcefully terminating demuxers...\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Done terminating demuxers.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.demuxer**, i32)* @kill_demuxers_reentrant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_demuxers_reentrant(%struct.MPContext* %0, %struct.demuxer** %1, i32 %2) #0 {
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.demuxer**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demux_free_async_state**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.demuxer*, align 8
  %11 = alloca %struct.demux_free_async_state*, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.demux_free_async_state*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store %struct.demuxer** %1, %struct.demuxer*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.demux_free_async_state** null, %struct.demux_free_async_state*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %48, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.demuxer**, %struct.demuxer*** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.demuxer*, %struct.demuxer** %22, i64 %24
  %26 = load %struct.demuxer*, %struct.demuxer** %25, align 8
  store %struct.demuxer* %26, %struct.demuxer** %10, align 8
  %27 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %28 = call i32 @demux_cancel_test(%struct.demuxer* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %21
  %31 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %32 = load i32, i32* @wakeup_demux, align 4
  %33 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %34 = call i32 @demux_set_wakeup_cb(%struct.demuxer* %31, i32 %32, %struct.MPContext* %33)
  %35 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %36 = call %struct.demux_free_async_state* @demux_free_async(%struct.demuxer* %35)
  store %struct.demux_free_async_state* %36, %struct.demux_free_async_state** %11, align 8
  %37 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %11, align 8
  %38 = icmp ne %struct.demux_free_async_state* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.demux_free_async_state**, %struct.demux_free_async_state*** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %11, align 8
  %43 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.demux_free_async_state** %40, i32 %41, %struct.demux_free_async_state* %42)
  store %struct.demuxer* null, %struct.demuxer** %10, align 8
  br label %44

44:                                               ; preds = %39, %30
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.demuxer*, %struct.demuxer** %10, align 8
  %47 = call i32 @demux_cancel_and_free(%struct.demuxer* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %17

51:                                               ; preds = %17
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %133

55:                                               ; preds = %51
  %56 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %57 = call i32 @MP_DBG(%struct.MPContext* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %58 = call double (...) @mp_time_sec()
  %59 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %60 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = fadd double %58, %63
  store double %64, double* %12, align 8
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %127, %55
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %128

68:                                               ; preds = %65
  %69 = load double, double* %12, align 8
  %70 = call double (...) @mp_time_sec()
  %71 = fsub double %69, %70
  store double %71, double* %14, align 8
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %114, %68
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %117

76:                                               ; preds = %72
  %77 = load %struct.demux_free_async_state**, %struct.demux_free_async_state*** %7, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.demux_free_async_state*, %struct.demux_free_async_state** %77, i64 %79
  %81 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %80, align 8
  store %struct.demux_free_async_state* %81, %struct.demux_free_async_state** %16, align 8
  %82 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %16, align 8
  %83 = call i64 @demux_free_async_finish(%struct.demux_free_async_state* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %100

85:                                               ; preds = %76
  %86 = load %struct.demux_free_async_state**, %struct.demux_free_async_state*** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.demux_free_async_state*, %struct.demux_free_async_state** %86, i64 %89
  %91 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %90, align 8
  %92 = load %struct.demux_free_async_state**, %struct.demux_free_async_state*** %7, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.demux_free_async_state*, %struct.demux_free_async_state** %92, i64 %94
  store %struct.demux_free_async_state* %91, %struct.demux_free_async_state** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %15, align 4
  br label %127

100:                                              ; preds = %76
  %101 = load double, double* %14, align 8
  %102 = fcmp olt double %101, 0.000000e+00
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load %struct.demux_free_async_state*, %struct.demux_free_async_state** %16, align 8
  %105 = call i32 @demux_free_async_force(%struct.demux_free_async_state* %104)
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %110 = call i32 @MP_VERBOSE(%struct.MPContext* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %103
  store i32 1, i32* %13, align 4
  br label %112

112:                                              ; preds = %111, %100
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %72

117:                                              ; preds = %72
  %118 = load double, double* %14, align 8
  %119 = fcmp oge double %118, 0.000000e+00
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %122 = load double, double* %14, align 8
  %123 = call i32 @mp_set_timeout(%struct.MPContext* %121, double %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %126 = call i32 @mp_idle(%struct.MPContext* %125)
  br label %127

127:                                              ; preds = %124, %85
  br label %65

128:                                              ; preds = %65
  %129 = load %struct.demux_free_async_state**, %struct.demux_free_async_state*** %7, align 8
  %130 = call i32 @talloc_free(%struct.demux_free_async_state** %129)
  %131 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %132 = call i32 @MP_DBG(%struct.MPContext* %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %54
  ret void
}

declare dso_local i32 @demux_cancel_test(%struct.demuxer*) #1

declare dso_local i32 @demux_set_wakeup_cb(%struct.demuxer*, i32, %struct.MPContext*) #1

declare dso_local %struct.demux_free_async_state* @demux_free_async(%struct.demuxer*) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.demux_free_async_state**, i32, %struct.demux_free_async_state*) #1

declare dso_local i32 @demux_cancel_and_free(%struct.demuxer*) #1

declare dso_local i32 @MP_DBG(%struct.MPContext*, i8*) #1

declare dso_local double @mp_time_sec(...) #1

declare dso_local i64 @demux_free_async_finish(%struct.demux_free_async_state*) #1

declare dso_local i32 @demux_free_async_force(%struct.demux_free_async_state*) #1

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i32 @mp_idle(%struct.MPContext*) #1

declare dso_local i32 @talloc_free(%struct.demux_free_async_state**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

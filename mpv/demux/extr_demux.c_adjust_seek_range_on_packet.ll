; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_adjust_seek_range_on_packet.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_adjust_seek_range_on_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_stream = type { %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.demux_queue* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { double }
%struct.demux_queue = type { i32, double, double, %struct.TYPE_5__*, %struct.demux_packet* }
%struct.TYPE_5__ = type { double }
%struct.demux_packet = type { i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.demux_stream*, %struct.demux_packet*)* @adjust_seek_range_on_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_seek_range_on_packet(%struct.demux_stream* %0, %struct.demux_packet* %1) #0 {
  %3 = alloca %struct.demux_stream*, align 8
  %4 = alloca %struct.demux_packet*, align 8
  %5 = alloca %struct.demux_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store %struct.demux_stream* %0, %struct.demux_stream** %3, align 8
  store %struct.demux_packet* %1, %struct.demux_packet** %4, align 8
  %10 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %11 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %10, i32 0, i32 2
  %12 = load %struct.demux_queue*, %struct.demux_queue** %11, align 8
  store %struct.demux_queue* %12, %struct.demux_queue** %5, align 8
  %13 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %14 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %133

20:                                               ; preds = %2
  %21 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %22 = icmp ne %struct.demux_packet* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %26 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %33 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %35 = icmp ne %struct.demux_packet* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %38 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %121

41:                                               ; preds = %36, %20
  %42 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %43 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %42, i32 0, i32 4
  %44 = load %struct.demux_packet*, %struct.demux_packet** %43, align 8
  %45 = icmp ne %struct.demux_packet* %44, null
  br i1 %45, label %46, label %117

46:                                               ; preds = %41
  %47 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %48 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %47, i32 0, i32 4
  %49 = load %struct.demux_packet*, %struct.demux_packet** %48, align 8
  %50 = call i32 @compute_keyframe_times(%struct.demux_packet* %49, double* %8, double* %9)
  %51 = load double, double* %8, align 8
  %52 = load double, double* @MP_NOPTS_VALUE, align 8
  %53 = fcmp une double %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %46
  %55 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %56 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %57 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %56, i32 0, i32 4
  %58 = load %struct.demux_packet*, %struct.demux_packet** %57, align 8
  %59 = load double, double* %8, align 8
  %60 = call i32 @add_index_entry(%struct.demux_queue* %55, %struct.demux_packet* %58, double %59)
  %61 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %62 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %61, i32 0, i32 1
  %63 = load double, double* %62, align 8
  %64 = load double, double* @MP_NOPTS_VALUE, align 8
  %65 = fcmp oeq double %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  %67 = load double, double* %8, align 8
  %68 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %69 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = fadd double %67, %72
  %74 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %75 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %74, i32 0, i32 1
  store double %73, double* %75, align 8
  br label %76

76:                                               ; preds = %66, %54
  br label %77

77:                                               ; preds = %76, %46
  %78 = load double, double* %9, align 8
  %79 = load double, double* @MP_NOPTS_VALUE, align 8
  %80 = fcmp une double %78, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %83 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %82, i32 0, i32 2
  %84 = load double, double* %83, align 8
  %85 = load double, double* @MP_NOPTS_VALUE, align 8
  %86 = fcmp oeq double %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load double, double* %9, align 8
  %89 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %90 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %89, i32 0, i32 2
  %91 = load double, double* %90, align 8
  %92 = fcmp ogt double %88, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %87, %81
  %94 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %95 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %94, i32 0, i32 3
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load double, double* @MP_NOPTS_VALUE, align 8
  %100 = fcmp oeq double %98, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %93
  %102 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %103 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %102, i32 0, i32 2
  %104 = load double, double* %103, align 8
  %105 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %106 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %105, i32 0, i32 3
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load double, double* %108, align 8
  %110 = fcmp ole double %104, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101, %93
  store i32 1, i32* %7, align 4
  br label %112

112:                                              ; preds = %111, %101
  %113 = load double, double* %9, align 8
  %114 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %115 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %114, i32 0, i32 2
  store double %113, double* %115, align 8
  br label %116

116:                                              ; preds = %112, %87, %77
  br label %117

117:                                              ; preds = %116, %41
  %118 = load %struct.demux_packet*, %struct.demux_packet** %4, align 8
  %119 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %120 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %119, i32 0, i32 4
  store %struct.demux_packet* %118, %struct.demux_packet** %120, align 8
  br label %121

121:                                              ; preds = %117, %36
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.demux_queue*, %struct.demux_queue** %5, align 8
  %126 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = call i32 @update_seek_ranges(%struct.TYPE_5__* %127)
  %129 = load %struct.demux_stream*, %struct.demux_stream** %3, align 8
  %130 = getelementptr inbounds %struct.demux_stream, %struct.demux_stream* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = call i32 @attempt_range_joining(%struct.TYPE_6__* %131)
  br label %133

133:                                              ; preds = %19, %124, %121
  ret void
}

declare dso_local i32 @compute_keyframe_times(%struct.demux_packet*, double*, double*) #1

declare dso_local i32 @add_index_entry(%struct.demux_queue*, %struct.demux_packet*, double) #1

declare dso_local i32 @update_seek_ranges(%struct.TYPE_5__*) #1

declare dso_local i32 @attempt_range_joining(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

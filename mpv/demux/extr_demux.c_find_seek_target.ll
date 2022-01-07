; ModuleID = '/home/carl/AnghaBench/mpv/demux/extr_demux.c_find_seek_target.c'
source_filename = "/home/carl/AnghaBench/mpv/demux/extr_demux.c_find_seek_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demux_packet = type { i32, %struct.demux_packet* }
%struct.demux_queue = type { %struct.demux_packet*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@MP_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@SEEK_FORWARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demux_packet* (%struct.demux_queue*, double, i32)* @find_seek_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demux_packet* @find_seek_target(%struct.demux_queue* %0, double %1, i32 %2) #0 {
  %4 = alloca %struct.demux_queue*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demux_packet*, align 8
  %8 = alloca %struct.demux_packet*, align 8
  %9 = alloca %struct.demux_packet*, align 8
  %10 = alloca %struct.demux_packet*, align 8
  %11 = alloca double, align 8
  store %struct.demux_queue* %0, %struct.demux_queue** %4, align 8
  store double %1, double* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.demux_queue*, %struct.demux_queue** %4, align 8
  %13 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = load double, double* %5, align 8
  %21 = fsub double %20, %19
  store double %21, double* %5, align 8
  %22 = load %struct.demux_queue*, %struct.demux_queue** %4, align 8
  %23 = load double, double* %5, align 8
  %24 = call %struct.demux_packet* @search_index(%struct.demux_queue* %22, double %23)
  store %struct.demux_packet* %24, %struct.demux_packet** %7, align 8
  %25 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  %26 = icmp ne %struct.demux_packet* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load %struct.demux_queue*, %struct.demux_queue** %4, align 8
  %29 = getelementptr inbounds %struct.demux_queue, %struct.demux_queue* %28, i32 0, i32 0
  %30 = load %struct.demux_packet*, %struct.demux_packet** %29, align 8
  store %struct.demux_packet* %30, %struct.demux_packet** %7, align 8
  br label %31

31:                                               ; preds = %27, %3
  store %struct.demux_packet* null, %struct.demux_packet** %8, align 8
  store %struct.demux_packet* null, %struct.demux_packet** %9, align 8
  %32 = load %struct.demux_packet*, %struct.demux_packet** %7, align 8
  store %struct.demux_packet* %32, %struct.demux_packet** %10, align 8
  br label %33

33:                                               ; preds = %78, %31
  %34 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %35 = icmp ne %struct.demux_packet* %34, null
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %38 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %37, i32 0, i32 1
  %39 = load %struct.demux_packet*, %struct.demux_packet** %38, align 8
  store %struct.demux_packet* %39, %struct.demux_packet** %9, align 8
  %40 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %41 = getelementptr inbounds %struct.demux_packet, %struct.demux_packet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %78

45:                                               ; preds = %36
  %46 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  %47 = call %struct.demux_packet* @compute_keyframe_times(%struct.demux_packet* %46, double* %11, i32* null)
  store %struct.demux_packet* %47, %struct.demux_packet** %9, align 8
  %48 = load double, double* %11, align 8
  %49 = load double, double* @MP_NOPTS_VALUE, align 8
  %50 = fcmp oeq double %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %78

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @SEEK_FORWARD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  %59 = icmp ne %struct.demux_packet* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %80

61:                                               ; preds = %57
  %62 = load double, double* %11, align 8
  %63 = load double, double* %5, align 8
  %64 = fcmp olt double %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %78

66:                                               ; preds = %61
  br label %76

67:                                               ; preds = %52
  %68 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  %69 = icmp ne %struct.demux_packet* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load double, double* %11, align 8
  %72 = load double, double* %5, align 8
  %73 = fcmp ogt double %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %80

75:                                               ; preds = %70, %67
  br label %76

76:                                               ; preds = %75, %66
  %77 = load %struct.demux_packet*, %struct.demux_packet** %10, align 8
  store %struct.demux_packet* %77, %struct.demux_packet** %8, align 8
  br label %78

78:                                               ; preds = %76, %65, %51, %44
  %79 = load %struct.demux_packet*, %struct.demux_packet** %9, align 8
  store %struct.demux_packet* %79, %struct.demux_packet** %10, align 8
  br label %33

80:                                               ; preds = %74, %60, %33
  %81 = load %struct.demux_packet*, %struct.demux_packet** %8, align 8
  ret %struct.demux_packet* %81
}

declare dso_local %struct.demux_packet* @search_index(%struct.demux_queue*, double) #1

declare dso_local %struct.demux_packet* @compute_keyframe_times(%struct.demux_packet*, double*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_set_audio_pts.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_encode_lavc.c_encode_lavc_set_audio_pts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_lavc_context = type { double, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @encode_lavc_set_audio_pts(%struct.encode_lavc_context* %0, double %1) #0 {
  %3 = alloca %struct.encode_lavc_context*, align 8
  %4 = alloca double, align 8
  store %struct.encode_lavc_context* %0, %struct.encode_lavc_context** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %6 = icmp ne %struct.encode_lavc_context* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %9 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %8, i32 0, i32 1
  %10 = call i32 @pthread_mutex_lock(i32* %9)
  %11 = load double, double* %4, align 8
  %12 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %13 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %12, i32 0, i32 0
  store double %11, double* %13, align 8
  %14 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %15 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.encode_lavc_context*, %struct.encode_lavc_context** %3, align 8
  %17 = getelementptr inbounds %struct.encode_lavc_context, %struct.encode_lavc_context* %16, i32 0, i32 1
  %18 = call i32 @pthread_mutex_unlock(i32* %17)
  br label %19

19:                                               ; preds = %7, %2
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

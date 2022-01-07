; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_client.c_mp_shutdown_clients.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_client.c_mp_shutdown_clients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i64, i64, %struct.mp_client_api* }
%struct.mp_client_api = type { i32, i32, i64, i64 }

@MPV_EVENT_SHUTDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_shutdown_clients(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.mp_client_api*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 2
  %8 = load %struct.mp_client_api*, %struct.mp_client_api** %7, align 8
  store %struct.mp_client_api* %8, %struct.mp_client_api** %3, align 8
  %9 = call double (...) @mp_time_sec()
  %10 = fadd double %9, 2.000000e+00
  store double %10, double* %4, align 8
  %11 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %12 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %11, i32 0, i32 1
  %13 = call i32 @pthread_mutex_lock(i32* %12)
  %14 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %15 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %57, %1
  %17 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %18 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %28 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %33 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ true, %26 ], [ %35, %31 ]
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %36, %21, %16
  %40 = phi i1 [ true, %21 ], [ true, %16 ], [ %38, %36 ]
  br i1 %40, label %41, label %66

41:                                               ; preds = %39
  %42 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %43 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %42, i32 0, i32 1
  %44 = call i32 @pthread_mutex_unlock(i32* %43)
  %45 = load double, double* %4, align 8
  %46 = call double (...) @mp_time_sec()
  %47 = fsub double %45, %46
  store double %47, double* %5, align 8
  %48 = load double, double* %5, align 8
  %49 = fcmp oge double %48, 0.000000e+00
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %52 = load double, double* %5, align 8
  %53 = call i32 @mp_set_timeout(%struct.MPContext* %51, double %52)
  br label %57

54:                                               ; preds = %41
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = call i32 @abort_async(%struct.MPContext* %55, i32* null, i32 0, i32 0)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %59 = load i32, i32* @MPV_EVENT_SHUTDOWN, align 4
  %60 = call i32 @mp_client_broadcast_event(%struct.MPContext* %58, i32 %59, i32* null)
  %61 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %62 = call i32 @mp_wait_events(%struct.MPContext* %61)
  %63 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %64 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %63, i32 0, i32 1
  %65 = call i32 @pthread_mutex_lock(i32* %64)
  br label %16

66:                                               ; preds = %39
  %67 = load %struct.mp_client_api*, %struct.mp_client_api** %3, align 8
  %68 = getelementptr inbounds %struct.mp_client_api, %struct.mp_client_api* %67, i32 0, i32 1
  %69 = call i32 @pthread_mutex_unlock(i32* %68)
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i32 @abort_async(%struct.MPContext*, i32*, i32, i32) #1

declare dso_local i32 @mp_client_broadcast_event(%struct.MPContext*, i32, i32*) #1

declare dso_local i32 @mp_wait_events(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

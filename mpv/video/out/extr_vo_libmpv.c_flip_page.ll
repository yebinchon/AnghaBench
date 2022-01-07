; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_flip_page.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_libmpv.c_flip_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vo_priv* }
%struct.vo_priv = type { %struct.mpv_render_context* }
%struct.mpv_render_context = type { i32, i64, i64, i32, i32, i32*, i32*, i64 }
%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"mpv_render_context_render() not being called or stuck.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"mpv_render_report_swap() not being called.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @flip_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flip_page(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_priv*, align 8
  %4 = alloca %struct.mpv_render_context*, align 8
  %5 = alloca %struct.timespec, align 4
  store %struct.vo* %0, %struct.vo** %2, align 8
  %6 = load %struct.vo*, %struct.vo** %2, align 8
  %7 = getelementptr inbounds %struct.vo, %struct.vo* %6, i32 0, i32 0
  %8 = load %struct.vo_priv*, %struct.vo_priv** %7, align 8
  store %struct.vo_priv* %8, %struct.vo_priv** %3, align 8
  %9 = load %struct.vo_priv*, %struct.vo_priv** %3, align 8
  %10 = getelementptr inbounds %struct.vo_priv, %struct.vo_priv* %9, i32 0, i32 0
  %11 = load %struct.mpv_render_context*, %struct.mpv_render_context** %10, align 8
  store %struct.mpv_render_context* %11, %struct.mpv_render_context** %4, align 8
  %12 = call i32 @mp_rel_time_to_timespec(double 2.000000e-01)
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %15 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %14, i32 0, i32 3
  %16 = call i32 @pthread_mutex_lock(i32* %15)
  br label %17

17:                                               ; preds = %38, %1
  %18 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %19 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %24 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %23, i32 0, i32 4
  %25 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %26 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %25, i32 0, i32 3
  %27 = call i64 @pthread_cond_timedwait(i32* %24, i32* %26, %struct.timespec* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %31 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.vo*, %struct.vo** %2, align 8
  %36 = call i32 @MP_VERBOSE(%struct.vo* %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %79

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %22
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %41 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %45 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %44, i32 0, i32 4
  %46 = call i32 @pthread_cond_broadcast(i32* %45)
  %47 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %48 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %79

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %77, %52
  %54 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %55 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %58 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %53
  %62 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %63 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %78

67:                                               ; preds = %61
  %68 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %69 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %68, i32 0, i32 4
  %70 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %71 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %70, i32 0, i32 3
  %72 = call i64 @pthread_cond_timedwait(i32* %69, i32* %71, %struct.timespec* %5)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.vo*, %struct.vo** %2, align 8
  %76 = call i32 @MP_VERBOSE(%struct.vo* %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %79

77:                                               ; preds = %67
  br label %53

78:                                               ; preds = %66, %53
  br label %79

79:                                               ; preds = %78, %74, %51, %34
  %80 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %81 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %79
  %85 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %86 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @talloc_free(i32* %87)
  %89 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %90 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %93 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %92, i32 0, i32 6
  store i32* %91, i32** %93, align 8
  %94 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %95 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %94, i32 0, i32 5
  store i32* null, i32** %95, align 8
  %96 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %97 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 2
  store i32 %99, i32* %97, align 8
  %100 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %101 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %100, i32 0, i32 4
  %102 = call i32 @pthread_cond_signal(i32* %101)
  %103 = load %struct.vo*, %struct.vo** %2, align 8
  %104 = call i32 @vo_increment_drop_count(%struct.vo* %103, i32 1)
  br label %105

105:                                              ; preds = %84, %79
  %106 = load %struct.mpv_render_context*, %struct.mpv_render_context** %4, align 8
  %107 = getelementptr inbounds %struct.mpv_render_context, %struct.mpv_render_context* %106, i32 0, i32 3
  %108 = call i32 @pthread_mutex_unlock(i32* %107)
  ret void
}

declare dso_local i32 @mp_rel_time_to_timespec(double) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @MP_VERBOSE(%struct.vo*, i8*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @talloc_free(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @vo_increment_drop_count(%struct.vo*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

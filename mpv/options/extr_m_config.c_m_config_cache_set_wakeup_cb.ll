; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_cache_set_wakeup_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_config.c_m_config_cache_set_wakeup_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_config_cache = type { i32, void (i8*)*, i8*, %struct.m_config_shadow* }
%struct.m_config_shadow = type { i32, i32, %struct.m_config_cache** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_config_cache_set_wakeup_cb(%struct.m_config_cache* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.m_config_cache*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_config_shadow*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.m_config_cache* %0, %struct.m_config_cache** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %11 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %10, i32 0, i32 3
  %12 = load %struct.m_config_shadow*, %struct.m_config_shadow** %11, align 8
  store %struct.m_config_shadow* %12, %struct.m_config_shadow** %7, align 8
  %13 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %14 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %13, i32 0, i32 1
  %15 = call i32 @pthread_mutex_lock(i32* %14)
  %16 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %17 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %85

20:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %24 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %29 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %28, i32 0, i32 2
  %30 = load %struct.m_config_cache**, %struct.m_config_cache*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.m_config_cache*, %struct.m_config_cache** %30, i64 %32
  %34 = load %struct.m_config_cache*, %struct.m_config_cache** %33, align 8
  %35 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %36 = icmp eq %struct.m_config_cache* %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %39 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %38, i32 0, i32 2
  %40 = load %struct.m_config_cache**, %struct.m_config_cache*** %39, align 8
  %41 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %42 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @MP_TARRAY_REMOVE_AT(%struct.m_config_cache** %40, i32 %43, i32 %44)
  br label %50

46:                                               ; preds = %27
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %21

50:                                               ; preds = %37, %21
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %54 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %59 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %58, i32 0, i32 2
  %60 = load %struct.m_config_cache**, %struct.m_config_cache*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.m_config_cache*, %struct.m_config_cache** %60, i64 %62
  %64 = load %struct.m_config_cache*, %struct.m_config_cache** %63, align 8
  %65 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %66 = icmp ne %struct.m_config_cache* %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %74 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %72
  %78 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %79 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %78, i32 0, i32 2
  %80 = load %struct.m_config_cache**, %struct.m_config_cache*** %79, align 8
  %81 = call i32 @talloc_free(%struct.m_config_cache** %80)
  %82 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %83 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %82, i32 0, i32 2
  store %struct.m_config_cache** null, %struct.m_config_cache*** %83, align 8
  br label %84

84:                                               ; preds = %77, %72
  br label %85

85:                                               ; preds = %84, %3
  %86 = load void (i8*)*, void (i8*)** %5, align 8
  %87 = icmp ne void (i8*)* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %90 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %89, i32 0, i32 2
  %91 = load %struct.m_config_cache**, %struct.m_config_cache*** %90, align 8
  %92 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %93 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %96 = call i32 @MP_TARRAY_APPEND(i32* null, %struct.m_config_cache** %91, i32 %94, %struct.m_config_cache* %95)
  %97 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %98 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  %99 = load void (i8*)*, void (i8*)** %5, align 8
  %100 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %101 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %100, i32 0, i32 1
  store void (i8*)* %99, void (i8*)** %101, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = load %struct.m_config_cache*, %struct.m_config_cache** %4, align 8
  %104 = getelementptr inbounds %struct.m_config_cache, %struct.m_config_cache* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %88, %85
  %106 = load %struct.m_config_shadow*, %struct.m_config_shadow** %7, align 8
  %107 = getelementptr inbounds %struct.m_config_shadow, %struct.m_config_shadow* %106, i32 0, i32 1
  %108 = call i32 @pthread_mutex_unlock(i32* %107)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(%struct.m_config_cache**, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @talloc_free(%struct.m_config_cache**) #1

declare dso_local i32 @MP_TARRAY_APPEND(i32*, %struct.m_config_cache**, i32, %struct.m_config_cache*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

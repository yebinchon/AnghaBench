; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_flush.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__*, %struct.TYPE_17__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@settings = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@PROTOCOL_BINARY_RESPONSE_AUTH_ERROR = common dso_local global i32 0, align 4
@current_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*)* @process_bin_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bin_flush(%struct.TYPE_23__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %2, align 8
  store i64 0, i64* %3, align 8
  %6 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %7 = call %struct.TYPE_22__* @binary_get_request(%struct.TYPE_23__* %6)
  store %struct.TYPE_22__* %7, %struct.TYPE_22__** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 3), align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %12 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_AUTH_ERROR, align 4
  %13 = call i32 @write_bin_error(%struct.TYPE_23__* %11, i32 %12, i32* null, i32 0)
  br label %76

14:                                               ; preds = %1
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntohl(i32 %27)
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %22, %14
  %30 = load i64, i64* %3, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %3, align 8
  %34 = call i8* @realtime(i64 %33)
  store i8* %34, i8** %5, align 8
  br label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @current_time, align 8
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %5, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 2), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr i8, i8* %42, i64 -1
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 0), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 0), align 8
  %46 = load i64, i64* @current_time, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 (...) @get_cas_id()
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 1), align 8
  br label %50

50:                                               ; preds = %48, %41
  br label %54

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @settings, i32 0, i32 0), align 8
  br label %54

54:                                               ; preds = %51, %50
  %55 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = call i32 @pthread_mutex_lock(i32* %59)
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = call i32 @pthread_mutex_unlock(i32* %72)
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  %75 = call i32 @write_bin_response(%struct.TYPE_23__* %74, i32* null, i32 0, i32 0, i32 0)
  br label %76

76:                                               ; preds = %54, %10
  ret void
}

declare dso_local %struct.TYPE_22__* @binary_get_request(%struct.TYPE_23__*) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_23__*, i32, i32*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i8* @realtime(i64) #1

declare dso_local i32 @get_cas_id(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @write_bin_response(%struct.TYPE_23__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

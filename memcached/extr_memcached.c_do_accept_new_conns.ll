; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_do_accept_new_conns.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_do_accept_new_conns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.timeval, i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@listen_conn = common dso_local global %struct.TYPE_7__* null, align 8
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@stats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@stats_state = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@allow_new_conns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_accept_new_conns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @listen_conn, align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %3, align 8
  br label %7

7:                                                ; preds = %40, %1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %10, label %44

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = load i32, i32* @EV_READ, align 4
  %16 = load i32, i32* @EV_PERSIST, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @update_event(%struct.TYPE_7__* %14, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @settings, i32 0, i32 0), align 4
  %23 = call i64 @listen(i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %13
  br label %39

28:                                               ; preds = %10
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = call i32 @update_event(%struct.TYPE_7__* %29, i32 0)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @listen(i32 %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28
  br label %39

39:                                               ; preds = %38, %27
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %3, align 8
  br label %7

44:                                               ; preds = %7
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %49 = call i32 (...) @STATS_LOCK()
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1, i32 0), align 8
  %53 = sub nsw i32 %51, %52
  %54 = mul nsw i32 %53, 1000000
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1, i32 1), align 8
  %59 = sub nsw i64 %57, %58
  %60 = add nsw i64 %55, %59
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats_state, i32 0, i32 0), align 4
  %66 = call i32 (...) @STATS_UNLOCK()
  br label %74

67:                                               ; preds = %44
  %68 = call i32 (...) @STATS_LOCK()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @stats_state, i32 0, i32 0), align 4
  %69 = call i32 @gettimeofday(%struct.timeval* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 1), i32* null)
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @stats, i32 0, i32 0), align 8
  %72 = call i32 (...) @STATS_UNLOCK()
  store i32 0, i32* @allow_new_conns, align 4
  %73 = call i32 @maxconns_handler(i32 -42, i32 0, i32 0)
  br label %74

74:                                               ; preds = %67, %47
  ret void
}

declare dso_local i32 @update_event(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @STATS_LOCK(...) #1

declare dso_local i32 @STATS_UNLOCK(...) #1

declare dso_local i32 @maxconns_handler(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_setup_thread.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_setup_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i8*, i32*, i32*, %struct.TYPE_6__, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Can't allocate event base\0A\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@thread_libevent_process = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't monitor libevent notify pipe\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to allocate memory for connection queue\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to initialize mutex\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@SUFFIX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to create suffix cache\0A\00", align 1
@EVENT_BASE_FLAG_NOLOCK = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @setup_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_thread(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = call i32 (...) @event_init()
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 6
  store i32 %3, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EV_READ, align 4
  %21 = load i32, i32* @EV_PERSIST, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @thread_libevent_process, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = call i32 @event_set(i32* %16, i32 %19, i32 %22, i32 %23, %struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 5
  %31 = call i32 @event_base_set(i32 %28, i32* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = call i32 @event_add(i32* %33, i32 0)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %14
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %14
  %41 = call i32* @malloc(i64 4)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = call i32 @perror(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @exit(i32 %50) #3
  unreachable

52:                                               ; preds = %40
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @cq_init(i32* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i64 @pthread_mutex_init(i32* %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @exit(i32 %64) #3
  unreachable

66:                                               ; preds = %52
  %67 = load i32, i32* @SUFFIX_SIZE, align 4
  %68 = call i8* @cache_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 8, i32* null, i32* null)
  %69 = bitcast i8* %68 to i32*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %66
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i32, i32* @EXIT_FAILURE, align 4
  %80 = call i32 @exit(i32 %79) #3
  unreachable

81:                                               ; preds = %66
  ret void
}

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_set(i32*, i32, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @event_base_set(i32, i32*) #1

declare dso_local i32 @event_add(i32*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @cq_init(i32*) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i8* @cache_create(i8*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

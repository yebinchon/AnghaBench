; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_dispatch_conn_new.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_dispatch_conn_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i8*, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate memory for connection object\0A\00", align 1
@last_thread = common dso_local global i32 0, align 4
@settings = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@threads = common dso_local global %struct.TYPE_7__* null, align 8
@queue_new_conn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Writing to thread notify pipe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dispatch_conn_new(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca [1 x i8], align 1
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = call %struct.TYPE_8__* (...) @cqi_new()
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %13, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %19 = icmp eq %struct.TYPE_8__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %6
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @close(i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %76

25:                                               ; preds = %6
  %26 = load i32, i32* @last_thread, align 4
  %27 = add nsw i32 %26, 1
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @settings, i32 0, i32 0), align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @threads, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %16, align 8
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* @last_thread, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @queue_new_conn, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %60 = call i32 @cq_push(i32 %58, %struct.TYPE_8__* %59)
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 @MEMCACHED_CONN_DISPATCH(i32 %61, i32 %65)
  %67 = getelementptr inbounds [1 x i8], [1 x i8]* %14, i64 0, i64 0
  store i8 99, i8* %67, align 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds [1 x i8], [1 x i8]* %14, i64 0, i64 0
  %72 = call i32 @write(i32 %70, i8* %71, i32 1)
  %73 = icmp ne i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %25
  %75 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %20, %74, %25
  ret void
}

declare dso_local %struct.TYPE_8__* @cqi_new(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @cq_push(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @MEMCACHED_CONN_DISPATCH(i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

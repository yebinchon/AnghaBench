; ModuleID = '/home/carl/AnghaBench/memcached/extr_thread.c_thread_libevent_process.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_thread.c_thread_libevent_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, i32* }

@settings = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't read from libevent pipe\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't listen for events on UDP socket\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't listen for events on fd %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Can't read timeout fd from libevent pipe\0A\00", align 1
@conns = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @thread_libevent_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_libevent_process(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %16 = call i32 (i32, ...) @read(i32 %14, i8* %15, i32 1)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @settings, i32 0, i32 0), align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18
  br label %130

25:                                               ; preds = %3
  %26 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  switch i32 %28, label %130 [
    i32 99, label %29
    i32 112, label %104
    i32 116, label %106
    i32 115, label %125
  ]

29:                                               ; preds = %25
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_10__* @cq_pop(i32 %32)
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %8, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = icmp eq %struct.TYPE_10__* null, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %130

37:                                               ; preds = %29
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %101 [
    i32 129, label %41
    i32 128, label %96
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.TYPE_8__* @conn_new(i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62)
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %10, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = icmp eq %struct.TYPE_8__* %64, null
  br i1 %65, label %66, label %91

66:                                               ; preds = %41
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IS_UDP(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %66
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @settings, i32 0, i32 0), align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* @stderr, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @close(i32 %88)
  br label %90

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %41
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %94, align 8
  br label %95

95:                                               ; preds = %91, %90
  br label %101

96:                                               ; preds = %37
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @conn_worker_readd(i32 %99)
  br label %101

101:                                              ; preds = %37, %96, %95
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = call i32 @cqi_free(%struct.TYPE_10__* %102)
  br label %130

104:                                              ; preds = %25
  %105 = call i32 (...) @register_thread_initialized()
  br label %130

106:                                              ; preds = %25
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, ...) @read(i32 %107, i32* %11, i64 4)
  %109 = sext i32 %108 to i64
  %110 = icmp ne i64 %109, 4
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @settings, i32 0, i32 0), align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* @stderr, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %111
  br label %130

118:                                              ; preds = %106
  %119 = load i32*, i32** @conns, align 8
  %120 = load i32, i32* %11, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @conn_close_idle(i32 %123)
  br label %130

125:                                              ; preds = %25
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @event_base_loopexit(i32 %128, i32* null)
  br label %130

130:                                              ; preds = %24, %117, %25, %125, %118, %104, %101, %36
  ret void
}

declare dso_local i32 @read(i32, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @cq_pop(i32) #1

declare dso_local %struct.TYPE_8__* @conn_new(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @IS_UDP(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @conn_worker_readd(i32) #1

declare dso_local i32 @cqi_free(%struct.TYPE_10__*) #1

declare dso_local i32 @register_thread_initialized(...) #1

declare dso_local i32 @conn_close_idle(i32) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

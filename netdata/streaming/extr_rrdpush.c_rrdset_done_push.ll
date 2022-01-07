; ModuleID = '/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdset_done_push.c'
source_filename = "/home/carl/AnghaBench/netdata/streaming/extr_rrdpush.c_rrdset_done_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32*, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [60 x i8] c"STREAM %s [send]: not ready - discarding collected metrics.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"STREAM %s [send]: sending metrics...\00", align 1
@PIPE_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"STREAM %s [send]: cannot write to internal pipe\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrdset_done_push(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @should_send_chart_matching(%struct.TYPE_11__* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %119

12:                                               ; preds = %1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %3, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i32 @rrdpush_buffer_lock(%struct.TYPE_12__* %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %12
  %29 = phi i1 [ false, %12 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = call i32 @rrdpush_sender_thread_spawn(%struct.TYPE_12__* %34)
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %36
  %48 = phi i1 [ true, %36 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %52
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = call i32 @rrdpush_buffer_unlock(%struct.TYPE_12__* %69)
  br label %119

71:                                               ; preds = %47
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %71
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %87 = call i64 @need_to_send_chart_definition(%struct.TYPE_11__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %91 = call i32 @rrdpush_send_chart_definition_nolock(%struct.TYPE_11__* %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = call i32 @rrdpush_send_chart_metrics_nolock(%struct.TYPE_11__* %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @PIPE_WRITE, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %116

102:                                              ; preds = %92
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @PIPE_WRITE, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @write(i32 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %111, %102, %92
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = call i32 @rrdpush_buffer_unlock(%struct.TYPE_12__* %117)
  br label %119

119:                                              ; preds = %116, %66, %11
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @should_send_chart_matching(%struct.TYPE_11__*) #1

declare dso_local i32 @rrdpush_buffer_lock(%struct.TYPE_12__*) #1

declare dso_local i32 @rrdpush_sender_thread_spawn(%struct.TYPE_12__*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @rrdpush_buffer_unlock(%struct.TYPE_12__*) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i64 @need_to_send_chart_definition(%struct.TYPE_11__*) #1

declare dso_local i32 @rrdpush_send_chart_definition_nolock(%struct.TYPE_11__*) #1

declare dso_local i32 @rrdpush_send_chart_metrics_nolock(%struct.TYPE_11__*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_parallel.c_HandleParallelMessage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_parallel.c_HandleParallelMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_15__*, i32*, i32 }
%struct.TYPE_15__ = type { i32*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@force_parallel_mode = common dso_local global i32 0, align 4
@FORCE_PARALLEL_REGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"parallel worker\00", align 1
@error_context_stack = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"unrecognized message type received from parallel worker: %c (message length %d bytes)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32, %struct.TYPE_16__*)* @HandleParallelMessage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleParallelMessage(%struct.TYPE_17__* %0, i32 %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %18
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %27, %18, %3
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = call signext i8 @pq_getmsgbyte(%struct.TYPE_16__* %39)
  store i8 %40, i8* %7, align 1
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  switch i32 %42, label %121 [
    i32 75, label %43
    i32 69, label %58
    i32 78, label %58
    i32 65, label %91
    i32 88, label %104
  ]

43:                                               ; preds = %38
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = call i32 @pq_getmsgint(%struct.TYPE_16__* %44, i32 4)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = call i32 @pq_getmsgint(%struct.TYPE_16__* %46, i32 4)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = call i32 @pq_getmsgend(%struct.TYPE_16__* %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 1
  store i32 %50, i32* %57, align 8
  br label %128

58:                                               ; preds = %38, %38
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = call i32 @pq_parse_errornotice(%struct.TYPE_16__* %59, %struct.TYPE_18__* %9)
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ERROR, align 4
  %64 = call i32 @Min(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @force_parallel_mode, align 4
  %67 = load i32, i32* @FORCE_PARALLEL_REGRESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %77 = call i32 @psprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  br label %83

79:                                               ; preds = %69
  %80 = call i32 @_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @pstrdup(i32 %80)
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %58
  %85 = load i32*, i32** @error_context_stack, align 8
  store i32* %85, i32** %10, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** @error_context_stack, align 8
  %89 = call i32 @ThrowErrorData(%struct.TYPE_18__* %9)
  %90 = load i32*, i32** %10, align 8
  store i32* %90, i32** @error_context_stack, align 8
  br label %128

91:                                               ; preds = %38
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = call i32 @pq_getmsgint(%struct.TYPE_16__* %92, i32 4)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = call i8* @pq_getmsgrawstring(%struct.TYPE_16__* %94)
  store i8* %95, i8** %12, align 8
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %97 = call i8* @pq_getmsgrawstring(%struct.TYPE_16__* %96)
  store i8* %97, i8** %13, align 8
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %99 = call i32 @pq_endmessage(%struct.TYPE_16__* %98)
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @NotifyMyFrontEnd(i8* %100, i8* %101, i32 %102)
  br label %128

104:                                              ; preds = %38
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @shm_mq_detach(i32* %112)
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  br label %128

121:                                              ; preds = %38
  %122 = load i32, i32* @ERROR, align 4
  %123 = load i8, i8* %7, align 1
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @elog(i32 %122, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i8 signext %123, i32 %126)
  br label %128

128:                                              ; preds = %121, %104, %91, %84, %43
  ret void
}

declare dso_local signext i8 @pq_getmsgbyte(%struct.TYPE_16__*) #1

declare dso_local i32 @pq_getmsgint(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pq_getmsgend(%struct.TYPE_16__*) #1

declare dso_local i32 @pq_parse_errornotice(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @psprintf(i8*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @pstrdup(i32) #1

declare dso_local i32 @ThrowErrorData(%struct.TYPE_18__*) #1

declare dso_local i8* @pq_getmsgrawstring(%struct.TYPE_16__*) #1

declare dso_local i32 @pq_endmessage(%struct.TYPE_16__*) #1

declare dso_local i32 @NotifyMyFrontEnd(i8*, i8*, i32) #1

declare dso_local i32 @shm_mq_detach(i32*) #1

declare dso_local i32 @elog(i32, i8*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

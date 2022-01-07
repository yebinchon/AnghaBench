; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_ftl-stream.c_ftl_stream_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftl_stream = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"ftl_stream_destroy\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"wait for connect_thread to terminate\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"wait for connect_thread to terminate: done\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ingest destroy\00", align 1
@FTL_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to destroy from ingest %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ftl_stream_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftl_stream_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ftl_stream*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ftl_stream*
  store %struct.ftl_stream* %6, %struct.ftl_stream** %3, align 8
  %7 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %9 = call i64 @stopping(%struct.ftl_stream* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %13 = call i64 @connecting(%struct.ftl_stream* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %17 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pthread_join(i32 %18, i32* null)
  br label %69

20:                                               ; preds = %11, %1
  %21 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %22 = call i64 @connecting(%struct.ftl_stream* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %26 = call i64 @active(%struct.ftl_stream* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %68

28:                                               ; preds = %24, %20
  %29 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %30 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %29, i32 0, i32 15
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %36 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pthread_join(i32 %37, i32* null)
  %39 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %40 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pthread_join(i32 %41, i32* null)
  %43 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %33, %28
  %45 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %46 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %45, i32 0, i32 12
  store i64 0, i64* %46, align 8
  %47 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %48 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @os_event_signal(i32 %49)
  %51 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %52 = call i64 @active(%struct.ftl_stream* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %44
  %55 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %56 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @os_sem_post(i32 %57)
  %59 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %60 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @obs_output_end_data_capture(i32 %61)
  %63 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %64 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %63, i32 0, i32 10
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pthread_join(i32 %65, i32* null)
  br label %67

67:                                               ; preds = %54, %44
  br label %68

68:                                               ; preds = %67, %24
  br label %69

69:                                               ; preds = %68, %15
  %70 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %72 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %71, i32 0, i32 9
  %73 = call i64 @ftl_ingest_destroy(i32* %72)
  store i64 %73, i64* %4, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* @FTL_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i64, i64* %4, align 8
  %79 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %77, %69
  %81 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %82 = icmp ne %struct.ftl_stream* %81, null
  br i1 %82, label %83, label %117

83:                                               ; preds = %80
  %84 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %85 = call i32 @free_packets(%struct.ftl_stream* %84)
  %86 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %87 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %86, i32 0, i32 8
  %88 = call i32 @dstr_free(i32* %87)
  %89 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %90 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %89, i32 0, i32 7
  %91 = call i32 @dstr_free(i32* %90)
  %92 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %93 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %92, i32 0, i32 6
  %94 = call i32 @dstr_free(i32* %93)
  %95 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %96 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %95, i32 0, i32 5
  %97 = call i32 @dstr_free(i32* %96)
  %98 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %99 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %98, i32 0, i32 4
  %100 = call i32 @dstr_free(i32* %99)
  %101 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %102 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @os_event_destroy(i32 %103)
  %105 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %106 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @os_sem_destroy(i32 %107)
  %109 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %110 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %109, i32 0, i32 1
  %111 = call i32 @pthread_mutex_destroy(i32* %110)
  %112 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %113 = getelementptr inbounds %struct.ftl_stream, %struct.ftl_stream* %112, i32 0, i32 0
  %114 = call i32 @circlebuf_free(i32* %113)
  %115 = load %struct.ftl_stream*, %struct.ftl_stream** %3, align 8
  %116 = call i32 @bfree(%struct.ftl_stream* %115)
  br label %117

117:                                              ; preds = %83, %80
  ret void
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i64 @stopping(%struct.ftl_stream*) #1

declare dso_local i64 @connecting(%struct.ftl_stream*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i64 @active(%struct.ftl_stream*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

declare dso_local i64 @ftl_ingest_destroy(i32*) #1

declare dso_local i32 @free_packets(%struct.ftl_stream*) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @os_sem_destroy(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @bfree(%struct.ftl_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

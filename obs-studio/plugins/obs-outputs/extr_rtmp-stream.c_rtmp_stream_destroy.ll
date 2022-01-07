; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_rtmp_stream_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { %struct.rtmp_stream*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rtmp_stream_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtmp_stream_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rtmp_stream*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rtmp_stream*
  store %struct.rtmp_stream* %5, %struct.rtmp_stream** %3, align 8
  %6 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %7 = call i64 @stopping(%struct.rtmp_stream* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %11 = call i64 @connecting(%struct.rtmp_stream* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %15 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %14, i32 0, i32 19
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @pthread_join(i32 %16, i32* null)
  br label %61

18:                                               ; preds = %9, %1
  %19 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %20 = call i64 @connecting(%struct.rtmp_stream* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %24 = call i64 @active(%struct.rtmp_stream* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %22, %18
  %27 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %28 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %27, i32 0, i32 23
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %33 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %32, i32 0, i32 22
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pthread_join(i32 %34, i32* null)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %38 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %37, i32 0, i32 21
  store i64 0, i64* %38, align 8
  %39 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %40 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @os_event_signal(i32 %41)
  %43 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %44 = call i64 @active(%struct.rtmp_stream* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %36
  %47 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %48 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @os_sem_post(i32 %49)
  %51 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %52 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %51, i32 0, i32 20
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @obs_output_end_data_capture(i32 %53)
  %55 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %56 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pthread_join(i32 %57, i32* null)
  br label %59

59:                                               ; preds = %46, %36
  br label %60

60:                                               ; preds = %59, %22
  br label %61

61:                                               ; preds = %60, %13
  %62 = call i32 (...) @RTMP_TLS_Free()
  %63 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %64 = call i32 @free_packets(%struct.rtmp_stream* %63)
  %65 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %66 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %65, i32 0, i32 18
  %67 = call i32 @dstr_free(i32* %66)
  %68 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %69 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %68, i32 0, i32 17
  %70 = call i32 @dstr_free(i32* %69)
  %71 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %72 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %71, i32 0, i32 16
  %73 = call i32 @dstr_free(i32* %72)
  %74 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %75 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %74, i32 0, i32 15
  %76 = call i32 @dstr_free(i32* %75)
  %77 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %78 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %77, i32 0, i32 14
  %79 = call i32 @dstr_free(i32* %78)
  %80 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %81 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %80, i32 0, i32 13
  %82 = call i32 @dstr_free(i32* %81)
  %83 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %84 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @os_event_destroy(i32 %85)
  %87 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %88 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @os_sem_destroy(i32 %89)
  %91 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %92 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %91, i32 0, i32 10
  %93 = call i32 @pthread_mutex_destroy(i32* %92)
  %94 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %95 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %94, i32 0, i32 9
  %96 = call i32 @circlebuf_free(i32* %95)
  %97 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %98 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %97, i32 0, i32 7
  %99 = call i32 @circlebuf_free(i32* %98)
  %100 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %101 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %100, i32 0, i32 6
  %102 = call i32 @pthread_mutex_destroy(i32* %101)
  %103 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %104 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @os_event_destroy(i32 %105)
  %107 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %108 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @os_event_destroy(i32 %109)
  %111 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %112 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @os_event_destroy(i32 %113)
  %115 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %116 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @os_event_destroy(i32 %117)
  %119 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %120 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %119, i32 0, i32 1
  %121 = call i32 @pthread_mutex_destroy(i32* %120)
  %122 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %123 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %122, i32 0, i32 0
  %124 = load %struct.rtmp_stream*, %struct.rtmp_stream** %123, align 8
  %125 = icmp ne %struct.rtmp_stream* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %61
  %127 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %128 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %127, i32 0, i32 0
  %129 = load %struct.rtmp_stream*, %struct.rtmp_stream** %128, align 8
  %130 = call i32 @bfree(%struct.rtmp_stream* %129)
  br label %131

131:                                              ; preds = %126, %61
  %132 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %133 = call i32 @bfree(%struct.rtmp_stream* %132)
  ret void
}

declare dso_local i64 @stopping(%struct.rtmp_stream*) #1

declare dso_local i64 @connecting(%struct.rtmp_stream*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i64 @active(%struct.rtmp_stream*) #1

declare dso_local i32 @os_event_signal(i32) #1

declare dso_local i32 @os_sem_post(i32) #1

declare dso_local i32 @obs_output_end_data_capture(i32) #1

declare dso_local i32 @RTMP_TLS_Free(...) #1

declare dso_local i32 @free_packets(%struct.rtmp_stream*) #1

declare dso_local i32 @dstr_free(i32*) #1

declare dso_local i32 @os_event_destroy(i32) #1

declare dso_local i32 @os_sem_destroy(i32) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @circlebuf_free(i32*) #1

declare dso_local i32 @bfree(%struct.rtmp_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

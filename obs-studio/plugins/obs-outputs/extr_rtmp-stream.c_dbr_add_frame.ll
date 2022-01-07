; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_add_frame.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/obs-outputs/extr_rtmp-stream.c_dbr_add_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmp_stream = type { i32, i64, i64, i32 }
%struct.dbr_frame = type { i32, i32, i64 }

@MAX_ESTIMATE_DURATION_MS = common dso_local global i32 0, align 4
@MIN_ESTIMATE_DURATION_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtmp_stream*, %struct.dbr_frame*)* @dbr_add_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbr_add_frame(%struct.rtmp_stream* %0, %struct.dbr_frame* %1) #0 {
  %3 = alloca %struct.rtmp_stream*, align 8
  %4 = alloca %struct.dbr_frame*, align 8
  %5 = alloca %struct.dbr_frame, align 8
  %6 = alloca i32, align 4
  store %struct.rtmp_stream* %0, %struct.rtmp_stream** %3, align 8
  store %struct.dbr_frame* %1, %struct.dbr_frame** %4, align 8
  %7 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %8 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %7, i32 0, i32 3
  %9 = load %struct.dbr_frame*, %struct.dbr_frame** %4, align 8
  %10 = call i32 @circlebuf_push_back(i32* %8, %struct.dbr_frame* %9, i32 16)
  %11 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %12 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %11, i32 0, i32 3
  %13 = call i32 @circlebuf_peek_front(i32* %12, %struct.dbr_frame* %5, i32 16)
  %14 = load %struct.dbr_frame*, %struct.dbr_frame** %4, align 8
  %15 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %18 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %18, align 8
  %23 = load %struct.dbr_frame*, %struct.dbr_frame** %4, align 8
  %24 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %25, %27
  %29 = sdiv i32 %28, 1000000
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_ESTIMATE_DURATION_MS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.dbr_frame, %struct.dbr_frame* %5, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %37 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %43 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %42, i32 0, i32 3
  %44 = call i32 @circlebuf_pop_front(i32* %43, i32* null, i32 16)
  br label %45

45:                                               ; preds = %33, %2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MIN_ESTIMATE_DURATION_MS, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %51 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %52, 1000
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %53, %54
  %56 = sext i32 %55 to i64
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %49
  %59 = phi i64 [ %56, %49 ], [ 0, %57 ]
  %60 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %61 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %63 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = mul nsw i64 %64, 8
  store i64 %65, i64* %63, align 8
  %66 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %67 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = sdiv i64 %68, 1000
  store i64 %69, i64* %67, align 8
  %70 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %71 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %58
  %75 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %76 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %79 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  %82 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %83 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %84, 50
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load %struct.rtmp_stream*, %struct.rtmp_stream** %3, align 8
  %88 = getelementptr inbounds %struct.rtmp_stream, %struct.rtmp_stream* %87, i32 0, i32 1
  store i64 50, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %74
  br label %90

90:                                               ; preds = %89, %58
  ret void
}

declare dso_local i32 @circlebuf_push_back(i32*, %struct.dbr_frame*, i32) #1

declare dso_local i32 @circlebuf_peek_front(i32*, %struct.dbr_frame*, i32) #1

declare dso_local i32 @circlebuf_pop_front(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

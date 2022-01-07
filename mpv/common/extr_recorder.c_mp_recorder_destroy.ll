; ModuleID = '/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_destroy.c'
source_filename = "/home/carl/AnghaBench/mpv/common/extr_recorder.c_mp_recorder_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_recorder = type { i32, %struct.TYPE_3__*, %struct.mp_recorder_sink**, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.mp_recorder_sink = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Writing trailer failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Closing file failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_recorder_destroy(%struct.mp_recorder* %0) #0 {
  %2 = alloca %struct.mp_recorder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_recorder_sink*, align 8
  store %struct.mp_recorder* %0, %struct.mp_recorder** %2, align 8
  %5 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %6 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %13 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %18 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %17, i32 0, i32 2
  %19 = load %struct.mp_recorder_sink**, %struct.mp_recorder_sink*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %19, i64 %21
  %23 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %22, align 8
  store %struct.mp_recorder_sink* %23, %struct.mp_recorder_sink** %4, align 8
  %24 = load %struct.mp_recorder_sink*, %struct.mp_recorder_sink** %4, align 8
  %25 = call i32 @mux_packets(%struct.mp_recorder_sink* %24, i32 1)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %10

29:                                               ; preds = %10
  %30 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %31 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = call i64 @av_write_trailer(%struct.TYPE_3__* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %37 = call i32 @MP_ERR(%struct.mp_recorder* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %29
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %41 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %46 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i64 @avio_closep(i32* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %53 = call i32 @MP_ERR(%struct.mp_recorder* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %56 = getelementptr inbounds %struct.mp_recorder, %struct.mp_recorder* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call i32 @avformat_free_context(%struct.TYPE_3__* %57)
  br label %59

59:                                               ; preds = %54, %39
  %60 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %61 = call i32 @flush_packets(%struct.mp_recorder* %60)
  %62 = load %struct.mp_recorder*, %struct.mp_recorder** %2, align 8
  %63 = call i32 @talloc_free(%struct.mp_recorder* %62)
  ret void
}

declare dso_local i32 @mux_packets(%struct.mp_recorder_sink*, i32) #1

declare dso_local i64 @av_write_trailer(%struct.TYPE_3__*) #1

declare dso_local i32 @MP_ERR(%struct.mp_recorder*, i8*) #1

declare dso_local i64 @avio_closep(i32*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_3__*) #1

declare dso_local i32 @flush_packets(%struct.mp_recorder*) #1

declare dso_local i32 @talloc_free(%struct.mp_recorder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

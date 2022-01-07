; ModuleID = '/home/carl/AnghaBench/mpv/stream/extr_stream_file.c_fill_buffer.c'
source_filename = "/home/carl/AnghaBench/mpv/stream/extr_stream_file.c_fill_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.priv* }
%struct.priv = type { i32, i64, i32, i32, i64, i64 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"File is apparently being appended to, will keep retrying with timeouts.\0A\00", align 1
@RETRY_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @fill_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.pollfd], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.priv*, %struct.priv** %15, align 8
  store %struct.priv* %16, %struct.priv** %8, align 8
  %17 = load %struct.priv*, %struct.priv** %8, align 8
  %18 = getelementptr inbounds %struct.priv, %struct.priv* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %3
  %22 = load %struct.priv*, %struct.priv** %8, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mp_cancel_get_fd(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %27 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i32 0, i32 0
  %28 = load %struct.priv*, %struct.priv** %8, align 8
  %29 = getelementptr inbounds %struct.priv, %struct.priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 4
  %31 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i32 0, i32 1
  %32 = load i32, i32* @POLLIN, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i32 0, i32 2
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %26, i64 1
  %35 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 1
  %38 = load i32, i32* @POLLIN, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %34, i32 0, i32 2
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = icmp sge i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 2, i32 1
  %45 = call i32 @poll(%struct.pollfd* %40, i32 %44, i32 -1)
  %46 = getelementptr inbounds [2 x %struct.pollfd], [2 x %struct.pollfd]* %10, i64 0, i64 1
  %47 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @POLLIN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %117

53:                                               ; preds = %21
  br label %54

54:                                               ; preds = %53, %3
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %113, %54
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @MAX_RETRIES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %116

59:                                               ; preds = %55
  %60 = load %struct.priv*, %struct.priv** %8, align 8
  %61 = getelementptr inbounds %struct.priv, %struct.priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @read(i32 %62, i8* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %4, align 4
  br label %117

70:                                               ; preds = %59
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = call i64 @get_size(%struct.TYPE_5__* %71)
  store i64 %72, i64* %13, align 8
  %73 = load %struct.priv*, %struct.priv** %8, align 8
  %74 = getelementptr inbounds %struct.priv, %struct.priv* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %70
  %78 = load i64, i64* %13, align 8
  %79 = load %struct.priv*, %struct.priv** %8, align 8
  %80 = getelementptr inbounds %struct.priv, %struct.priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.priv*, %struct.priv** %8, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = call i32 @MP_WARN(%struct.TYPE_5__* %89, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.priv*, %struct.priv** %8, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %83, %77, %70
  %94 = load %struct.priv*, %struct.priv** %8, align 8
  %95 = getelementptr inbounds %struct.priv, %struct.priv* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.priv*, %struct.priv** %8, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %93
  br label %116

104:                                              ; preds = %98
  %105 = load %struct.priv*, %struct.priv** %8, align 8
  %106 = getelementptr inbounds %struct.priv, %struct.priv* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @RETRY_TIMEOUT, align 4
  %109 = call i64 @mp_cancel_wait(i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %116

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %55

116:                                              ; preds = %111, %103, %55
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %116, %68, %52
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @mp_cancel_get_fd(i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @get_size(%struct.TYPE_5__*) #1

declare dso_local i32 @MP_WARN(%struct.TYPE_5__*, i8*) #1

declare dso_local i64 @mp_cancel_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

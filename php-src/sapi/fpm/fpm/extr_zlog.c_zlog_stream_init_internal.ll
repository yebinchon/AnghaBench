; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_init_internal.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_stream_init_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlog_stream = type { i32, i32, i32, i32, i64, i32, i32, i32 }

@zlog_fd = common dso_local global i32 0, align 4
@ZLOG_SYSLOG = common dso_local global i32 0, align 4
@zlog_buffering = common dso_local global i64 0, align 8
@external_logger = common dso_local global i32* null, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@launched = common dso_local global i32 0, align 4
@ZLOG_LEVEL_MASK = common dso_local global i32 0, align 4
@ZLOG_NOTICE = common dso_local global i32 0, align 4
@zlog_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zlog_stream*, i32, i64, i32)* @zlog_stream_init_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlog_stream_init_internal(%struct.zlog_stream* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.zlog_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.zlog_stream* %0, %struct.zlog_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load i32, i32* @zlog_fd, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %11, %4
  %14 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %15 = call i32 @memset(%struct.zlog_stream* %14, i32 0, i32 40)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %18 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ZLOG_SYSLOG, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %24 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %29 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i64, i64* @zlog_buffering, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %13
  %33 = load i32*, i32** @external_logger, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %37 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %35, %32, %13
  %41 = phi i1 [ true, %32 ], [ true, %13 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %44 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %47 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %46, i32 0, i32 4
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @STDERR_FILENO, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @STDOUT_FILENO, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* @launched, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @ZLOG_NOTICE, align 4
  %66 = icmp sge i32 %64, %65
  br label %67

67:                                               ; preds = %61, %58, %54, %50
  %68 = phi i1 [ false, %58 ], [ false, %54 ], [ false, %50 ], [ %66, %61 ]
  br label %69

69:                                               ; preds = %67, %40
  %70 = phi i1 [ true, %40 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  %72 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %73 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @zlog_level, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %69
  %80 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %81 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %86 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %91 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %89, %84, %79
  %95 = phi i1 [ true, %84 ], [ true, %79 ], [ %93, %89 ]
  br label %96

96:                                               ; preds = %94, %69
  %97 = phi i1 [ false, %69 ], [ %95, %94 ]
  %98 = zext i1 %97 to i32
  %99 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %100 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %8, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @STDERR_FILENO, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.zlog_stream*, %struct.zlog_stream** %5, align 8
  %110 = getelementptr inbounds %struct.zlog_stream, %struct.zlog_stream* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  ret void
}

declare dso_local i32 @memset(%struct.zlog_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

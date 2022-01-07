; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_parse_entry.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c_logger_thread_parse_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.logger_stats = type { i32 }

@LOGGER_PARSE_SCRATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ts=%d.%d gid=%llu %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"LOGGER: Failed to flatten log entry!\0A\00", align 1
@LOGGER_PARSE_ENTRY_FAILED = common dso_local global i32 0, align 4
@LOGGER_PARSE_ENTRY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.logger_stats*, i8*, i32*)* @logger_thread_parse_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logger_thread_parse_entry(%struct.TYPE_9__* %0, %struct.logger_stats* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.logger_stats*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.logger_stats* %1, %struct.logger_stats** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %47 [
    i32 128, label %14
    i32 132, label %35
    i32 130, label %39
    i32 129, label %43
  ]

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @LOGGER_PARSE_SCRATCH, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %26, i64 %29, i8* %33)
  store i32 %34, i32* %10, align 4
  br label %47

35:                                               ; preds = %4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @_logger_thread_parse_ee(%struct.TYPE_9__* %36, i8* %37)
  store i32 %38, i32* %10, align 4
  br label %47

39:                                               ; preds = %4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @_logger_thread_parse_ige(%struct.TYPE_9__* %40, i8* %41)
  store i32 %42, i32* %10, align 4
  br label %47

43:                                               ; preds = %4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @_logger_thread_parse_ise(%struct.TYPE_9__* %44, i8* %45)
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %4, %43, %39, %35, %14
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @LOGGER_PARSE_SCRATCH, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51, %47
  %55 = call i32 @L_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @LOGGER_PARSE_ENTRY_FAILED, align 4
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @LOGGER_PARSE_ENTRY_OK, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i64, i8*) #1

declare dso_local i32 @_logger_thread_parse_ee(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @_logger_thread_parse_ige(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @_logger_thread_parse_ise(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @L_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

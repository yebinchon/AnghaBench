; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_read_local_xlog_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_read_local_xlog_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@ThisTimeLineID = common dso_local global i64 0, align 8
@XLOG_BLCKSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_local_xlog_page(%struct.TYPE_8__* %0, i64 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %5, %58
  %20 = call i32 (...) @RecoveryInProgress()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call i64 (...) @GetFlushRecPtr()
  store i64 %23, i64* %12, align 8
  br label %26

24:                                               ; preds = %19
  %25 = call i64 @GetXLogReplayRecPtr(i64* @ThisTimeLineID)
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i64, i64* @ThisTimeLineID, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @XLogReadDetermineTimeline(%struct.TYPE_8__* %31, i64 %32, i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ThisTimeLineID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %59

45:                                               ; preds = %40
  %46 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %47 = call i32 @pg_usleep(i64 1000)
  br label %58

48:                                               ; preds = %26
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %59

58:                                               ; preds = %45
  br label %19

59:                                               ; preds = %48, %44
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @XLOG_BLCKSZ, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i64, i64* %12, align 8
  %65 = icmp sle i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @XLOG_BLCKSZ, align 4
  store i32 %67, i32* %14, align 4
  br label %82

68:                                               ; preds = %59
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i64, i64* %12, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %96

76:                                               ; preds = %68
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub nsw i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %66
  %83 = load i8*, i8** %11, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32, i32* @XLOG_BLCKSZ, align 4
  %94 = call i32 @XLogRead(i8* %83, i32 %87, i64 %91, i64 %92, i32 %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %82, %75
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i32 @RecoveryInProgress(...) #1

declare dso_local i64 @GetFlushRecPtr(...) #1

declare dso_local i64 @GetXLogReplayRecPtr(i64*) #1

declare dso_local i32 @XLogReadDetermineTimeline(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pg_usleep(i64) #1

declare dso_local i32 @XLogRead(i8*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

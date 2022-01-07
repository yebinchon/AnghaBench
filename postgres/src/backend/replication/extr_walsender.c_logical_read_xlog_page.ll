; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_logical_read_xlog_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walsender.c_logical_read_xlog_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }

@ThisTimeLineID = common dso_local global i64 0, align 8
@sendTimeLineIsHistoric = common dso_local global i32 0, align 4
@sendTimeLine = common dso_local global i64 0, align 8
@sendTimeLineValidUpto = common dso_local global i32 0, align 4
@sendTimeLineNextTLI = common dso_local global i32 0, align 4
@XLOG_BLCKSZ = common dso_local global i32 0, align 4
@sendCxt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32, i64, i8*)* @logical_read_xlog_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @logical_read_xlog_page(%struct.TYPE_4__* %0, i64 %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @XLogReadDetermineTimeline(%struct.TYPE_4__* %14, i64 %15, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ThisTimeLineID, align 8
  %22 = icmp ne i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* @sendTimeLineIsHistoric, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* @sendTimeLine, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @sendTimeLineValidUpto, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* @sendTimeLineNextTLI, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i64 @WalSndWaitForWal(i64 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %39, %41
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %66

45:                                               ; preds = %5
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* @XLOG_BLCKSZ, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i64, i64* %12, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @XLOG_BLCKSZ, align 4
  store i32 %53, i32* %13, align 4
  br label %59

54:                                               ; preds = %45
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub nsw i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %54, %52
  %60 = load i32, i32* @sendCxt, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i32, i32* @XLOG_BLCKSZ, align 4
  %64 = call i32 @XLogRead(i32 %60, i8* %61, i64 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %59, %44
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @XLogReadDetermineTimeline(%struct.TYPE_4__*, i64, i32) #1

declare dso_local i64 @WalSndWaitForWal(i64) #1

declare dso_local i32 @XLogRead(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_getRecordTimestamp.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_getRecordTimestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_XACT_OPMASK = common dso_local global i64 0, align 8
@RM_XLOG_ID = common dso_local global i64 0, align 8
@XLOG_RESTORE_POINT = common dso_local global i64 0, align 8
@RM_XACT_ID = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT_PREPARED = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT_PREPARED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @getRecordTimestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getRecordTimestamp(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @XLogRecGetInfo(i32* %9)
  %11 = load i64, i64* @XLR_INFO_MASK, align 8
  %12 = xor i64 %11, -1
  %13 = and i64 %10, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @XLOG_XACT_OPMASK, align 8
  %16 = and i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @XLogRecGetRmid(i32* %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @RM_XLOG_ID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @XLOG_RESTORE_POINT, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @XLogRecGetData(i32* %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %3, align 4
  br label %72

33:                                               ; preds = %22, %2
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @RM_XACT_ID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @XLOG_XACT_COMMIT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @XLOG_XACT_COMMIT_PREPARED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41, %37
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @XLogRecGetData(i32* %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i32 1, i32* %3, align 4
  br label %72

52:                                               ; preds = %41, %33
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @RM_XACT_ID, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @XLOG_XACT_ABORT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @XLOG_XACT_ABORT_PREPARED, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60, %56
  %65 = load i32*, i32** %4, align 8
  %66 = call i64 @XLogRecGetData(i32* %65)
  %67 = inttoptr i64 %66 to %struct.TYPE_5__*
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %3, align 4
  br label %72

71:                                               ; preds = %60, %52
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %64, %45, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @XLogRecGetInfo(i32*) #1

declare dso_local i64 @XLogRecGetRmid(i32*) #1

declare dso_local i64 @XLogRecGetData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

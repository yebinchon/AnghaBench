; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_parsexlog.c_extractPageInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_rewind/extr_parsexlog.c_extractPageInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@RM_DBASE_ID = common dso_local global i64 0, align 8
@XLOG_DBASE_CREATE = common dso_local global i64 0, align 8
@XLOG_DBASE_DROP = common dso_local global i64 0, align 8
@RM_SMGR_ID = common dso_local global i64 0, align 8
@XLOG_SMGR_CREATE = common dso_local global i64 0, align 8
@XLOG_SMGR_TRUNCATE = common dso_local global i64 0, align 8
@XLR_SPECIAL_REL_UPDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [100 x i8] c"WAL record modifies a relation, but record type is not recognized: lsn: %X/%X, rmgr: %s, info: %02X\00", align 1
@RmgrNames = common dso_local global i32* null, align 8
@MAIN_FORKNUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @extractPageInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @extractPageInfo(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %11 = call i64 @XLogRecGetRmid(%struct.TYPE_6__* %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = call i64 @XLogRecGetInfo(%struct.TYPE_6__* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @XLR_INFO_MASK, align 8
  %16 = xor i64 %15, -1
  %17 = and i64 %14, %16
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @RM_DBASE_ID, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @XLOG_DBASE_CREATE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %76

26:                                               ; preds = %21, %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @RM_DBASE_ID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @XLOG_DBASE_DROP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %75

35:                                               ; preds = %30, %26
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @RM_SMGR_ID, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @XLOG_SMGR_CREATE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %74

44:                                               ; preds = %39, %35
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @RM_SMGR_ID, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @XLOG_SMGR_TRUNCATE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %73

53:                                               ; preds = %48, %44
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @XLR_SPECIAL_REL_UPDATE, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 32
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** @RmgrNames, align 8
  %67 = load i64, i64* %4, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @pg_fatal(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %58, %53
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %43
  br label %75

75:                                               ; preds = %74, %34
  br label %76

76:                                               ; preds = %75, %25
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %3, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %78, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @XLogRecGetBlockTag(%struct.TYPE_6__* %84, i32 %85, i32* %7, i64* %8, i32* %9)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %99

89:                                               ; preds = %83
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @MAIN_FORKNUM, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %99

94:                                               ; preds = %89
  %95 = load i64, i64* %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @process_block_change(i64 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %93, %88
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %77

102:                                              ; preds = %77
  ret void
}

declare dso_local i64 @XLogRecGetRmid(%struct.TYPE_6__*) #1

declare dso_local i64 @XLogRecGetInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @pg_fatal(i8*, i32, i32, i32, i64) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_6__*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @process_block_change(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

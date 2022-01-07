; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_exitArchiveRecovery.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_exitArchiveRecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXFNAMELEN = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@InArchiveRecovery = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@readFile = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@standby_signal_file_found = common dso_local global i64 0, align 8
@STANDBY_SIGNAL_FILE = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@recovery_signal_file_found = common dso_local global i64 0, align 8
@RECOVERY_SIGNAL_FILE = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"archive recovery complete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @exitArchiveRecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exitArchiveRecovery(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @MAXFNAMELEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ThisTimeLineID, align 4
  %17 = icmp ne i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  store i32 0, i32* @InArchiveRecovery, align 4
  %20 = load i32, i32* @InvalidXLogRecPtr, align 4
  %21 = call i32 @UpdateMinRecoveryPoint(i32 %20, i32 1)
  %22 = load i32, i32* @readFile, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @readFile, align 4
  %26 = call i64 @close(i32 %25)
  store i32 -1, i32* @readFile, align 4
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @wal_segment_size, align 4
  %31 = call i32 @XLByteToPrevSeg(i32 %28, i64 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i32, i32* @wal_segment_size, align 4
  %35 = call i32 @XLByteToSeg(i32 %32, i64 %33, i32 %34)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @wal_segment_size, align 4
  %45 = call i32 @XLogSegmentOffset(i32 %43, i32 %44)
  %46 = call i32 @XLogFileCopy(i64 %40, i32 %41, i64 %42, i32 %45)
  br label %62

47:                                               ; preds = %27
  store i32 1, i32* %9, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @XLogFileInit(i64 %48, i32* %9, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @close(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* @ERROR, align 4
  %55 = call i32 (...) @errcode_for_file_access()
  %56 = load i32, i32* @ThisTimeLineID, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @XLogFileNameP(i32 %56, i64 %57)
  %59 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = call i32 @ereport(i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %53, %47
  br label %62

62:                                               ; preds = %61, %39
  %63 = load i32, i32* @ThisTimeLineID, align 4
  %64 = load i64, i64* %8, align 8
  %65 = load i32, i32* @wal_segment_size, align 4
  %66 = call i32 @XLogFileName(i8* %14, i32 %63, i64 %64, i32 %65)
  %67 = call i32 @XLogArchiveCleanup(i8* %14)
  %68 = load i64, i64* @standby_signal_file_found, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32, i32* @STANDBY_SIGNAL_FILE, align 4
  %72 = load i32, i32* @FATAL, align 4
  %73 = call i32 @durable_unlink(i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i64, i64* @recovery_signal_file_found, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = load i32, i32* @RECOVERY_SIGNAL_FILE, align 4
  %79 = load i32, i32* @FATAL, align 4
  %80 = call i32 @durable_unlink(i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32, i32* @LOG, align 4
  %83 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %84 = call i32 @ereport(i32 %82, i32 %83)
  %85 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %85)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @UpdateMinRecoveryPoint(i32, i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i32 @XLByteToPrevSeg(i32, i64, i32) #2

declare dso_local i32 @XLByteToSeg(i32, i64, i32) #2

declare dso_local i32 @XLogFileCopy(i64, i32, i64, i32) #2

declare dso_local i32 @XLogSegmentOffset(i32, i32) #2

declare dso_local i32 @XLogFileInit(i64, i32*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @XLogFileNameP(i32, i64) #2

declare dso_local i32 @XLogFileName(i8*, i32, i64, i32) #2

declare dso_local i32 @XLogArchiveCleanup(i8*) #2

declare dso_local i32 @durable_unlink(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

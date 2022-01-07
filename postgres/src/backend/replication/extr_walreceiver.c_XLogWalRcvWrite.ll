; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvWrite.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiver.c_XLogWalRcvWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@recvFile = common dso_local global i32 0, align 4
@recvSegNo = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@MAXFNAMELEN = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not close log segment %s: %m\00", align 1
@recvFileTLI = common dso_local global i32 0, align 4
@XLogArchiveMode = common dso_local global i64 0, align 8
@ARCHIVE_MODE_ALWAYS = common dso_local global i64 0, align 8
@ThisTimeLineID = common dso_local global i32 0, align 4
@recvOff = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"could not seek in log segment %s to offset %u: %m\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"could not write to log segment %s at offset %u, length %lu: %m\00", align 1
@LogstreamResult = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32)* @XLogWalRcvWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @XLogWalRcvWrite(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  br label %13

13:                                               ; preds = %129, %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %145

16:                                               ; preds = %13
  %17 = load i32, i32* @recvFile, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @recvSegNo, align 4
  %22 = load i32, i32* @wal_segment_size, align 4
  %23 = call i32 @XLByteInSeg(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %67, label %25

25:                                               ; preds = %19, %16
  %26 = load i32, i32* @recvFile, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load i32, i32* @MAXFNAMELEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %11, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %12, align 8
  %33 = call i32 @XLogWalRcvFlush(i32 0)
  %34 = load i32, i32* @recvFile, align 4
  %35 = call i64 @close(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32, i32* @PANIC, align 4
  %39 = call i32 (...) @errcode_for_file_access()
  %40 = load i32, i32* @recvFileTLI, align 4
  %41 = load i32, i32* @recvSegNo, align 4
  %42 = call i32 @XLogFileNameP(i32 %40, i32 %41)
  %43 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = call i32 @ereport(i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %37, %28
  %46 = load i32, i32* @recvFileTLI, align 4
  %47 = load i32, i32* @recvSegNo, align 4
  %48 = load i32, i32* @wal_segment_size, align 4
  %49 = call i32 @XLogFileName(i8* %32, i32 %46, i32 %47, i32 %48)
  %50 = load i64, i64* @XLogArchiveMode, align 8
  %51 = load i64, i64* @ARCHIVE_MODE_ALWAYS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @XLogArchiveForceDone(i8* %32)
  br label %57

55:                                               ; preds = %45
  %56 = call i32 @XLogArchiveNotify(i8* %32)
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %58)
  br label %59

59:                                               ; preds = %57, %25
  store i32 -1, i32* @recvFile, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @recvSegNo, align 4
  %62 = load i32, i32* @wal_segment_size, align 4
  %63 = call i32 @XLByteToSeg(i32 %60, i32 %61, i32 %62)
  store i32 1, i32* %10, align 4
  %64 = load i32, i32* @recvSegNo, align 4
  %65 = call i32 @XLogFileInit(i32 %64, i32* %10, i32 1)
  store i32 %65, i32* @recvFile, align 4
  %66 = load i32, i32* @ThisTimeLineID, align 4
  store i32 %66, i32* @recvFileTLI, align 4
  store i32 0, i32* @recvOff, align 4
  br label %67

67:                                               ; preds = %59, %19
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @wal_segment_size, align 4
  %70 = call i32 @XLogSegmentOffset(i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %5, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* @wal_segment_size, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp sgt i64 %74, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load i32, i32* @wal_segment_size, align 4
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %9, align 4
  br label %85

82:                                               ; preds = %67
  %83 = load i64, i64* %5, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @recvOff, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %106

89:                                               ; preds = %85
  %90 = load i32, i32* @recvFile, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SEEK_SET, align 4
  %93 = call i64 @lseek(i32 %90, i32 %91, i32 %92)
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load i32, i32* @PANIC, align 4
  %97 = call i32 (...) @errcode_for_file_access()
  %98 = load i32, i32* @recvFileTLI, align 4
  %99 = load i32, i32* @recvSegNo, align 4
  %100 = call i32 @XLogFileNameP(i32 %98, i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101)
  %103 = call i32 @ereport(i32 %96, i32 %102)
  br label %104

104:                                              ; preds = %95, %89
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* @recvOff, align 4
  br label %106

106:                                              ; preds = %104, %85
  store i64 0, i64* @errno, align 8
  %107 = load i32, i32* @recvFile, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @write(i32 %107, i8* %108, i32 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %106
  %114 = load i64, i64* @errno, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* @ENOSPC, align 8
  store i64 %117, i64* @errno, align 8
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* @PANIC, align 4
  %120 = call i32 (...) @errcode_for_file_access()
  %121 = load i32, i32* @recvFileTLI, align 4
  %122 = load i32, i32* @recvSegNo, align 4
  %123 = call i32 @XLogFileNameP(i32 %121, i32 %122)
  %124 = load i32, i32* @recvOff, align 4
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %124, i64 %126)
  %128 = call i32 @ereport(i32 %119, i32 %127)
  br label %129

129:                                              ; preds = %118, %106
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @recvOff, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* @recvOff, align 4
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %5, align 8
  %139 = sub nsw i64 %138, %137
  store i64 %139, i64* %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %4, align 8
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @LogstreamResult, i32 0, i32 0), align 4
  br label %13

145:                                              ; preds = %13
  ret void
}

declare dso_local i32 @XLByteInSeg(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @XLogWalRcvFlush(i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @XLogFileNameP(i32, i32) #1

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #1

declare dso_local i32 @XLogArchiveForceDone(i8*) #1

declare dso_local i32 @XLogArchiveNotify(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @XLByteToSeg(i32, i32, i32) #1

declare dso_local i32 @XLogFileInit(i32, i32*, i32) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ReadRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_ReadRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@InvalidXLogRecPtr = common dso_local global i64 0, align 8
@lastSourceFailed = common dso_local global i32 0, align 4
@ReadRecPtr = common dso_local global i32 0, align 4
@EndRecPtr = common dso_local global i64 0, align 8
@readFile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@expectedTLEs = common dso_local global i32 0, align 4
@MAXFNAMELEN = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"unexpected timeline ID %u in log segment %s, offset %u\00", align 1
@InArchiveRecovery = common dso_local global i32 0, align 4
@ArchiveRecoveryRequested = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"reached end of WAL in pg_wal, entering archive recovery\00", align 1
@StandbyModeRequested = common dso_local global i64 0, align 8
@StandbyMode = common dso_local global i32 0, align 4
@ControlFileLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@DB_IN_ARCHIVE_RECOVERY = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_10__* null, align 8
@ThisTimeLineID = common dso_local global i32 0, align 4
@minRecoveryPoint = common dso_local global i64 0, align 8
@minRecoveryPointTLI = common dso_local global i32 0, align 4
@updateMinRecoveryPoint = common dso_local global i32 0, align 4
@currentSource = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i64, i32, i32)* @ReadRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ReadRecord(%struct.TYPE_8__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @InvalidXLogRecPtr, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  store i32 0, i32* @lastSourceFailed, align 4
  br label %33

33:                                               ; preds = %174, %157, %4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32* @XLogReadRecord(%struct.TYPE_8__* %34, i64 %35, i8** %12)
  store i32* %36, i32** %10, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @ReadRecPtr, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* @EndRecPtr, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %33
  %46 = load i32, i32* @readFile, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @readFile, align 4
  %50 = call i32 @close(i32 %49)
  store i32 -1, i32* @readFile, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i8*, i8** %12, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  br label %62

60:                                               ; preds = %54
  %61 = load i64, i64* @EndRecPtr, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i64 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @emode_for_corrupt_record(i32 %55, i64 %63)
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = call i32 @ereport(i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %62, %51
  br label %117

69:                                               ; preds = %33
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @expectedTLEs, align 4
  %74 = call i32 @tliInHistory(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %116, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @MAXFNAMELEN, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @llvm.stacksave()
  store i8* %79, i8** %13, align 8
  %80 = alloca i8, i64 %78, align 16
  store i64 %78, i64* %14, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* @wal_segment_size, align 4
  %86 = call i32 @XLByteToSeg(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @wal_segment_size, align 4
  %91 = call i32 @XLogSegmentOffset(i32 %89, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @wal_segment_size, align 4
  %98 = call i32 @XLogFileName(i8* %80, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = load i64, i64* %7, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %76
  %103 = load i64, i64* %7, align 8
  br label %106

104:                                              ; preds = %76
  %105 = load i64, i64* @EndRecPtr, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i64 [ %103, %102 ], [ %105, %104 ]
  %108 = call i32 @emode_for_corrupt_record(i32 %99, i64 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %111, i8* %80, i32 %112)
  %114 = call i32 @ereport(i32 %108, i32 %113)
  store i32* null, i32** %10, align 8
  %115 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %115)
  br label %116

116:                                              ; preds = %106, %69
  br label %117

117:                                              ; preds = %116, %68
  %118 = load i32*, i32** %10, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32*, i32** %10, align 8
  store i32* %121, i32** %5, align 8
  br label %176

122:                                              ; preds = %117
  store i32 1, i32* @lastSourceFailed, align 4
  %123 = load i32, i32* @InArchiveRecovery, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %168, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @ArchiveRecoveryRequested, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %168

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %168, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @DEBUG1, align 4
  %133 = call i32 (i8*, ...) @errmsg_internal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %132, i32 %133)
  store i32 1, i32* @InArchiveRecovery, align 4
  %135 = load i64, i64* @StandbyModeRequested, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  store i32 1, i32* @StandbyMode, align 4
  br label %138

138:                                              ; preds = %137, %131
  %139 = load i32, i32* @ControlFileLock, align 4
  %140 = load i32, i32* @LW_EXCLUSIVE, align 4
  %141 = call i32 @LWLockAcquire(i32 %139, i32 %140)
  %142 = load i32, i32* @DB_IN_ARCHIVE_RECOVERY, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ControlFile, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ControlFile, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @EndRecPtr, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %138
  %151 = load i64, i64* @EndRecPtr, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ControlFile, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  store i64 %151, i64* %153, align 8
  %154 = load i32, i32* @ThisTimeLineID, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ControlFile, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %150, %138
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ControlFile, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* @minRecoveryPoint, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** @ControlFile, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* @minRecoveryPointTLI, align 4
  store i32 1, i32* @updateMinRecoveryPoint, align 4
  %164 = call i32 (...) @UpdateControlFile()
  %165 = load i32, i32* @ControlFileLock, align 4
  %166 = call i32 @LWLockRelease(i32 %165)
  %167 = call i32 (...) @CheckRecoveryConsistency()
  store i32 0, i32* @lastSourceFailed, align 4
  store i64 0, i64* @currentSource, align 8
  br label %33

168:                                              ; preds = %128, %125, %122
  %169 = load i32, i32* @StandbyMode, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = call i32 (...) @CheckForStandbyTrigger()
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  br label %33

175:                                              ; preds = %171, %168
  store i32* null, i32** %5, align 8
  br label %176

176:                                              ; preds = %175, %120
  %177 = load i32*, i32** %5, align 8
  ret i32* %177
}

declare dso_local i32* @XLogReadRecord(%struct.TYPE_8__*, i64, i8**) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @emode_for_corrupt_record(i32, i64) #1

declare dso_local i32 @errmsg_internal(i8*, ...) #1

declare dso_local i32 @tliInHistory(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @XLByteToSeg(i32, i32, i32) #1

declare dso_local i32 @XLogSegmentOffset(i32, i32) #1

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @UpdateControlFile(...) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @CheckRecoveryConsistency(...) #1

declare dso_local i32 @CheckForStandbyTrigger(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

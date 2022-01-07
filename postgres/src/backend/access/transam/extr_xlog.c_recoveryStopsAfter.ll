; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_recoveryStopsAfter.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_recoveryStopsAfter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i64 }

@ArchiveRecoveryRequested = common dso_local global i32 0, align 4
@XLR_INFO_MASK = common dso_local global i64 0, align 8
@recoveryTarget = common dso_local global i64 0, align 8
@RECOVERY_TARGET_NAME = common dso_local global i64 0, align 8
@RM_XLOG_ID = common dso_local global i64 0, align 8
@XLOG_RESTORE_POINT = common dso_local global i64 0, align 8
@recoveryTargetName = common dso_local global i32 0, align 4
@recoveryStopAfter = common dso_local global i32 0, align 4
@InvalidTransactionId = common dso_local global i64 0, align 8
@recoveryStopXid = common dso_local global i64 0, align 8
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@recoveryStopLSN = common dso_local global i32 0, align 4
@recoveryStopTime = common dso_local global i64 0, align 8
@recoveryStopName = common dso_local global i8* null, align 8
@MAXFNAMELEN = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"recovery stopping at restore point \22%s\22, time %s\00", align 1
@RECOVERY_TARGET_LSN = common dso_local global i64 0, align 8
@recoveryTargetInclusive = common dso_local global i64 0, align 8
@recoveryTargetLSN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"recovery stopping after WAL location (LSN) \22%X/%X\22\00", align 1
@RM_XACT_ID = common dso_local global i64 0, align 8
@XLOG_XACT_OPMASK = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT = common dso_local global i64 0, align 8
@XLOG_XACT_COMMIT_PREPARED = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT = common dso_local global i64 0, align 8
@XLOG_XACT_ABORT_PREPARED = common dso_local global i64 0, align 8
@RECOVERY_TARGET_XID = common dso_local global i64 0, align 8
@recoveryTargetXid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"recovery stopping after commit of transaction %u, time %s\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"recovery stopping after abort of transaction %u, time %s\00", align 1
@RECOVERY_TARGET_IMMEDIATE = common dso_local global i64 0, align 8
@reachedConsistency = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"recovery stopping after reaching consistency\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @recoveryStopsAfter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recoveryStopsAfter(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %14 = load i32, i32* @ArchiveRecoveryRequested, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %219

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = call i64 @XLogRecGetInfo(%struct.TYPE_16__* %18)
  %20 = load i64, i64* @XLR_INFO_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = call i64 @XLogRecGetRmid(%struct.TYPE_16__* %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* @recoveryTarget, align 8
  %26 = load i64, i64* @RECOVERY_TARGET_NAME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @RM_XLOG_ID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @XLOG_RESTORE_POINT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = call i64 @XLogRecGetData(%struct.TYPE_16__* %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %39, %struct.TYPE_15__** %8, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @recoveryTargetName, align 4
  %44 = call i64 @strcmp(i32 %42, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %36
  store i32 1, i32* @recoveryStopAfter, align 4
  %47 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %47, i64* @recoveryStopXid, align 8
  %48 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %48, i32* @recoveryStopLSN, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = call i64 @getRecordTimestamp(%struct.TYPE_16__* %49, i64* @recoveryStopTime)
  %51 = load i8*, i8** @recoveryStopName, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MAXFNAMELEN, align 4
  %56 = call i32 @strlcpy(i8* %51, i32 %54, i32 %55)
  %57 = load i32, i32* @LOG, align 4
  %58 = load i8*, i8** @recoveryStopName, align 8
  %59 = load i64, i64* @recoveryStopTime, align 8
  %60 = call i32 @timestamptz_to_str(i64 %59)
  %61 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %58, i32 %60)
  %62 = call i32 @ereport(i32 %57, i32 %61)
  store i32 1, i32* %2, align 4
  br label %219

63:                                               ; preds = %36
  br label %64

64:                                               ; preds = %63, %32, %28, %17
  %65 = load i64, i64* @recoveryTarget, align 8
  %66 = load i64, i64* @RECOVERY_TARGET_LSN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %91

68:                                               ; preds = %64
  %69 = load i64, i64* @recoveryTargetInclusive, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @recoveryTargetLSN, align 8
  %76 = icmp sge i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %71
  store i32 1, i32* @recoveryStopAfter, align 4
  %78 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %78, i64* @recoveryStopXid, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @recoveryStopLSN, align 4
  store i64 0, i64* @recoveryStopTime, align 8
  %83 = load i8*, i8** @recoveryStopName, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* @LOG, align 4
  %86 = load i32, i32* @recoveryStopLSN, align 4
  %87 = ashr i32 %86, 32
  %88 = load i32, i32* @recoveryStopLSN, align 4
  %89 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %88)
  %90 = call i32 @ereport(i32 %85, i32 %89)
  store i32 1, i32* %2, align 4
  br label %219

91:                                               ; preds = %71, %68, %64
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @RM_XACT_ID, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %219

96:                                               ; preds = %91
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @XLOG_XACT_OPMASK, align 8
  %99 = and i64 %97, %98
  store i64 %99, i64* %5, align 8
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @XLOG_XACT_COMMIT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %115, label %103

103:                                              ; preds = %96
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @XLOG_XACT_COMMIT_PREPARED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %5, align 8
  %109 = load i64, i64* @XLOG_XACT_ABORT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @XLOG_XACT_ABORT_PREPARED, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %203

115:                                              ; preds = %111, %107, %103, %96
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = call i64 @getRecordTimestamp(%struct.TYPE_16__* %116, i64* %7)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @SetLatestXTime(i64 %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i64, i64* %5, align 8
  %124 = load i64, i64* @XLOG_XACT_COMMIT_PREPARED, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = call i64 @XLogRecGetData(%struct.TYPE_16__* %127)
  %129 = inttoptr i64 %128 to i32*
  store i32* %129, i32** %10, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = call i64 @XLogRecGetInfo(%struct.TYPE_16__* %130)
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @ParseCommitRecord(i64 %131, i32* %132, %struct.TYPE_13__* %11)
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %9, align 8
  br label %154

136:                                              ; preds = %122
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* @XLOG_XACT_ABORT_PREPARED, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = call i64 @XLogRecGetData(%struct.TYPE_16__* %141)
  %143 = inttoptr i64 %142 to i32*
  store i32* %143, i32** %12, align 8
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %145 = call i64 @XLogRecGetInfo(%struct.TYPE_16__* %144)
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @ParseAbortRecord(i64 %145, i32* %146, %struct.TYPE_14__* %13)
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  store i64 %149, i64* %9, align 8
  br label %153

150:                                              ; preds = %136
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %152 = call i64 @XLogRecGetXid(%struct.TYPE_16__* %151)
  store i64 %152, i64* %9, align 8
  br label %153

153:                                              ; preds = %150, %140
  br label %154

154:                                              ; preds = %153, %126
  %155 = load i64, i64* @recoveryTarget, align 8
  %156 = load i64, i64* @RECOVERY_TARGET_XID, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %202

158:                                              ; preds = %154
  %159 = load i64, i64* @recoveryTargetInclusive, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %202

161:                                              ; preds = %158
  %162 = load i64, i64* %9, align 8
  %163 = load i64, i64* @recoveryTargetXid, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %202

165:                                              ; preds = %161
  store i32 1, i32* @recoveryStopAfter, align 4
  %166 = load i64, i64* %9, align 8
  store i64 %166, i64* @recoveryStopXid, align 8
  %167 = load i64, i64* %7, align 8
  store i64 %167, i64* @recoveryStopTime, align 8
  %168 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %168, i32* @recoveryStopLSN, align 4
  %169 = load i8*, i8** @recoveryStopName, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  store i8 0, i8* %170, align 1
  %171 = load i64, i64* %5, align 8
  %172 = load i64, i64* @XLOG_XACT_COMMIT, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %178, label %174

174:                                              ; preds = %165
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* @XLOG_XACT_COMMIT_PREPARED, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %174, %165
  %179 = load i32, i32* @LOG, align 4
  %180 = load i64, i64* @recoveryStopXid, align 8
  %181 = load i64, i64* @recoveryStopTime, align 8
  %182 = call i32 @timestamptz_to_str(i64 %181)
  %183 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %180, i32 %182)
  %184 = call i32 @ereport(i32 %179, i32 %183)
  br label %201

185:                                              ; preds = %174
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @XLOG_XACT_ABORT, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* @XLOG_XACT_ABORT_PREPARED, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %189, %185
  %194 = load i32, i32* @LOG, align 4
  %195 = load i64, i64* @recoveryStopXid, align 8
  %196 = load i64, i64* @recoveryStopTime, align 8
  %197 = call i32 @timestamptz_to_str(i64 %196)
  %198 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %195, i32 %197)
  %199 = call i32 @ereport(i32 %194, i32 %198)
  br label %200

200:                                              ; preds = %193, %189
  br label %201

201:                                              ; preds = %200, %178
  store i32 1, i32* %2, align 4
  br label %219

202:                                              ; preds = %161, %158, %154
  br label %203

203:                                              ; preds = %202, %111
  %204 = load i64, i64* @recoveryTarget, align 8
  %205 = load i64, i64* @RECOVERY_TARGET_IMMEDIATE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i64, i64* @reachedConsistency, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load i32, i32* @LOG, align 4
  %212 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %213 = call i32 @ereport(i32 %211, i32 %212)
  store i32 1, i32* @recoveryStopAfter, align 4
  %214 = load i64, i64* @InvalidTransactionId, align 8
  store i64 %214, i64* @recoveryStopXid, align 8
  store i64 0, i64* @recoveryStopTime, align 8
  %215 = load i32, i32* @InvalidXLogRecPtr, align 4
  store i32 %215, i32* @recoveryStopLSN, align 4
  %216 = load i8*, i8** @recoveryStopName, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  store i8 0, i8* %217, align 1
  store i32 1, i32* %2, align 4
  br label %219

218:                                              ; preds = %207, %203
  store i32 0, i32* %2, align 4
  br label %219

219:                                              ; preds = %218, %210, %201, %95, %77, %46, %16
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i64 @XLogRecGetInfo(%struct.TYPE_16__*) #1

declare dso_local i64 @XLogRecGetRmid(%struct.TYPE_16__*) #1

declare dso_local i64 @XLogRecGetData(%struct.TYPE_16__*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @getRecordTimestamp(%struct.TYPE_16__*, i64*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @timestamptz_to_str(i64) #1

declare dso_local i32 @SetLatestXTime(i64) #1

declare dso_local i32 @ParseCommitRecord(i64, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ParseAbortRecord(i64, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @XLogRecGetXid(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

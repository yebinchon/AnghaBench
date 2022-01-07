; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/sync/extr_sync.c_ProcessSyncRequests.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/sync/extr_sync.c_ProcessSyncRequests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*, i8*)* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__, i32 }

@ProcessSyncRequests.sync_in_progress = internal global i32 0, align 4
@pendingOps = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cannot sync without a pendingOps table\00", align 1
@sync_cycle_ctr = common dso_local global i64 0, align 8
@FSYNCS_PER_ABSORB = common dso_local global i32 0, align 4
@enableFsync = common dso_local global i32 0, align 4
@MAXPGPATH = common dso_local global i32 0, align 4
@syncsw = common dso_local global %struct.TYPE_7__* null, align 8
@log_checkpoints = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"checkpoint sync: number=%d file=%s time=%.3f msec\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"could not fsync file \22%s\22 but retrying: %m\00", align 1
@HASH_REMOVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"pendingOps corrupted\00", align 1
@CheckpointStats = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessSyncRequests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32, i32* @pendingOps, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* @ERROR, align 4
  %19 = call i32 (i32, i8*, ...) @elog(i32 %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %0
  %21 = call i32 (...) @AbsorbSyncRequests()
  %22 = load i32, i32* @ProcessSyncRequests.sync_in_progress, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* @pendingOps, align 4
  %26 = call i32 @hash_seq_init(i32* %1, i32 %25)
  br label %27

27:                                               ; preds = %31, %24
  %28 = call i64 @hash_seq_search(i32* %1)
  %29 = inttoptr i64 %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %2, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i64, i64* @sync_cycle_ctr, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %27

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i64, i64* @sync_cycle_ctr, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* @sync_cycle_ctr, align 8
  store i32 1, i32* @ProcessSyncRequests.sync_in_progress, align 4
  %39 = load i32, i32* @FSYNCS_PER_ABSORB, align 4
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @pendingOps, align 4
  %41 = call i32 @hash_seq_init(i32* %1, i32 %40)
  br label %42

42:                                               ; preds = %166, %56, %49, %36
  %43 = call i64 @hash_seq_search(i32* %1)
  %44 = inttoptr i64 %43 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %2, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %167

46:                                               ; preds = %42
  %47 = load i32, i32* @enableFsync, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  br label %42

50:                                               ; preds = %46
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @sync_cycle_ctr, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %42

57:                                               ; preds = %50
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = load i64, i64* @sync_cycle_ctr, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @Assert(i32 %64)
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %3, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = call i32 (...) @AbsorbSyncRequests()
  %71 = load i32, i32* @FSYNCS_PER_ABSORB, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %57
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %153, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  br i1 %78, label %79, label %156

79:                                               ; preds = %73
  %80 = load i32, i32* @MAXPGPATH, align 4
  %81 = zext i32 %80 to i64
  %82 = call i8* @llvm.stacksave()
  store i8* %82, i8** %12, align 8
  %83 = alloca i8, i64 %81, align 16
  store i64 %81, i64* %13, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @INSTR_TIME_SET_CURRENT(i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @syncsw, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i64 (%struct.TYPE_8__*, i8*)*, i64 (%struct.TYPE_8__*, i8*)** %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = call i64 %93(%struct.TYPE_8__* %95, i8* %83)
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %79
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @INSTR_TIME_SET_CURRENT(i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @INSTR_TIME_SUBTRACT(i32 %102, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @INSTR_TIME_GET_MICROSEC(i32 %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i64, i64* %8, align 8
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %110, %98
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %10, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %10, align 8
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %4, align 4
  %118 = load i64, i64* @log_checkpoints, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %112
  %121 = load i32, i32* @DEBUG1, align 4
  %122 = load i32, i32* %4, align 4
  %123 = load i64, i64* %8, align 8
  %124 = sitofp i64 %123 to double
  %125 = fdiv double %124, 1.000000e+03
  %126 = call i32 (i32, i8*, ...) @elog(i32 %121, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %122, i8* %83, double %125)
  br label %127

127:                                              ; preds = %120, %112
  store i32 6, i32* %14, align 4
  br label %149

128:                                              ; preds = %79
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @FILE_POSSIBLY_DELETED(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132, %128
  %136 = load i32, i32* @ERROR, align 4
  %137 = call i32 @data_sync_elevel(i32 %136)
  %138 = call i32 (...) @errcode_for_file_access()
  %139 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  %140 = call i32 @ereport(i32 %137, i32 %139)
  br label %146

141:                                              ; preds = %132
  %142 = load i32, i32* @DEBUG1, align 4
  %143 = call i32 (...) @errcode_for_file_access()
  %144 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  %145 = call i32 @ereport(i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %141, %135
  %147 = call i32 (...) @AbsorbSyncRequests()
  %148 = load i32, i32* @FSYNCS_PER_ABSORB, align 4
  store i32 %148, i32* %3, align 4
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %146, %127
  %150 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %14, align 4
  switch i32 %151, label %171 [
    i32 0, label %152
    i32 6, label %156
  ]

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  br label %73

156:                                              ; preds = %149, %73
  %157 = load i32, i32* @pendingOps, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* @HASH_REMOVE, align 4
  %161 = call i32* @hash_search(i32 %157, %struct.TYPE_8__* %159, i32 %160, i32* null)
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i32, i32* @ERROR, align 4
  %165 = call i32 (i32, i8*, ...) @elog(i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %156
  br label %42

167:                                              ; preds = %42
  %168 = load i32, i32* %4, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CheckpointStats, i32 0, i32 0), align 8
  %169 = load i64, i64* %9, align 8
  store i64 %169, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CheckpointStats, i32 0, i32 2), align 8
  %170 = load i64, i64* %10, align 8
  store i64 %170, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CheckpointStats, i32 0, i32 1), align 8
  store i32 0, i32* @ProcessSyncRequests.sync_in_progress, align 4
  ret void

171:                                              ; preds = %149
  unreachable
}

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @AbsorbSyncRequests(...) #1

declare dso_local i32 @hash_seq_init(i32*, i32) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32 @Assert(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i64 @INSTR_TIME_GET_MICROSEC(i32) #1

declare dso_local i32 @FILE_POSSIBLY_DELETED(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @data_sync_elevel(i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32* @hash_search(i32, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_GetNewTransactionId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_varsup.c_GetNewTransactionId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i8*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"cannot assign TransactionIds during a parallel operation\00", align 1
@BootstrapTransactionId = common dso_local global i32 0, align 4
@MyPgXact = common dso_local global %struct.TYPE_8__* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot assign TransactionIds during recovery\00", align 1
@XidGenLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@ShmemVariableCache = common dso_local global %struct.TYPE_6__* null, align 8
@IsUnderPostmaster = common dso_local global i64 0, align 8
@PMSIGNAL_START_AUTOVAC_LAUNCHER = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [82 x i8] c"database is not accepting commands to avoid wraparound data loss in database \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [169 x i8] c"Stop the postmaster and vacuum that database in single-user mode.\0AYou might also need to commit or roll back old prepared transactions, or drop stale replication slots.\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"database is not accepting commands to avoid wraparound data loss in database with OID %u\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"database \22%s\22 must be vacuumed within %u transactions\00", align 1
@.str.6 = private unnamed_addr constant [182 x i8] c"To avoid a database shutdown, execute a database-wide VACUUM in that database.\0AYou might also need to commit or roll back old prepared transactions, or drop stale replication slots.\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"database with OID %u must be vacuumed within %u transactions\00", align 1
@PGPROC_MAX_CACHED_SUBXIDS = common dso_local global i32 0, align 4
@MyProc = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetNewTransactionId(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = call i64 (...) @IsInParallelMode()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ERROR, align 4
  %17 = call i32 @elog(i32 %16, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  %19 = call i64 (...) @IsBootstrapProcessingMode()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i32, i32* @BootstrapTransactionId, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @BootstrapTransactionId, align 4
  %31 = call i32 @FullTransactionIdFromEpochAndXid(i32 0, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %191

32:                                               ; preds = %18
  %33 = call i64 (...) @RecoveryInProgress()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @ERROR, align 4
  %37 = call i32 @elog(i32 %36, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @XidGenLock, align 4
  %40 = load i32, i32* @LW_EXCLUSIVE, align 4
  %41 = call i32 @LWLockAcquire(i32 %39, i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @XidFromFullTransactionId(i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @TransactionIdFollowsOrEquals(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %146

53:                                               ; preds = %38
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %6, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  %66 = load i32, i32* @XidGenLock, align 4
  %67 = call i32 @LWLockRelease(i32 %66)
  %68 = load i64, i64* @IsUnderPostmaster, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %53
  %71 = load i32, i32* %5, align 4
  %72 = srem i32 %71, 65536
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @PMSIGNAL_START_AUTOVAC_LAUNCHER, align 4
  %76 = call i32 @SendPostmasterSignal(i32 %75)
  br label %77

77:                                               ; preds = %74, %70, %53
  %78 = load i64, i64* @IsUnderPostmaster, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %107

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @TransactionIdFollowsOrEquals(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load i8*, i8** %9, align 8
  %87 = call i8* @get_database_name(i8* %86)
  store i8* %87, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load i32, i32* @ERROR, align 4
  %92 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %93 = call i32 @errcode(i32 %92)
  %94 = load i8*, i8** %10, align 8
  %95 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  %96 = call i32 @errhint(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.3, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %91, i32 %96)
  br label %106

98:                                               ; preds = %85
  %99 = load i32, i32* @ERROR, align 4
  %100 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %101 = call i32 @errcode(i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  %104 = call i32 @errhint(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.3, i64 0, i64 0))
  %105 = call i32 @ereport(i32 %99, i32 %104)
  br label %106

106:                                              ; preds = %98, %90
  br label %137

107:                                              ; preds = %80, %77
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @TransactionIdFollowsOrEquals(i32 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %136

112:                                              ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = call i8* @get_database_name(i8* %113)
  store i8* %114, i8** %11, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load i32, i32* @WARNING, align 4
  %119 = load i8*, i8** %11, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %5, align 4
  %122 = sub nsw i32 %120, %121
  %123 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i8* %119, i32 %122)
  %124 = call i32 @errhint(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.6, i64 0, i64 0))
  %125 = call i32 @ereport(i32 %118, i32 %124)
  br label %135

126:                                              ; preds = %112
  %127 = load i32, i32* @WARNING, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %129, %130
  %132 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %128, i32 %131)
  %133 = call i32 @errhint(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.6, i64 0, i64 0))
  %134 = call i32 @ereport(i32 %127, i32 %133)
  br label %135

135:                                              ; preds = %126, %117
  br label %136

136:                                              ; preds = %135, %107
  br label %137

137:                                              ; preds = %136, %106
  %138 = load i32, i32* @XidGenLock, align 4
  %139 = load i32, i32* @LW_EXCLUSIVE, align 4
  %140 = call i32 @LWLockAcquire(i32 %138, i32 %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = call i32 @XidFromFullTransactionId(i32 %144)
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %137, %38
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @ExtendCLOG(i32 %147)
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @ExtendCommitTs(i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @ExtendSUBTRANS(i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ShmemVariableCache, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 5
  %155 = call i32 @FullTransactionIdAdvance(i32* %154)
  %156 = load i32, i32* %3, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %146
  %159 = load i32, i32* %5, align 4
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %187

162:                                              ; preds = %146
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %12, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @PGPROC_MAX_CACHED_SUBXIDS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %162
  %170 = load i32, i32* %5, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** @MyProc, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %170, i32* %177, align 4
  %178 = call i32 (...) @pg_write_barrier()
  %179 = load i32, i32* %12, align 4
  %180 = add nsw i32 %179, 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %186

183:                                              ; preds = %162
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** @MyPgXact, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %183, %169
  br label %187

187:                                              ; preds = %186, %158
  %188 = load i32, i32* @XidGenLock, align 4
  %189 = call i32 @LWLockRelease(i32 %188)
  %190 = load i32, i32* %4, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %21
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i64 @IsInParallelMode(...) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FullTransactionIdFromEpochAndXid(i32, i32) #1

declare dso_local i64 @RecoveryInProgress(...) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @XidFromFullTransactionId(i32) #1

declare dso_local i64 @TransactionIdFollowsOrEquals(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local i8* @get_database_name(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*, ...) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @ExtendCLOG(i32) #1

declare dso_local i32 @ExtendCommitTs(i32) #1

declare dso_local i32 @ExtendSUBTRANS(i32) #1

declare dso_local i32 @FullTransactionIdAdvance(i32*) #1

declare dso_local i32 @pg_write_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

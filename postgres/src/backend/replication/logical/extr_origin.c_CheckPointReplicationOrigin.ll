; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_CheckPointReplicationOrigin.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_origin.c_CheckPointReplicationOrigin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"pg_logical/replorigin_checkpoint.tmp\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"pg_logical/replorigin_checkpoint\00", align 1
@REPLICATION_STATE_MAGIC = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@max_replication_slots = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@PANIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not remove file \22%s\22: %m\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@ENOSPC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"could not write to file \22%s\22: %m\00", align 1
@ReplicationOriginLock = common dso_local global i32* null, align 8
@LW_SHARED = common dso_local global i32 0, align 4
@replication_states = common dso_local global %struct.TYPE_14__* null, align 8
@InvalidRepOriginId = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CheckPointReplicationOrigin() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %10 = bitcast %struct.TYPE_13__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_13__* @REPLICATION_STATE_MAGIC to i8*), i64 16, i1 false)
  %11 = load i32, i32* @max_replication_slots, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %179

14:                                               ; preds = %0
  %15 = bitcast %struct.TYPE_13__* %6 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @INIT_CRC32C(i64 %17, i32 %19)
  %21 = load i8*, i8** %1, align 8
  %22 = call i64 @unlink(i8* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %14
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @ENOENT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* @PANIC, align 4
  %30 = call i32 (...) @errcode_for_file_access()
  %31 = load i8*, i8** %1, align 8
  %32 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = call i32 @ereport(i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %28, %24, %14
  %35 = load i8*, i8** %1, align 8
  %36 = load i32, i32* @O_CREAT, align 4
  %37 = load i32, i32* @O_EXCL, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @O_WRONLY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @PG_BINARY, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @OpenTransientFile(i8* %35, i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* @PANIC, align 4
  %48 = call i32 (...) @errcode_for_file_access()
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = call i32 @ereport(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %46, %34
  store i64 0, i64* @errno, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @write(i32 %53, %struct.TYPE_13__* %5, i32 16)
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 16
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i64, i64* @errno, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @ENOSPC, align 8
  store i64 %61, i64* @errno, align 8
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* @PANIC, align 4
  %64 = call i32 (...) @errcode_for_file_access()
  %65 = load i8*, i8** %1, align 8
  %66 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = call i32 @ereport(i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %52
  %69 = bitcast %struct.TYPE_13__* %6 to { i64, i32 }*
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @COMP_CRC32C(i64 %71, i32 %73, %struct.TYPE_13__* %5, i32 16)
  %75 = load i32*, i32** @ReplicationOriginLock, align 8
  %76 = load i32, i32* @LW_SHARED, align 4
  %77 = call i32 @LWLockAcquire(i32* %75, i32 %76)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %137, %68
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @max_replication_slots, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %140

82:                                               ; preds = %78
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** @replication_states, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i64 %85
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %8, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @InvalidRepOriginId, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %137

93:                                               ; preds = %82
  %94 = call i32 @memset(%struct.TYPE_13__* %7, i32 0, i32 16)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load i32, i32* @LW_SHARED, align 4
  %98 = call i32 @LWLockAcquire(i32* %96, i32 %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %9, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = call i32 @LWLockRelease(i32* %111)
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @XLogFlush(i32 %113)
  store i64 0, i64* @errno, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @write(i32 %115, %struct.TYPE_13__* %7, i32 16)
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %117, 16
  br i1 %118, label %119, label %130

119:                                              ; preds = %93
  %120 = load i64, i64* @errno, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i64, i64* @ENOSPC, align 8
  store i64 %123, i64* @errno, align 8
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i32, i32* @PANIC, align 4
  %126 = call i32 (...) @errcode_for_file_access()
  %127 = load i8*, i8** %1, align 8
  %128 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %127)
  %129 = call i32 @ereport(i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %124, %93
  %131 = bitcast %struct.TYPE_13__* %6 to { i64, i32 }*
  %132 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %131, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @COMP_CRC32C(i64 %133, i32 %135, %struct.TYPE_13__* %7, i32 16)
  br label %137

137:                                              ; preds = %130, %92
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %78

140:                                              ; preds = %78
  %141 = load i32*, i32** @ReplicationOriginLock, align 8
  %142 = call i32 @LWLockRelease(i32* %141)
  %143 = bitcast %struct.TYPE_13__* %6 to { i64, i32 }*
  %144 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %143, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @FIN_CRC32C(i64 %145, i32 %147)
  store i64 0, i64* @errno, align 8
  %149 = load i32, i32* %3, align 4
  %150 = call i32 @write(i32 %149, %struct.TYPE_13__* %6, i32 16)
  %151 = sext i32 %150 to i64
  %152 = icmp ne i64 %151, 16
  br i1 %152, label %153, label %164

153:                                              ; preds = %140
  %154 = load i64, i64* @errno, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i64, i64* @ENOSPC, align 8
  store i64 %157, i64* @errno, align 8
  br label %158

158:                                              ; preds = %156, %153
  %159 = load i32, i32* @PANIC, align 4
  %160 = call i32 (...) @errcode_for_file_access()
  %161 = load i8*, i8** %1, align 8
  %162 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %161)
  %163 = call i32 @ereport(i32 %159, i32 %162)
  br label %164

164:                                              ; preds = %158, %140
  %165 = load i32, i32* %3, align 4
  %166 = call i64 @CloseTransientFile(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  %169 = load i32, i32* @PANIC, align 4
  %170 = call i32 (...) @errcode_for_file_access()
  %171 = load i8*, i8** %1, align 8
  %172 = call i32 @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %171)
  %173 = call i32 @ereport(i32 %169, i32 %172)
  br label %174

174:                                              ; preds = %168, %164
  %175 = load i8*, i8** %1, align 8
  %176 = load i8*, i8** %2, align 8
  %177 = load i32, i32* @PANIC, align 4
  %178 = call i32 @durable_rename(i8* %175, i8* %176, i32 %177)
  br label %179

179:                                              ; preds = %174, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @INIT_CRC32C(i64, i32) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @write(i32, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @COMP_CRC32C(i64, i32, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @LWLockAcquire(i32*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #2

declare dso_local i32 @LWLockRelease(i32*) #2

declare dso_local i32 @XLogFlush(i32) #2

declare dso_local i32 @FIN_CRC32C(i64, i32) #2

declare dso_local i64 @CloseTransientFile(i32) #2

declare dso_local i32 @durable_rename(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

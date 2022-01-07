; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_SaveSlotToPath.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_slot.c_SaveSlotToPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/state.tmp\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s/state\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@SLOT_MAGIC = common dso_local global i32 0, align 4
@SLOT_VERSION = common dso_local global i32 0, align 4
@ReplicationSlotOnDiskV2Size = common dso_local global i32 0, align 4
@SnapBuildOnDiskNotChecksummedSize = common dso_local global i32 0, align 4
@SnapBuildOnDiskChecksummedSize = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@WAIT_EVENT_REPLICATION_SLOT_WRITE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"could not write to file \22%s\22: %m\00", align 1
@WAIT_EVENT_REPLICATION_SLOT_SYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"could not fsync file \22%s\22: %m\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"could not rename file \22%s\22 to \22%s\22: %m\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"pg_replslot\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32)* @SaveSlotToPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SaveSlotToPath(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* @MAXPGPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @MAXPGPATH, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = call i32 @SpinLockAcquire(i32* %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = call i32 @SpinLockRelease(i32* %32)
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %175

37:                                               ; preds = %3
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* @LW_EXCLUSIVE, align 4
  %41 = call i32 @LWLockAcquire(i32* %39, i32 %40)
  %42 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 20)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @O_CREAT, align 4
  %48 = load i32, i32* @O_EXCL, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @O_WRONLY, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @PG_BINARY, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @OpenTransientFile(i8* %19, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %37
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (...) @errcode_for_file_access()
  %60 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %61 = call i32 @ereport(i32 %58, i32 %60)
  store i32 1, i32* %13, align 4
  br label %175

62:                                               ; preds = %37
  %63 = load i32, i32* @SLOT_MAGIC, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 4
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @INIT_CRC32C(i32 %66)
  %68 = load i32, i32* @SLOT_VERSION, align 4
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @ReplicationSlotOnDiskV2Size, align 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  %74 = call i32 @SpinLockAcquire(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = call i32 @memcpy(i32* %75, i32* %77, i32 4)
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = call i32 @SpinLockRelease(i32* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = bitcast %struct.TYPE_6__* %11 to i8*
  %85 = load i32, i32* @SnapBuildOnDiskNotChecksummedSize, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i32, i32* @SnapBuildOnDiskChecksummedSize, align 4
  %89 = call i32 @COMP_CRC32C(i32 %83, i8* %87, i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @FIN_CRC32C(i32 %91)
  store i32 0, i32* @errno, align 4
  %93 = load i32, i32* @WAIT_EVENT_REPLICATION_SLOT_WRITE, align 4
  %94 = call i32 @pgstat_report_wait_start(i32 %93)
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @write(i32 %95, %struct.TYPE_6__* %11, i32 20)
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 20
  br i1 %98, label %99, label %116

99:                                               ; preds = %62
  %100 = load i32, i32* @errno, align 4
  store i32 %100, i32* %14, align 4
  %101 = call i32 (...) @pgstat_report_wait_end()
  %102 = load i32, i32* %10, align 4
  %103 = call i64 @CloseTransientFile(i32 %102)
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* %14, align 4
  br label %110

108:                                              ; preds = %99
  %109 = load i32, i32* @ENOSPC, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* @errno, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (...) @errcode_for_file_access()
  %114 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %19)
  %115 = call i32 @ereport(i32 %112, i32 %114)
  store i32 1, i32* %13, align 4
  br label %175

116:                                              ; preds = %62
  %117 = call i32 (...) @pgstat_report_wait_end()
  %118 = load i32, i32* @WAIT_EVENT_REPLICATION_SLOT_SYNC, align 4
  %119 = call i32 @pgstat_report_wait_start(i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @pg_fsync(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %116
  %124 = load i32, i32* @errno, align 4
  store i32 %124, i32* %15, align 4
  %125 = call i32 (...) @pgstat_report_wait_end()
  %126 = load i32, i32* %10, align 4
  %127 = call i64 @CloseTransientFile(i32 %126)
  %128 = load i32, i32* %15, align 4
  store i32 %128, i32* @errno, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 (...) @errcode_for_file_access()
  %131 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %132 = call i32 @ereport(i32 %129, i32 %131)
  store i32 1, i32* %13, align 4
  br label %175

133:                                              ; preds = %116
  %134 = call i32 (...) @pgstat_report_wait_end()
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @CloseTransientFile(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (...) @errcode_for_file_access()
  %141 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %19)
  %142 = call i32 @ereport(i32 %139, i32 %141)
  store i32 1, i32* %13, align 4
  br label %175

143:                                              ; preds = %133
  %144 = call i64 @rename(i8* %19, i8* %22)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %6, align 4
  %148 = call i32 (...) @errcode_for_file_access()
  %149 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* %19, i8* %22)
  %150 = call i32 @ereport(i32 %147, i32 %149)
  store i32 1, i32* %13, align 4
  br label %175

151:                                              ; preds = %143
  %152 = call i32 (...) @START_CRIT_SECTION()
  %153 = call i32 @fsync_fname(i8* %22, i32 0)
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @fsync_fname(i8* %154, i32 1)
  %156 = call i32 @fsync_fname(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 1)
  %157 = call i32 (...) @END_CRIT_SECTION()
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = call i32 @SpinLockAcquire(i32* %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %151
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  store i32 0, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %151
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = call i32 @SpinLockRelease(i32* %170)
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 2
  %174 = call i32 @LWLockRelease(i32* %173)
  store i32 0, i32* %13, align 4
  br label %175

175:                                              ; preds = %168, %146, %138, %123, %110, %57, %36
  %176 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %176)
  %177 = load i32, i32* %13, align 4
  switch i32 %177, label %179 [
    i32 0, label %178
    i32 1, label %178
  ]

178:                                              ; preds = %175, %175
  ret void

179:                                              ; preds = %175
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SpinLockAcquire(i32*) #2

declare dso_local i32 @SpinLockRelease(i32*) #2

declare dso_local i32 @LWLockAcquire(i32*, i32) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @INIT_CRC32C(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @COMP_CRC32C(i32, i8*, i32) #2

declare dso_local i32 @FIN_CRC32C(i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @write(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i64 @CloseTransientFile(i32) #2

declare dso_local i64 @pg_fsync(i32) #2

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i32 @START_CRIT_SECTION(...) #2

declare dso_local i32 @fsync_fname(i8*, i32) #2

declare dso_local i32 @END_CRIT_SECTION(...) #2

declare dso_local i32 @LWLockRelease(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_do_pg_stop_backup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlog.c_do_pg_stop_backup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.stat = type { i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@MAXFNAMELEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"recovery is in progress\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"WAL control functions cannot be executed during recovery.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"WAL level not sufficient for making an online backup\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"wal_level must be set to \22replica\22 or \22logical\22 at server start.\00", align 1
@XLogCtl = common dso_local global %struct.TYPE_5__* null, align 8
@EXCLUSIVE_BACKUP_IN_PROGRESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"exclusive backup not in progress\00", align 1
@EXCLUSIVE_BACKUP_STOPPING = common dso_local global i64 0, align 8
@pg_stop_backup_callback = common dso_local global i32 0, align 4
@BACKUP_LABEL_FILE = common dso_local global i8* null, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"could not stat file \22%s\22: %m\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"a backup is not in progress\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@TABLESPACE_MAP = common dso_local global i8* null, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@EXCLUSIVE_BACKUP_NONE = common dso_local global i64 0, align 8
@SESSION_BACKUP_NONE = common dso_local global i32 0, align 4
@sessionBackupState = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"START WAL LOCATION: %X/%X (file %24s)%c\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid data in file \22%s\22\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"BACKUP FROM:\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"BACKUP FROM: %19s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"the standby was promoted during online backup\00", align 1
@.str.15 = private unnamed_addr constant [108 x i8] c"This means that the backup being taken is corrupt and should not be used. Try taking another online backup.\00", align 1
@.str.16 = private unnamed_addr constant [74 x i8] c"WAL generated with full_page_writes=off was replayed during online backup\00", align 1
@.str.17 = private unnamed_addr constant [184 x i8] c"This means that the backup being taken on the standby is corrupt and should not be used. Enable full_page_writes and run CHECKPOINT on the master, and then try an online backup again.\00", align 1
@ControlFileLock = common dso_local global i32 0, align 4
@LW_SHARED = common dso_local global i32 0, align 4
@ControlFile = common dso_local global %struct.TYPE_6__* null, align 8
@RM_XLOG_ID = common dso_local global i32 0, align 4
@XLOG_BACKUP_END = common dso_local global i32 0, align 4
@ThisTimeLineID = common dso_local global i32 0, align 4
@wal_segment_size = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"%Y-%m-%d %H:%M:%S %Z\00", align 1
@log_timezone = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"could not create file \22%s\22: %m\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"START WAL LOCATION: %X/%X (file %s)\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"STOP WAL LOCATION: %X/%X (file %s)\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"STOP TIME: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"STOP TIMELINE: %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"could not write file \22%s\22: %m\00", align 1
@NOTICE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [67 x i8] c"base backup done, waiting for required WAL segments to be archived\00", align 1
@WARNING = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [80 x i8] c"still waiting for all required WAL segments to be archived (%d seconds elapsed)\00", align 1
@.str.29 = private unnamed_addr constant [164 x i8] c"Check that your archive_command is executing properly.  You can safely cancel this backup, but the database backup will not be usable without all the WAL segments.\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"all required WAL segments have been archived\00", align 1
@.str.31 = private unnamed_addr constant [131 x i8] c"WAL archiving is not enabled; you must ensure that all required WAL segments are copied through other means to complete the backup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @do_pg_stop_backup(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [20 x i8], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.stat, align 4
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %38 = load i32, i32* @MAXPGPATH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = load i32, i32* @MAXFNAMELEN, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %16, align 8
  %45 = load i32, i32* @MAXFNAMELEN, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %17, align 8
  %48 = load i32, i32* @MAXFNAMELEN, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %18, align 8
  %51 = load i32, i32* @MAXFNAMELEN, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i8, i64 %52, align 16
  store i64 %52, i64* %19, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %54 = call i32 (...) @RecoveryInProgress()
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @errhint(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %60, %57, %3
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = call i32 (...) @XLogIsNeeded()
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @ERROR, align 4
  %75 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %76 = call i32 @errcode(i32 %75)
  %77 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %78 = call i32 @errhint(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %79 = call i32 @ereport(i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %73, %70, %67
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %182

83:                                               ; preds = %80
  %84 = call i32 (...) @WALInsertLockAcquireExclusive()
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @EXCLUSIVE_BACKUP_IN_PROGRESS, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %83
  %92 = call i32 (...) @WALInsertLockRelease()
  %93 = load i32, i32* @ERROR, align 4
  %94 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %95 = call i32 @errcode(i32 %94)
  %96 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 @ereport(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %91, %83
  %99 = load i64, i64* @EXCLUSIVE_BACKUP_STOPPING, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  %103 = call i32 (...) @WALInsertLockRelease()
  %104 = load i32, i32* @pg_stop_backup_callback, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i64 @BoolGetDatum(i32 %105)
  %107 = trunc i64 %106 to i32
  %108 = call i32 @PG_ENSURE_ERROR_CLEANUP(i32 %104, i32 %107)
  %109 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %110 = call i64 @stat(i8* %109, %struct.stat* %32)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %128

112:                                              ; preds = %98
  %113 = load i64, i64* @errno, align 8
  %114 = load i64, i64* @ENOENT, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* @ERROR, align 4
  %118 = call i32 (...) @errcode_for_file_access()
  %119 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %120 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  %121 = call i32 @ereport(i32 %117, i32 %120)
  br label %122

122:                                              ; preds = %116, %112
  %123 = load i32, i32* @ERROR, align 4
  %124 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %125 = call i32 @errcode(i32 %124)
  %126 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %127 = call i32 @ereport(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %122, %98
  %129 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %130 = call i32* @AllocateFile(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %130, i32** %22, align 8
  %131 = load i32*, i32** %22, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* @ERROR, align 4
  %135 = call i32 (...) @errcode_for_file_access()
  %136 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %137 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %136)
  %138 = call i32 @ereport(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %133, %128
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  %143 = call i8* @palloc(i32 %142)
  store i8* %143, i8** %4, align 8
  %144 = load i8*, i8** %4, align 8
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %22, align 8
  %148 = call i32 @fread(i8* %144, i32 %146, i32 1, i32* %147)
  store i32 %148, i32* %33, align 4
  %149 = load i8*, i8** %4, align 8
  %150 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8 0, i8* %153, align 1
  %154 = load i32, i32* %33, align 4
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %164, label %156

156:                                              ; preds = %139
  %157 = load i32*, i32** %22, align 8
  %158 = call i64 @ferror(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32*, i32** %22, align 8
  %162 = call i64 @FreeFile(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160, %156, %139
  %165 = load i32, i32* @ERROR, align 4
  %166 = call i32 (...) @errcode_for_file_access()
  %167 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %168 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %167)
  %169 = call i32 @ereport(i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %164, %160
  %171 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %172 = load i32, i32* @ERROR, align 4
  %173 = call i32 @durable_unlink(i8* %171, i32 %172)
  %174 = load i8*, i8** @TABLESPACE_MAP, align 8
  %175 = load i32, i32* @DEBUG1, align 4
  %176 = call i32 @durable_unlink(i8* %174, i32 %175)
  %177 = load i32, i32* @pg_stop_backup_callback, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i64 @BoolGetDatum(i32 %178)
  %180 = trunc i64 %179 to i32
  %181 = call i32 @PG_END_ENSURE_ERROR_CLEANUP(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %170, %80
  %183 = call i32 (...) @WALInsertLockAcquireExclusive()
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load i64, i64* @EXCLUSIVE_BACKUP_NONE, align 8
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  store i64 %187, i64* %190, align 8
  br label %204

191:                                              ; preds = %182
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @Assert(i32 %197)
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, -1
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %191, %186
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @EXCLUSIVE_BACKUP_NONE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %204
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 2
  store i32 0, i32* %220, align 8
  br label %221

221:                                              ; preds = %217, %211, %204
  %222 = load i32, i32* @SESSION_BACKUP_NONE, align 4
  store i32 %222, i32* @sessionBackupState, align 4
  %223 = call i32 (...) @WALInsertLockRelease()
  %224 = load i8*, i8** %4, align 8
  %225 = call i32 (i8*, i8*, ...) @sscanf(i8* %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32* %30, i32* %31, i8* %44, i8* %24)
  %226 = icmp ne i32 %225, 4
  br i1 %226, label %231, label %227

227:                                              ; preds = %221
  %228 = load i8, i8* %24, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 10
  br i1 %230, label %231, label %238

231:                                              ; preds = %227, %221
  %232 = load i32, i32* @ERROR, align 4
  %233 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %234 = call i32 @errcode(i32 %233)
  %235 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %236 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %235)
  %237 = call i32 @ereport(i32 %232, i32 %236)
  br label %238

238:                                              ; preds = %231, %227
  %239 = load i32, i32* %30, align 4
  %240 = shl i32 %239, 32
  %241 = load i32, i32* %31, align 4
  %242 = or i32 %240, %241
  %243 = sext i32 %242 to i64
  store i64 %243, i64* %9, align 8
  %244 = load i8*, i8** %4, align 8
  %245 = call i8* @strchr(i8* %244, i8 signext 10)
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  store i8* %246, i8** %28, align 8
  %247 = load i8*, i8** %28, align 8
  %248 = call i8* @strstr(i8* %247, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  store i8* %248, i8** %29, align 8
  %249 = load i8*, i8** %29, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %256

251:                                              ; preds = %238
  %252 = load i8*, i8** %29, align 8
  %253 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %254 = call i32 (i8*, i8*, ...) @sscanf(i8* %252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %253)
  %255 = icmp ne i32 %254, 1
  br i1 %255, label %256, label %263

256:                                              ; preds = %251, %238
  %257 = load i32, i32* @ERROR, align 4
  %258 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %259 = call i32 @errcode(i32 %258)
  %260 = load i8*, i8** @BACKUP_LABEL_FILE, align 8
  %261 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %260)
  %262 = call i32 @ereport(i32 %257, i32 %261)
  br label %263

263:                                              ; preds = %256, %251
  %264 = getelementptr inbounds [20 x i8], [20 x i8]* %20, i64 0, i64 0
  %265 = call i64 @strcmp(i8* %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %263
  %268 = load i32, i32* %8, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %277, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* @ERROR, align 4
  %272 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %273 = call i32 @errcode(i32 %272)
  %274 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0))
  %275 = call i32 @errhint(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.15, i64 0, i64 0))
  %276 = call i32 @ereport(i32 %271, i32 %275)
  br label %277

277:                                              ; preds = %270, %267, %263
  %278 = load i32, i32* %8, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %312

280:                                              ; preds = %277
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 1
  %283 = call i32 @SpinLockAcquire(i32* %282)
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  store i64 %286, i64* %34, align 8
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** @XLogCtl, align 8
  %288 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i32 0, i32 1
  %289 = call i32 @SpinLockRelease(i32* %288)
  %290 = load i64, i64* %9, align 8
  %291 = load i64, i64* %34, align 8
  %292 = icmp sle i64 %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %280
  %294 = load i32, i32* @ERROR, align 4
  %295 = load i32, i32* @ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE, align 4
  %296 = call i32 @errcode(i32 %295)
  %297 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.16, i64 0, i64 0))
  %298 = call i32 @errhint(i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.17, i64 0, i64 0))
  %299 = call i32 @ereport(i32 %294, i32 %298)
  br label %300

300:                                              ; preds = %293, %280
  %301 = load i32, i32* @ControlFileLock, align 4
  %302 = load i32, i32* @LW_SHARED, align 4
  %303 = call i32 @LWLockAcquire(i32 %301, i32 %302)
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %10, align 8
  %307 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ControlFile, align 8
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  store i32 %309, i32* %11, align 4
  %310 = load i32, i32* @ControlFileLock, align 4
  %311 = call i32 @LWLockRelease(i32 %310)
  br label %393

312:                                              ; preds = %277
  %313 = call i32 (...) @XLogBeginInsert()
  %314 = bitcast i64* %9 to i8*
  %315 = call i32 @XLogRegisterData(i8* %314, i32 8)
  %316 = load i32, i32* @RM_XLOG_ID, align 4
  %317 = load i32, i32* @XLOG_BACKUP_END, align 4
  %318 = call i64 @XLogInsert(i32 %316, i32 %317)
  store i64 %318, i64* %10, align 8
  %319 = load i32, i32* @ThisTimeLineID, align 4
  store i32 %319, i32* %11, align 4
  %320 = call i32 @RequestXLogSwitch(i32 0)
  %321 = load i64, i64* %10, align 8
  %322 = load i32, i32* %21, align 4
  %323 = load i32, i32* @wal_segment_size, align 4
  %324 = call i32 @XLByteToPrevSeg(i64 %321, i32 %322, i32 %323)
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %21, align 4
  %327 = load i32, i32* @wal_segment_size, align 4
  %328 = call i32 @XLogFileName(i8* %47, i32 %325, i32 %326, i32 %327)
  %329 = call i64 @time(i32* null)
  store i64 %329, i64* %12, align 8
  %330 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %331 = load i32, i32* @log_timezone, align 4
  %332 = call i32 @pg_localtime(i64* %12, i32 %331)
  %333 = call i32 @pg_strftime(i8* %330, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 %332)
  %334 = load i64, i64* %9, align 8
  %335 = load i32, i32* %21, align 4
  %336 = load i32, i32* @wal_segment_size, align 4
  %337 = call i32 @XLByteToSeg(i64 %334, i32 %335, i32 %336)
  %338 = load i32, i32* %11, align 4
  %339 = load i32, i32* %21, align 4
  %340 = load i64, i64* %9, align 8
  %341 = load i32, i32* @wal_segment_size, align 4
  %342 = call i32 @BackupHistoryFilePath(i8* %41, i32 %338, i32 %339, i64 %340, i32 %341)
  %343 = call i32* @AllocateFile(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store i32* %343, i32** %23, align 8
  %344 = load i32*, i32** %23, align 8
  %345 = icmp ne i32* %344, null
  br i1 %345, label %351, label %346

346:                                              ; preds = %312
  %347 = load i32, i32* @ERROR, align 4
  %348 = call i32 (...) @errcode_for_file_access()
  %349 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %41)
  %350 = call i32 @ereport(i32 %347, i32 %349)
  br label %351

351:                                              ; preds = %346, %312
  %352 = load i32*, i32** %23, align 8
  %353 = load i64, i64* %9, align 8
  %354 = ashr i64 %353, 32
  %355 = trunc i64 %354 to i32
  %356 = load i64, i64* %9, align 8
  %357 = trunc i64 %356 to i32
  %358 = call i32 (i32*, i8*, ...) @fprintf(i32* %352, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %355, i32 %357, i8* %44)
  %359 = load i32*, i32** %23, align 8
  %360 = load i64, i64* %10, align 8
  %361 = ashr i64 %360, 32
  %362 = trunc i64 %361 to i32
  %363 = load i64, i64* %10, align 8
  %364 = trunc i64 %363 to i32
  %365 = call i32 (i32*, i8*, ...) @fprintf(i32* %359, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i32 %362, i32 %364, i8* %47)
  %366 = load i32*, i32** %23, align 8
  %367 = load i8*, i8** %28, align 8
  %368 = call i32 (i32*, i8*, ...) @fprintf(i32* %366, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i8* %367)
  %369 = load i32*, i32** %23, align 8
  %370 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %371 = call i32 (i32*, i8*, ...) @fprintf(i32* %369, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* %370)
  %372 = load i32*, i32** %23, align 8
  %373 = load i32, i32* %11, align 4
  %374 = call i32 (i32*, i8*, ...) @fprintf(i32* %372, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i32 %373)
  %375 = load i32*, i32** %23, align 8
  %376 = call i64 @fflush(i32* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %351
  %379 = load i32*, i32** %23, align 8
  %380 = call i64 @ferror(i32* %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %386, label %382

382:                                              ; preds = %378
  %383 = load i32*, i32** %23, align 8
  %384 = call i64 @FreeFile(i32* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %382, %378, %351
  %387 = load i32, i32* @ERROR, align 4
  %388 = call i32 (...) @errcode_for_file_access()
  %389 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i64 0, i64 0), i8* %41)
  %390 = call i32 @ereport(i32 %387, i32 %389)
  br label %391

391:                                              ; preds = %386, %382
  %392 = call i32 (...) @CleanupBackupHistory()
  br label %393

393:                                              ; preds = %391, %300
  %394 = load i32, i32* %5, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %464

396:                                              ; preds = %393
  %397 = load i32, i32* %8, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %402, label %399

399:                                              ; preds = %396
  %400 = call i64 (...) @XLogArchivingActive()
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %408, label %402

402:                                              ; preds = %399, %396
  %403 = load i32, i32* %8, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %464

405:                                              ; preds = %402
  %406 = call i64 (...) @XLogArchivingAlways()
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %464

408:                                              ; preds = %405, %399
  %409 = load i64, i64* %10, align 8
  %410 = load i32, i32* %21, align 4
  %411 = load i32, i32* @wal_segment_size, align 4
  %412 = call i32 @XLByteToPrevSeg(i64 %409, i32 %410, i32 %411)
  %413 = load i32, i32* %11, align 4
  %414 = load i32, i32* %21, align 4
  %415 = load i32, i32* @wal_segment_size, align 4
  %416 = call i32 @XLogFileName(i8* %50, i32 %413, i32 %414, i32 %415)
  %417 = load i64, i64* %9, align 8
  %418 = load i32, i32* %21, align 4
  %419 = load i32, i32* @wal_segment_size, align 4
  %420 = call i32 @XLByteToSeg(i64 %417, i32 %418, i32 %419)
  %421 = load i32, i32* %11, align 4
  %422 = load i32, i32* %21, align 4
  %423 = load i64, i64* %9, align 8
  %424 = load i32, i32* @wal_segment_size, align 4
  %425 = call i32 @BackupHistoryFileName(i8* %53, i32 %421, i32 %422, i64 %423, i32 %424)
  store i32 60, i32* %25, align 4
  store i32 0, i32* %26, align 4
  br label %426

426:                                              ; preds = %459, %408
  %427 = call i64 @XLogArchiveIsBusy(i8* %50)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %432, label %429

429:                                              ; preds = %426
  %430 = call i64 @XLogArchiveIsBusy(i8* %53)
  %431 = icmp ne i64 %430, 0
  br label %432

432:                                              ; preds = %429, %426
  %433 = phi i1 [ true, %426 ], [ %431, %429 ]
  br i1 %433, label %434, label %460

434:                                              ; preds = %432
  %435 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %436 = load i32, i32* %27, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %445, label %438

438:                                              ; preds = %434
  %439 = load i32, i32* %26, align 4
  %440 = icmp sgt i32 %439, 5
  br i1 %440, label %441, label %445

441:                                              ; preds = %438
  %442 = load i32, i32* @NOTICE, align 4
  %443 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0))
  %444 = call i32 @ereport(i32 %442, i32 %443)
  store i32 1, i32* %27, align 4
  br label %445

445:                                              ; preds = %441, %438, %434
  %446 = call i32 @pg_usleep(i64 1000000)
  %447 = load i32, i32* %26, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %26, align 4
  %449 = load i32, i32* %25, align 4
  %450 = icmp sge i32 %448, %449
  br i1 %450, label %451, label %459

451:                                              ; preds = %445
  %452 = load i32, i32* %25, align 4
  %453 = mul nsw i32 %452, 2
  store i32 %453, i32* %25, align 4
  %454 = load i32, i32* @WARNING, align 4
  %455 = load i32, i32* %26, align 4
  %456 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.28, i64 0, i64 0), i32 %455)
  %457 = call i32 @errhint(i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.29, i64 0, i64 0))
  %458 = call i32 @ereport(i32 %454, i32 %457)
  br label %459

459:                                              ; preds = %451, %445
  br label %426

460:                                              ; preds = %432
  %461 = load i32, i32* @NOTICE, align 4
  %462 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %463 = call i32 @ereport(i32 %461, i32 %462)
  br label %472

464:                                              ; preds = %405, %402, %393
  %465 = load i32, i32* %5, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %464
  %468 = load i32, i32* @NOTICE, align 4
  %469 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([131 x i8], [131 x i8]* @.str.31, i64 0, i64 0))
  %470 = call i32 @ereport(i32 %468, i32 %469)
  br label %471

471:                                              ; preds = %467, %464
  br label %472

472:                                              ; preds = %471, %460
  %473 = load i32*, i32** %6, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load i32, i32* %11, align 4
  %477 = load i32*, i32** %6, align 8
  store i32 %476, i32* %477, align 4
  br label %478

478:                                              ; preds = %475, %472
  %479 = load i64, i64* %10, align 8
  %480 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %480)
  ret i64 %479
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RecoveryInProgress(...) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i32 @errhint(i8*) #2

declare dso_local i32 @XLogIsNeeded(...) #2

declare dso_local i32 @WALInsertLockAcquireExclusive(...) #2

declare dso_local i32 @WALInsertLockRelease(...) #2

declare dso_local i32 @PG_ENSURE_ERROR_CLEANUP(i32, i32) #2

declare dso_local i64 @BoolGetDatum(i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32* @AllocateFile(i8*, i8*) #2

declare dso_local i8* @palloc(i32) #2

declare dso_local i32 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i64 @FreeFile(i32*) #2

declare dso_local i32 @durable_unlink(i8*, i32) #2

declare dso_local i32 @PG_END_ENSURE_ERROR_CLEANUP(i32, i32) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @sscanf(i8*, i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @SpinLockAcquire(i32*) #2

declare dso_local i32 @SpinLockRelease(i32*) #2

declare dso_local i32 @LWLockAcquire(i32, i32) #2

declare dso_local i32 @LWLockRelease(i32) #2

declare dso_local i32 @XLogBeginInsert(...) #2

declare dso_local i32 @XLogRegisterData(i8*, i32) #2

declare dso_local i64 @XLogInsert(i32, i32) #2

declare dso_local i32 @RequestXLogSwitch(i32) #2

declare dso_local i32 @XLByteToPrevSeg(i64, i32, i32) #2

declare dso_local i32 @XLogFileName(i8*, i32, i32, i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32 @pg_strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @pg_localtime(i64*, i32) #2

declare dso_local i32 @XLByteToSeg(i64, i32, i32) #2

declare dso_local i32 @BackupHistoryFilePath(i8*, i32, i32, i64, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i64 @fflush(i32*) #2

declare dso_local i32 @CleanupBackupHistory(...) #2

declare dso_local i64 @XLogArchivingActive(...) #2

declare dso_local i64 @XLogArchivingAlways(...) #2

declare dso_local i32 @BackupHistoryFileName(i8*, i32, i32, i64, i32) #2

declare dso_local i64 @XLogArchiveIsBusy(i8*) #2

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #2

declare dso_local i32 @pg_usleep(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

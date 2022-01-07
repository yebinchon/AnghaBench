; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_InternalIpcMemoryCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_InternalIpcMemoryCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@IPCProtection = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"shmctl(%d, %d, 0) failed: %m\00", align 1
@FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not create shared memory segment: %m\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed system call was shmget(key=%lu, size=%zu, 0%o).\00", align 1
@.str.3 = private unnamed_addr constant [275 x i8] c"This error usually means that PostgreSQL's request for a shared memory segment exceeded your kernel's SHMMAX parameter, or possibly that it is less than your kernel's SHMMIN parameter.\0AThe PostgreSQL documentation contains more information about shared memory configuration.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [272 x i8] c"This error usually means that PostgreSQL's request for a shared memory segment exceeded your kernel's SHMALL parameter.  You might need to reconfigure the kernel with larger SHMALL.\0AThe PostgreSQL documentation contains more information about shared memory configuration.\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [367 x i8] c"This error does *not* mean that you have run out of disk space.  It occurs either if all available shared memory IDs have been taken, in which case you need to raise the SHMMNI parameter in your kernel, or because the system's overall limit for shared memory has been reached.\0AThe PostgreSQL documentation contains more information about shared memory configuration.\00", align 1
@IpcMemoryDelete = common dso_local global i32 0, align 4
@PG_SHMAT_FLAGS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"shmat(id=%d, addr=%p, flags=0x%x) failed: %m\00", align 1
@IpcMemoryDetach = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"%9lu %9lu\00", align 1
@LOCK_FILE_LINE_SHMEM_KEY = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i32)* @InternalIpcMemoryCreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @InternalIpcMemoryCreate(i64 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IPC_CREAT, align 4
  %14 = load i32, i32* @IPC_EXCL, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IPCProtection, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @shmget(i64 %11, i32 %12, i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %107

21:                                               ; preds = %2
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @EEXIST, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @EACCES, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  store i8* null, i8** %3, align 8
  br label %138

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = load i32, i32* @IPC_CREAT, align 4
  %38 = load i32, i32* @IPC_EXCL, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @IPCProtection, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @shmget(i64 %36, i32 0, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = load i32, i32* @errno, align 4
  %47 = load i32, i32* @EEXIST, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @EACCES, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45
  store i8* null, i8** %3, align 8
  br label %138

54:                                               ; preds = %49
  br label %69

55:                                               ; preds = %35
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* @IPC_RMID, align 4
  %58 = call i64 @shmctl(i64 %56, i32 %57, i32* null)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* @LOG, align 4
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @IPC_RMID, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 (i32, i8*, i32, i8*, ...) @elog(i32 %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %66)
  br label %68

68:                                               ; preds = %60, %55
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %31
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* @errno, align 4
  %72 = load i32, i32* @FATAL, align 4
  %73 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @IPC_CREAT, align 4
  %77 = load i32, i32* @IPC_EXCL, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @IPCProtection, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @errdetail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i64 %74, i32 %75, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = call i32 @errhint(i8* getelementptr inbounds ([275 x i8], [275 x i8]* @.str.3, i64 0, i64 0))
  br label %88

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @errhint(i8* getelementptr inbounds ([272 x i8], [272 x i8]* @.str.4, i64 0, i64 0))
  br label %96

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 @errhint(i8* getelementptr inbounds ([367 x i8], [367 x i8]* @.str.5, i64 0, i64 0))
  br label %104

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %101
  %105 = phi i32 [ %102, %101 ], [ 0, %103 ]
  %106 = call i32 @ereport(i32 %72, i32 %105)
  br label %107

107:                                              ; preds = %104, %2
  %108 = load i32, i32* @IpcMemoryDelete, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @Int32GetDatum(i64 %109)
  %111 = call i32 @on_shmem_exit(i32 %108, i32 %110)
  %112 = load i64, i64* %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* @PG_SHMAT_FLAGS, align 4
  %115 = call i8* @shmat(i64 %112, i8* %113, i32 %114)
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = icmp eq i8* %116, inttoptr (i64 -1 to i8*)
  br i1 %117, label %118, label %125

118:                                              ; preds = %107
  %119 = load i32, i32* @FATAL, align 4
  %120 = load i64, i64* %6, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* @PG_SHMAT_FLAGS, align 4
  %124 = call i32 (i32, i8*, i32, i8*, ...) @elog(i32 %119, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %121, i8* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %107
  %126 = load i32, i32* @IpcMemoryDetach, align 4
  %127 = load i8*, i8** %8, align 8
  %128 = call i32 @PointerGetDatum(i8* %127)
  %129 = call i32 @on_shmem_exit(i32 %126, i32 %128)
  %130 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %131 = load i64, i64* %4, align 8
  %132 = load i64, i64* %6, align 8
  %133 = call i32 @sprintf(i8* %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %131, i64 %132)
  %134 = load i32, i32* @LOCK_FILE_LINE_SHMEM_KEY, align 4
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %136 = call i32 @AddToDataDirLockFile(i32 %134, i8* %135)
  %137 = load i8*, i8** %8, align 8
  store i8* %137, i8** %3, align 8
  br label %138

138:                                              ; preds = %125, %53, %30
  %139 = load i8*, i8** %3, align 8
  ret i8* %139
}

declare dso_local i64 @shmget(i64, i32, i32) #1

declare dso_local i64 @shmctl(i64, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @errdetail(i8*, i64, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i32 @Int32GetDatum(i64) #1

declare dso_local i8* @shmat(i64, i8*, i32) #1

declare dso_local i32 @PointerGetDatum(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, i64) #1

declare dso_local i32 @AddToDataDirLockFile(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

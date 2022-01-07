; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_PGSharedMemoryCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_PGSharedMemoryCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i8*, i64, i32, i64, i32, i32 }
%struct.stat = type { i64, i32 }

@DataDir = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"could not stat data directory \22%s\22: %m\00", align 1
@huge_pages = common dso_local global i64 0, align 8
@HUGE_PAGES_ON = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_FEATURE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"huge pages not supported on this platform\00", align 1
@shared_memory_type = common dso_local global i64 0, align 8
@SHMEM_TYPE_MMAP = common dso_local global i64 0, align 8
@AnonymousShmem = common dso_local global i32* null, align 8
@AnonymousShmemSize = common dso_local global i8* null, align 8
@AnonymousShmemDetach = common dso_local global i32 0, align 4
@ERRCODE_LOCK_FILE_EXISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"pre-existing shared memory block (key %lu, ID %lu) is still in use\00", align 1
@.str.3 = private unnamed_addr constant [72 x i8] c"Terminate any old server processes associated with data directory \22%s\22.\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"shared memory block (key %lu, ID %lu) deleted during startup\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"shmdt(%p) failed: %m\00", align 1
@PGShmemMagic = common dso_local global i32 0, align 4
@UsedShmemSegAddr = common dso_local global i8* null, align 8
@UsedShmemSegID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @PGSharedMemoryCreate(i8* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  %14 = load i32, i32* @DataDir, align 4
  %15 = call i64 @stat(i32 %14, %struct.stat* %9)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @FATAL, align 4
  %19 = call i32 (...) @errcode_for_file_access()
  %20 = load i32, i32* @DataDir, align 4
  %21 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @ereport(i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i64, i64* @huge_pages, align 8
  %25 = load i64, i64* @HUGE_PAGES_ON, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @ERROR, align 4
  %29 = load i32, i32* @ERRCODE_FEATURE_NOT_SUPPORTED, align 4
  %30 = call i32 @errcode(i32 %29)
  %31 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @ereport(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @MAXALIGN(i32 48)
  %36 = icmp ugt i8* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @Assert(i32 %37)
  %39 = load i64, i64* @shared_memory_type, align 8
  %40 = load i64, i64* @SHMEM_TYPE_MMAP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = call i32* @CreateAnonymousSegment(i8** %4)
  store i32* %43, i32** @AnonymousShmem, align 8
  %44 = load i8*, i8** %4, align 8
  store i8* %44, i8** @AnonymousShmemSize, align 8
  %45 = load i32, i32* @AnonymousShmemDetach, align 4
  %46 = call i32 @on_shmem_exit(i32 %45, i32 0)
  store i8* inttoptr (i64 48 to i8*), i8** %10, align 8
  br label %49

47:                                               ; preds = %33
  %48 = load i8*, i8** %4, align 8
  store i8* %48, i8** %10, align 8
  br label %49

49:                                               ; preds = %47, %42
  %50 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %118, %49
  %53 = load i64, i64* %6, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i8* @InternalIpcMemoryCreate(i64 %53, i8* %54)
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %119

59:                                               ; preds = %52
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @shmget(i64 %60, i32 48, i32 0)
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %12, align 8
  store i32 129, i32* %13, align 4
  br label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @PGSharedMemoryAttach(i64 %66, i32* null, %struct.TYPE_7__** %12)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %64
  %69 = load i32, i32* %13, align 4
  switch i32 %69, label %107 [
    i32 132, label %70
    i32 131, label %70
    i32 130, label %80
    i32 129, label %85
    i32 128, label %88
  ]

70:                                               ; preds = %68, %68
  %71 = load i32, i32* @FATAL, align 4
  %72 = load i32, i32* @ERRCODE_LOCK_FILE_EXISTS, align 4
  %73 = call i32 @errcode(i32 %72)
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %74, i64 %75)
  %77 = load i32, i32* @DataDir, align 4
  %78 = call i32 @errhint(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %77)
  %79 = call i32 @ereport(i32 %71, i32 %78)
  br label %107

80:                                               ; preds = %68
  %81 = load i32, i32* @LOG, align 4
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 (i32, i8*, ...) @elog(i32 %81, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %82, i64 %83)
  br label %107

85:                                               ; preds = %68
  %86 = load i64, i64* %6, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %107

88:                                               ; preds = %68
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @dsm_cleanup_using_control_segment(i64 %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i64, i64* %11, align 8
  %100 = load i32, i32* @IPC_RMID, align 4
  %101 = call i32 @shmctl(i64 %99, i32 %100, i32* null)
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i64, i64* %6, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %6, align 8
  br label %106

106:                                              ; preds = %103, %98
  br label %107

107:                                              ; preds = %68, %106, %85, %80, %70
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = icmp ne %struct.TYPE_7__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = call i64 @shmdt(%struct.TYPE_7__* %111)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* @LOG, align 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = call i32 (i32, i8*, ...) @elog(i32 %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_7__* %116)
  br label %118

118:                                              ; preds = %114, %110, %107
  br label %52

119:                                              ; preds = %58
  %120 = load i8*, i8** %7, align 8
  %121 = bitcast i8* %120 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %8, align 8
  %122 = call i32 (...) @getpid()
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @PGShmemMagic, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 4
  store i64 0, i64* %129, align 8
  %130 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i8*, i8** %4, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = call i8* @MAXALIGN(i32 48)
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %144, %struct.TYPE_7__** %145, align 8
  %146 = load i8*, i8** %7, align 8
  store i8* %146, i8** @UsedShmemSegAddr, align 8
  %147 = load i64, i64* %6, align 8
  store i64 %147, i64* @UsedShmemSegID, align 8
  %148 = load i32*, i32** @AnonymousShmem, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %152

150:                                              ; preds = %119
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %151, %struct.TYPE_7__** %3, align 8
  br label %158

152:                                              ; preds = %119
  %153 = load i32*, i32** @AnonymousShmem, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = call i32 @memcpy(i32* %153, %struct.TYPE_7__* %154, i32 48)
  %156 = load i32*, i32** @AnonymousShmem, align 8
  %157 = bitcast i32* %156 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %157, %struct.TYPE_7__** %3, align 8
  br label %158

158:                                              ; preds = %152, %150
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %159
}

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @MAXALIGN(i32) #1

declare dso_local i32* @CreateAnonymousSegment(i8**) #1

declare dso_local i32 @on_shmem_exit(i32, i32) #1

declare dso_local i8* @InternalIpcMemoryCreate(i64, i8*) #1

declare dso_local i64 @shmget(i64, i32, i32) #1

declare dso_local i32 @PGSharedMemoryAttach(i64, i32*, %struct.TYPE_7__**) #1

declare dso_local i32 @errhint(i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @dsm_cleanup_using_control_segment(i64) #1

declare dso_local i32 @shmctl(i64, i32, i32*) #1

declare dso_local i64 @shmdt(%struct.TYPE_7__*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

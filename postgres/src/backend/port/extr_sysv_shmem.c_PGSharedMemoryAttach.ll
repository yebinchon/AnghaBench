; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_PGSharedMemoryAttach.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/port/extr_sysv_shmem.c_PGSharedMemoryAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.shmid_ds = type { i64 }
%struct.stat = type { i64, i64 }

@IPC_STAT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SHMSTATE_ENOENT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@SHMSTATE_FOREIGN = common dso_local global i32 0, align 4
@SHMSTATE_ANALYSIS_FAILURE = common dso_local global i32 0, align 4
@DataDir = common dso_local global i32 0, align 4
@PG_SHMAT_FLAGS = common dso_local global i32 0, align 4
@PGShmemMagic = common dso_local global i64 0, align 8
@SHMSTATE_UNATTACHED = common dso_local global i32 0, align 4
@SHMSTATE_ATTACHED = common dso_local global i32 0, align 4
@EIDRM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_3__**)* @PGSharedMemoryAttach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PGSharedMemoryAttach(i32 %0, i8* %1, %struct.TYPE_3__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__**, align 8
  %8 = alloca %struct.shmid_ds, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__** %2, %struct.TYPE_3__*** %7, align 8
  %11 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @IPC_STAT, align 4
  %14 = call i64 @shmctl(i32 %12, i32 %13, %struct.shmid_ds* %8)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @EINVAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SHMSTATE_ENOENT, align 4
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %16
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @EACCES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @SHMSTATE_FOREIGN, align 4
  store i32 %27, i32* %4, align 4
  br label %92

28:                                               ; preds = %22
  %29 = load i32, i32* @SHMSTATE_ANALYSIS_FAILURE, align 4
  store i32 %29, i32* %4, align 4
  br label %92

30:                                               ; preds = %3
  %31 = load i32, i32* @DataDir, align 4
  %32 = call i64 @stat(i32 %31, %struct.stat* %9)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @SHMSTATE_ANALYSIS_FAILURE, align 4
  store i32 %35, i32* %4, align 4
  br label %92

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @PG_SHMAT_FLAGS, align 4
  %40 = call i64 @shmat(i32 %37, i8* %38, i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %10, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %43 = icmp eq %struct.TYPE_3__* %42, inttoptr (i64 -1 to %struct.TYPE_3__*)
  br i1 %43, label %44, label %58

44:                                               ; preds = %36
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINVAL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @SHMSTATE_ENOENT, align 4
  store i32 %49, i32* %4, align 4
  br label %92

50:                                               ; preds = %44
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EACCES, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @SHMSTATE_FOREIGN, align 4
  store i32 %55, i32* %4, align 4
  br label %92

56:                                               ; preds = %50
  %57 = load i32, i32* @SHMSTATE_ANALYSIS_FAILURE, align 4
  store i32 %57, i32* %4, align 4
  br label %92

58:                                               ; preds = %36
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %60, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PGShmemMagic, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %76, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %73, %66, %58
  %81 = load i32, i32* @SHMSTATE_FOREIGN, align 4
  store i32 %81, i32* %4, align 4
  br label %92

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.shmid_ds, %struct.shmid_ds* %8, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @SHMSTATE_UNATTACHED, align 4
  br label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @SHMSTATE_ATTACHED, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %80, %56, %54, %48, %34, %28, %26, %20
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @shmctl(i32, i32, %struct.shmid_ds*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @shmat(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

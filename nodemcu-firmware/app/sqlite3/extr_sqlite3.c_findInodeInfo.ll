; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_findInodeInfo.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_findInodeInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFileId = type { i32, %struct.unixFileId*, %struct.unixFileId*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.stat = type { i64, i64, i32 }

@errno = common dso_local global i64 0, align 8
@SQLITE_IOERR = common dso_local global i32 0, align 4
@inodeList = common dso_local global %struct.unixFileId* null, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i64 0, align 8
@SQLITE_FSFLAGS_IS_MSDOS = common dso_local global i32 0, align 4
@SQLITE_NOLFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, %struct.unixFileId**)* @findInodeInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findInodeInfo(%struct.TYPE_4__* %0, %struct.unixFileId** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.unixFileId**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.unixFileId, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.unixFileId*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.unixFileId** %1, %struct.unixFileId*** %5, align 8
  store %struct.unixFileId* null, %struct.unixFileId** %10, align 8
  %11 = call i32 (...) @unixMutexHeld()
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @osFstat(i32 %16, %struct.stat* %9)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @storeLastErrno(%struct.TYPE_4__* %21, i64 %22)
  %24 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %2
  %26 = call i32 @memset(%struct.unixFileId* %8, i32 0, i32 48)
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %8, i32 0, i32 6
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %8, i32 0, i32 4
  store i64 %31, i64* %32, align 8
  %33 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  store %struct.unixFileId* %33, %struct.unixFileId** %10, align 8
  br label %34

34:                                               ; preds = %44, %25
  %35 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %36 = icmp ne %struct.unixFileId* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %39 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %38, i32 0, i32 3
  %40 = call i64 @memcmp(%struct.unixFileId* %8, i32* %39, i32 48)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %46 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %45, i32 0, i32 2
  %47 = load %struct.unixFileId*, %struct.unixFileId** %46, align 8
  store %struct.unixFileId* %47, %struct.unixFileId** %10, align 8
  br label %34

48:                                               ; preds = %42
  %49 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %50 = icmp eq %struct.unixFileId* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = call %struct.unixFileId* @sqlite3_malloc64(i32 48)
  store %struct.unixFileId* %52, %struct.unixFileId** %10, align 8
  %53 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %54 = icmp eq %struct.unixFileId* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %51
  %58 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %59 = call i32 @memset(%struct.unixFileId* %58, i32 0, i32 48)
  %60 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %61 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %60, i32 0, i32 3
  %62 = call i32 @memcpy(i32* %61, %struct.unixFileId* %8, i32 48)
  %63 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %64 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %66 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %67 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %66, i32 0, i32 2
  store %struct.unixFileId* %65, %struct.unixFileId** %67, align 8
  %68 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %69 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %68, i32 0, i32 1
  store %struct.unixFileId* null, %struct.unixFileId** %69, align 8
  %70 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %71 = icmp ne %struct.unixFileId* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %57
  %73 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %74 = load %struct.unixFileId*, %struct.unixFileId** @inodeList, align 8
  %75 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %74, i32 0, i32 1
  store %struct.unixFileId* %73, %struct.unixFileId** %75, align 8
  br label %76

76:                                               ; preds = %72, %57
  %77 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  store %struct.unixFileId* %77, %struct.unixFileId** @inodeList, align 8
  br label %83

78:                                               ; preds = %48
  %79 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %80 = getelementptr inbounds %struct.unixFileId, %struct.unixFileId* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %78, %76
  %84 = load %struct.unixFileId*, %struct.unixFileId** %10, align 8
  %85 = load %struct.unixFileId**, %struct.unixFileId*** %5, align 8
  store %struct.unixFileId* %84, %struct.unixFileId** %85, align 8
  %86 = load i32, i32* @SQLITE_OK, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %55, %20
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @unixMutexHeld(...) #1

declare dso_local i32 @osFstat(i32, %struct.stat*) #1

declare dso_local i32 @storeLastErrno(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @memset(%struct.unixFileId*, i32, i32) #1

declare dso_local i64 @memcmp(%struct.unixFileId*, i32*, i32) #1

declare dso_local %struct.unixFileId* @sqlite3_malloc64(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.unixFileId*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

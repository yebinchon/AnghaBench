; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_vdbeSorterOpenTempFile.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_vdbeSorterOpenTempFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@SQLITE_IOERR_ACCESS = common dso_local global i32 0, align 4
@SQLITE_OPEN_TEMP_JOURNAL = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OPEN_EXCLUSIVE = common dso_local global i32 0, align 4
@SQLITE_OPEN_DELETEONCLOSE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MAX_MMAP_SIZE = common dso_local global i64 0, align 8
@SQLITE_FCNTL_MMAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32**)* @vdbeSorterOpenTempFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeSorterOpenTempFile(%struct.TYPE_4__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = call i64 @sqlite3FaultSim(i32 202)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @SQLITE_IOERR_ACCESS, align 4
  store i32 %13, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32**, i32*** %7, align 8
  %19 = load i32, i32* @SQLITE_OPEN_TEMP_JOURNAL, align 4
  %20 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @SQLITE_OPEN_EXCLUSIVE, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @SQLITE_OPEN_DELETEONCLOSE, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @sqlite3OsOpenMalloc(i32 %17, i32 0, i32** %18, i32 %27, i32* %8)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %14
  %33 = load i64, i64* @SQLITE_MAX_MMAP_SIZE, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @SQLITE_FCNTL_MMAP_SIZE, align 4
  %37 = bitcast i64* %9 to i8*
  %38 = call i32 @sqlite3OsFileControlHint(i32* %35, i32 %36, i8* %37)
  %39 = load i64, i64* %6, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @vdbeSorterExtendFile(%struct.TYPE_4__* %42, i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %48

48:                                               ; preds = %47, %14
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %12
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i64 @sqlite3FaultSim(i32) #1

declare dso_local i32 @sqlite3OsOpenMalloc(i32, i32, i32**, i32, i32*) #1

declare dso_local i32 @sqlite3OsFileControlHint(i32*, i32, i8*) #1

declare dso_local i32 @vdbeSorterExtendFile(%struct.TYPE_4__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

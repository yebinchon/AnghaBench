; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pagerOpenWalIfPresent.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_pagerOpenWalIfPresent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_OPEN = common dso_local global i64 0, align 8
@SHARED_LOCK = common dso_local global i64 0, align 8
@SQLITE_IOERR_DELETE_NOENT = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_WAL = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_DELETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @pagerOpenWalIfPresent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerOpenWalIfPresent(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %7 = load i32, i32* @SQLITE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGER_OPEN, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SHARED_LOCK, align 8
  %19 = icmp sge i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %89, label %26

26:                                               ; preds = %1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = call i32 @pagerPagecount(%struct.TYPE_5__* %27, i64* %6)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %91

33:                                               ; preds = %26
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sqlite3OsDelete(i32 %39, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @SQLITE_IOERR_DELETE_NOENT, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @SQLITE_OK, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %36
  store i32 0, i32* %5, align 4
  br label %59

50:                                               ; preds = %33
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %58 = call i32 @sqlite3OsAccess(i32 %53, i32 %56, i32 %57, i32* %5)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %49
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @SQLITE_OK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @sqlite3PcachePagecount(i32 %69)
  %71 = icmp eq i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @testcase(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = call i32 @sqlite3PagerOpenWal(%struct.TYPE_5__* %74, i32 0)
  store i32 %75, i32* %4, align 4
  br label %87

76:                                               ; preds = %63
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PAGER_JOURNALMODE_WAL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i64, i64* @PAGER_JOURNALMODE_DELETE, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %66
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %1
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %31
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pagerPagecount(%struct.TYPE_5__*, i64*) #1

declare dso_local i32 @sqlite3OsDelete(i32, i32, i32) #1

declare dso_local i32 @sqlite3OsAccess(i32, i32, i32, i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @sqlite3PcachePagecount(i32) #1

declare dso_local i32 @sqlite3PagerOpenWal(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

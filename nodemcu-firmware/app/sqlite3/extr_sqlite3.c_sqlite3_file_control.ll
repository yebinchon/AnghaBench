; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_file_control.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_file_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_FCNTL_FILE_POINTER = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_FCNTL_VFS_POINTER = common dso_local global i32 0, align 4
@SQLITE_FCNTL_JOURNAL_POINTER = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_file_control(%struct.TYPE_10__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @sqlite3DbNameToBtree(%struct.TYPE_10__* %18, i8* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %84

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @sqlite3BtreeEnter(i32* %24)
  %26 = load i32*, i32** %10, align 8
  %27 = call i32* @sqlite3BtreePager(i32* %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i32*, i32** %11, align 8
  %33 = call %struct.TYPE_9__* @sqlite3PagerFile(i32* %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %12, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SQLITE_FCNTL_FILE_POINTER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_9__**
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load i32, i32* @SQLITE_OK, align 4
  store i32 %45, i32* %9, align 4
  br label %81

46:                                               ; preds = %23
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @SQLITE_FCNTL_VFS_POINTER, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32*, i32** %11, align 8
  %52 = call i32* @sqlite3PagerVfs(i32* %51)
  %53 = load i8*, i8** %8, align 8
  %54 = bitcast i8* %53 to i32**
  store i32* %52, i32** %54, align 8
  %55 = load i32, i32* @SQLITE_OK, align 4
  store i32 %55, i32* %9, align 4
  br label %80

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @SQLITE_FCNTL_JOURNAL_POINTER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = call %struct.TYPE_9__* @sqlite3PagerJrnlFile(i32* %61)
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to %struct.TYPE_9__**
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %64, align 8
  %65 = load i32, i32* @SQLITE_OK, align 4
  store i32 %65, i32* %9, align 4
  br label %79

66:                                               ; preds = %56
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @sqlite3OsFileControl(%struct.TYPE_9__* %72, i32 %73, i8* %74)
  store i32 %75, i32* %9, align 4
  br label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @SQLITE_NOTFOUND, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %71
  br label %79

79:                                               ; preds = %78, %60
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %41
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @sqlite3BtreeLeave(i32* %82)
  br label %84

84:                                               ; preds = %81, %4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sqlite3_mutex_leave(i32 %87)
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32* @sqlite3DbNameToBtree(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @sqlite3BtreeEnter(i32*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @sqlite3PagerFile(i32*) #1

declare dso_local i32* @sqlite3PagerVfs(i32*) #1

declare dso_local %struct.TYPE_9__* @sqlite3PagerJrnlFile(i32*) #1

declare dso_local i32 @sqlite3OsFileControl(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @sqlite3BtreeLeave(i32*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

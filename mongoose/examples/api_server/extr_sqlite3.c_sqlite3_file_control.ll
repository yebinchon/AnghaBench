; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_file_control.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_file_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }

@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_FCNTL_FILE_POINTER = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_file_control(%struct.TYPE_8__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32* @sqlite3DbNameToBtree(%struct.TYPE_8__* %18, i8* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %62

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
  %33 = call %struct.TYPE_7__* @sqlite3PagerFile(i32* %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %12, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %35 = icmp ne %struct.TYPE_7__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SQLITE_FCNTL_FILE_POINTER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_7__**
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %44, align 8
  %45 = load i32, i32* @SQLITE_OK, align 4
  store i32 %45, i32* %9, align 4
  br label %59

46:                                               ; preds = %23
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @sqlite3OsFileControl(%struct.TYPE_7__* %52, i32 %53, i8* %54)
  store i32 %55, i32* %9, align 4
  br label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @SQLITE_NOTFOUND, align 4
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %56, %51
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @sqlite3BtreeLeave(i32* %60)
  br label %62

62:                                               ; preds = %59, %4
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sqlite3_mutex_leave(i32 %65)
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32* @sqlite3DbNameToBtree(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @sqlite3BtreeEnter(i32*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @sqlite3PagerFile(i32*) #1

declare dso_local i32 @sqlite3OsFileControl(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @sqlite3BtreeLeave(i32*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

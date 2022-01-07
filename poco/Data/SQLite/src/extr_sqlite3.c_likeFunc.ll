; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_likeFunc.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_likeFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }
%struct.compareInfo = type { i32 }

@SQLITE_LIMIT_LIKE_PATTERN_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"LIKE or GLOB pattern too complex\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"ESCAPE expression must be a single character\00", align 1
@SQLITE_MATCH = common dso_local global i64 0, align 8
@SQLITE_BLOB = common dso_local global i64 0, align 8
@sqlite3_like_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @likeFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @likeFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca %struct.compareInfo*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %14)
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %11, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call %struct.compareInfo* @sqlite3_user_data(i32* %16)
  store %struct.compareInfo* %17, %struct.compareInfo** %12, align 8
  %18 = load i32**, i32*** %6, align 8
  %19 = getelementptr inbounds i32*, i32** %18, i64 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sqlite3_value_bytes(i32* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %22, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @testcase(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp eq i32 %32, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @testcase(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @SQLITE_LIMIT_LIKE_PATTERN_LENGTH, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %43, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %3
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @sqlite3_result_error(i32* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 -1)
  br label %103

54:                                               ; preds = %3
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32**, i32*** %6, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i64 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i8* @sqlite3_value_text(i32* %60)
  store i8* %61, i8** %13, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %103

65:                                               ; preds = %57
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @sqlite3Utf8CharLen(i8* %66, i32 -1)
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @sqlite3_result_error(i32* %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  br label %103

72:                                               ; preds = %65
  %73 = call i32 @sqlite3Utf8Read(i8** %13)
  store i32 %73, i32* %9, align 4
  br label %78

74:                                               ; preds = %54
  %75 = load %struct.compareInfo*, %struct.compareInfo** %12, align 8
  %76 = getelementptr inbounds %struct.compareInfo, %struct.compareInfo* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %72
  %79 = load i32**, i32*** %6, align 8
  %80 = getelementptr inbounds i32*, i32** %79, i64 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @sqlite3_value_text(i32* %81)
  store i8* %82, i8** %8, align 8
  %83 = load i32**, i32*** %6, align 8
  %84 = getelementptr inbounds i32*, i32** %83, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = call i8* @sqlite3_value_text(i32* %85)
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %78
  %90 = load i8*, i8** %8, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i32*, i32** %4, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load %struct.compareInfo*, %struct.compareInfo** %12, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @patternCompare(i8* %94, i8* %95, %struct.compareInfo* %96, i32 %97)
  %99 = load i64, i64* @SQLITE_MATCH, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @sqlite3_result_int(i32* %93, i32 %101)
  br label %103

103:                                              ; preds = %51, %64, %69, %92, %89, %78
  ret void
}

declare dso_local %struct.TYPE_3__* @sqlite3_context_db_handle(i32*) #1

declare dso_local %struct.compareInfo* @sqlite3_user_data(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i8* @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3Utf8CharLen(i8*, i32) #1

declare dso_local i32 @sqlite3Utf8Read(i8**) #1

declare dso_local i32 @sqlite3_result_int(i32*, i32) #1

declare dso_local i64 @patternCompare(i8*, i8*, %struct.compareInfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_connect_sqlite.c'
source_filename = "/home/carl/AnghaBench/lwan/src/samples/techempower/extr_database.c_db_connect_sqlite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db = type { i32 }
%struct.db_sqlite = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SQLITE_OPEN_READONLY = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@db_disconnect_sqlite = common dso_local global i32 0, align 4
@db_prepare_sqlite = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.db* @db_connect_sqlite(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.db*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.db_sqlite*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = call %struct.db_sqlite* @malloc(i32 12)
  store %struct.db_sqlite* %12, %struct.db_sqlite** %8, align 8
  %13 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %14 = icmp ne %struct.db_sqlite* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.db* null, %struct.db** %4, align 8
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @SQLITE_OPEN_READONLY, align 4
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %9, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %26 = getelementptr inbounds %struct.db_sqlite, %struct.db_sqlite* %25, i32 0, i32 1
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @sqlite3_open_v2(i8* %24, i32* %26, i32 %27, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SQLITE_OK, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %34 = call i32 @free(%struct.db_sqlite* %33)
  store %struct.db* null, %struct.db** %4, align 8
  br label %69

35:                                               ; preds = %22
  %36 = load i8**, i8*** %7, align 8
  %37 = icmp ne i8** %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %35
  store i64 0, i64* %11, align 8
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i8**, i8*** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %47 = getelementptr inbounds %struct.db_sqlite, %struct.db_sqlite* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8**, i8*** %7, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @sqlite3_exec(i32 %48, i8* %52, i32* null, i32* null, i32* null)
  br label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %11, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %39

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %35
  %59 = load i32, i32* @db_disconnect_sqlite, align 4
  %60 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %61 = getelementptr inbounds %struct.db_sqlite, %struct.db_sqlite* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @db_prepare_sqlite, align 4
  %64 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %65 = getelementptr inbounds %struct.db_sqlite, %struct.db_sqlite* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.db_sqlite*, %struct.db_sqlite** %8, align 8
  %68 = bitcast %struct.db_sqlite* %67 to %struct.db*
  store %struct.db* %68, %struct.db** %4, align 8
  br label %69

69:                                               ; preds = %58, %32, %15
  %70 = load %struct.db*, %struct.db** %4, align 8
  ret %struct.db* %70
}

declare dso_local %struct.db_sqlite* @malloc(i32) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i32*) #1

declare dso_local i32 @free(%struct.db_sqlite*) #1

declare dso_local i32 @sqlite3_exec(i32, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_sqlite_handle_preparer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_sqlite_handle_preparer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@sqlite_stmt_methods = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_POSITIONAL = common dso_local global i32 0, align 4
@PDO_PLACEHOLDER_NAMED = common dso_local global i32 0, align 4
@PDO_CURSOR_FWDONLY = common dso_local global i64 0, align 8
@PDO_ATTR_CURSOR = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i64, %struct.TYPE_11__*, i32*)* @sqlite_handle_preparer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_handle_preparer(%struct.TYPE_14__* %0, i8* %1, i64 %2, %struct.TYPE_11__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %12, align 8
  %20 = call %struct.TYPE_12__* @ecalloc(i32 1, i32 16)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %13, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %26, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i32* @sqlite_stmt_methods, i32** %28, align 8
  %29 = load i32, i32* @PDO_PLACEHOLDER_POSITIONAL, align 4
  %30 = load i32, i32* @PDO_PLACEHOLDER_NAMED, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* @PDO_CURSOR_FWDONLY, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* @PDO_ATTR_CURSOR, align 4
  %37 = load i64, i64* @PDO_CURSOR_FWDONLY, align 8
  %38 = call i64 @pdo_attr_lval(i32* %35, i32 %36, i64 %37)
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %5
  %41 = load i32, i32* @SQLITE_ERROR, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = call i32 @pdo_sqlite_error(%struct.TYPE_14__* %45)
  store i32 0, i32* %6, align 4
  br label %63

47:                                               ; preds = %5
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = call i32 @sqlite3_prepare_v2(i32 %50, i8* %51, i64 %52, i32* %54, i8** %15)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @SQLITE_OK, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  br label %63

60:                                               ; preds = %47
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %62 = call i32 @pdo_sqlite_error(%struct.TYPE_14__* %61)
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %59, %40
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_12__* @ecalloc(i32, i32) #1

declare dso_local i64 @pdo_attr_lval(i32*, i32, i64) #1

declare dso_local i32 @pdo_sqlite_error(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3_prepare_v2(i32, i8*, i64, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

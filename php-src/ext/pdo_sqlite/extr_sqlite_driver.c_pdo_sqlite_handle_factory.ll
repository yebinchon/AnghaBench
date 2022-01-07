; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_pdo_sqlite_handle_factory.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_pdo_sqlite_handle_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i64 }

@.str = private unnamed_addr constant [34 x i8] c"open_basedir prohibits opening %s\00", align 1
@PDO_SQLITE_ATTR_OPEN_FLAGS = common dso_local global i32 0, align 4
@SQLITE_OPEN_READWRITE = common dso_local global i32 0, align 4
@SQLITE_OPEN_CREATE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@open_basedir = common dso_local global i32 0, align 4
@authorizer = common dso_local global i32 0, align 4
@PDO_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@sqlite_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @pdo_sqlite_handle_factory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_sqlite_handle_factory(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 60, i32* %8, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.TYPE_8__* @pecalloc(i32 1, i32 24, i32 %13)
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @make_filename_safe(i32 %26)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = call i32 (...) @php_pdo_get_exception()
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @zend_throw_exception_ex(i32 %31, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %90

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @PDO_SQLITE_ATTR_OPEN_FLAGS, align 4
  %39 = load i32, i32* @SQLITE_OPEN_READWRITE, align 4
  %40 = load i32, i32* @SQLITE_OPEN_CREATE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @pdo_attr_lval(i32* %37, i32 %38, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @sqlite3_open_v2(i8* %43, i32* %45, i32 %46, i32* null)
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @efree(i8* %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SQLITE_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %36
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = call i32 @pdo_sqlite_error(%struct.TYPE_9__* %54)
  br label %90

56:                                               ; preds = %36
  %57 = load i32, i32* @open_basedir, align 4
  %58 = call i64* @PG(i32 %57)
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* @open_basedir, align 4
  %62 = call i64* @PG(i32 %61)
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @authorizer, align 4
  %70 = call i32 @sqlite3_set_authorizer(i32 %68, i32 %69, i32* null)
  br label %71

71:                                               ; preds = %65, %60, %56
  %72 = load i32*, i32** %4, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @PDO_ATTR_TIMEOUT, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @pdo_attr_lval(i32* %75, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %83, 1000
  %85 = call i32 @sqlite3_busy_timeout(i32 %82, i32 %84)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  store i32 2, i32* %89, align 4
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %79, %53, %30
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store i32* @sqlite_methods, i32** %92, align 8
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local %struct.TYPE_8__* @pecalloc(i32, i32, i32) #1

declare dso_local i8* @make_filename_safe(i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32) #1

declare dso_local i32 @php_pdo_get_exception(...) #1

declare dso_local i32 @pdo_attr_lval(i32*, i32, i32) #1

declare dso_local i32 @sqlite3_open_v2(i8*, i32*, i32, i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @pdo_sqlite_error(%struct.TYPE_9__*) #1

declare dso_local i64* @PG(i32) #1

declare dso_local i32 @sqlite3_set_authorizer(i32, i32, i32*) #1

declare dso_local i32 @sqlite3_busy_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

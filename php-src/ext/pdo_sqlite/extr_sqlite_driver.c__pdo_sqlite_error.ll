; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c__pdo_sqlite_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c__pdo_sqlite_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i8*, i32, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PDO_ERR_NONE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"42S02\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"01002\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HYC00\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"22001\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"23000\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"SQLSTATE[%s] [%d] %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_pdo_sqlite_error(%struct.TYPE_10__* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  br label %25

22:                                               ; preds = %4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi i32* [ %21, %19 ], [ %24, %22 ]
  store i32* %26, i32** %11, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %12, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sqlite3_errcode(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SQLITE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %25
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pefree(i64 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %46
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @sqlite3_errmsg(i32 %62)
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @pestrdup(i8* %64, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  br label %76

71:                                               ; preds = %25
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** @PDO_ERR_NONE, align 8
  %75 = call i32 @strncpy(i32 %73, i8* %74, i32 4)
  store i32 0, i32* %5, align 4
  br label %128

76:                                               ; preds = %59
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %101 [
    i32 129, label %80
    i32 131, label %84
    i32 130, label %88
    i32 128, label %92
    i32 133, label %96
    i32 132, label %100
  ]

80:                                               ; preds = %76
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @strncpy(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %105

84:                                               ; preds = %76
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @strncpy(i32 %86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %105

88:                                               ; preds = %76
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @strncpy(i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %105

92:                                               ; preds = %76
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @strncpy(i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 4)
  br label %105

96:                                               ; preds = %76
  %97 = load i32*, i32** %11, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strncpy(i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 4)
  br label %105

100:                                              ; preds = %76
  br label %101

101:                                              ; preds = %76, %100
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @strncpy(i32 %103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 4)
  br label %105

105:                                              ; preds = %101, %96, %92, %88, %84, %80
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = call i32 (...) @php_pdo_get_exception()
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @zend_throw_exception_ex(i32 %111, i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %116, i32 %119, i64 %122)
  br label %124

124:                                              ; preds = %110, %105
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %71
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @sqlite3_errcode(i32) #1

declare dso_local i32 @pefree(i64, i32) #1

declare dso_local i64 @pestrdup(i8*, i32) #1

declare dso_local i64 @sqlite3_errmsg(i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32, i32, i64) #1

declare dso_local i32 @php_pdo_get_exception(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_pdo_odbc_error.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_odbc/extr_odbc_driver.c_pdo_odbc_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i32, i8*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__ }

@SQL_NULL_HSTMT = common dso_local global i64 0, align 8
@SQL_HANDLE_STMT = common dso_local global i64 0, align 8
@SQL_HANDLE_DBC = common dso_local global i64 0, align 8
@SQL_HANDLE_ENV = common dso_local global i64 0, align 8
@SQL_SUCCESS = common dso_local global i64 0, align 8
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"SQLSTATE[%s] %s: %d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pdo_odbc_error(%struct.TYPE_12__* %0, %struct.TYPE_8__* %1, i64 %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca %struct.TYPE_9__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca [6 x i8], align 1
  %23 = alloca [1024 x i8], align 16
  %24 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %14, align 8
  store i64 1, i64* %17, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %18, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %20, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  store i32* %32, i32** %21, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %6
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %20, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %19, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32* %43, i32** %21, align 8
  br label %44

44:                                               ; preds = %35, %6
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @SQL_NULL_HSTMT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %50 = icmp ne %struct.TYPE_9__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %48, %44
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @SQL_HANDLE_STMT, align 8
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %15, align 8
  br label %77

61:                                               ; preds = %55
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i64, i64* @SQL_HANDLE_DBC, align 8
  store i64 %67, i64* %16, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %15, align 8
  br label %76

71:                                               ; preds = %61
  %72 = load i64, i64* @SQL_HANDLE_ENV, align 8
  store i64 %72, i64* %16, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %15, align 8
  br label %76

76:                                               ; preds = %71, %66
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %17, align 8
  %82 = trunc i64 %80 to i32
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 5
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @SQLGetDiagRec(i64 %78, i64 %79, i32 %82, i8* %85, i32* %87, i8* %90, i32 7, i64* %14)
  store i64 %91, i64* %13, align 8
  %92 = load i64, i64* %13, align 8
  %93 = load i64, i64* @SQL_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i64 0, i64* %14, align 8
  br label %100

100:                                              ; preds = %99, %95, %77
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* %14, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  store i8* %112, i8** %114, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @strcpy(i32 %116, i8* %119)
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %100
  %126 = call i32 (...) @php_pdo_get_exception()
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i8*, i8** %10, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @zend_throw_exception_ex(i32 %126, i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %131, i8* %132, i32 %135, i8* %138)
  br label %140

140:                                              ; preds = %125, %100
  br label %141

141:                                              ; preds = %151, %140
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* @SQL_SUCCESS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %13, align 8
  %147 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %148 = icmp eq i64 %146, %147
  br label %149

149:                                              ; preds = %145, %141
  %150 = phi i1 [ true, %141 ], [ %148, %145 ]
  br i1 %150, label %151, label %160

151:                                              ; preds = %149
  %152 = load i64, i64* %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %17, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %17, align 8
  %156 = trunc i64 %154 to i32
  %157 = getelementptr inbounds [6 x i8], [6 x i8]* %22, i64 0, i64 0
  %158 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %159 = call i64 @SQLGetDiagRec(i64 %152, i64 %153, i32 %156, i8* %157, i32* %24, i8* %158, i32 1023, i64* %14)
  store i64 %159, i64* %13, align 8
  br label %141

160:                                              ; preds = %149
  ret void
}

declare dso_local i64 @SQLGetDiagRec(i64, i64, i32, i8*, i32*, i8*, i32, i64*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @zend_throw_exception_ex(i32, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @php_pdo_get_exception(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

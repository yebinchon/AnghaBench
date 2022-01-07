; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_stmt_describe.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_stmt_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.pdo_column_data*, i64 }
%struct.pdo_column_data = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"computed%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"computed\00", align 1
@PDO_PARAM_ZVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @pdo_dblib_stmt_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_dblib_stmt_describe(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.pdo_column_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %3, align 4
  br label %101

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.pdo_column_data*, %struct.pdo_column_data** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %38, i64 %40
  store %struct.pdo_column_data* %41, %struct.pdo_column_data** %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i64 @dbcolname(i32 %44, i32 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %35
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i8* @zend_string_init(i8* %57, i32 %59, i32 0)
  %61 = load %struct.pdo_column_data*, %struct.pdo_column_data** %8, align 8
  %62 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  br label %89

63:                                               ; preds = %51, %35
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @snprintf(i8* %69, i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %72)
  store i32 %73, i32* %11, align 4
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %75 = load i32, i32* %11, align 4
  %76 = call i8* @zend_string_init(i8* %74, i32 %75, i32 0)
  %77 = load %struct.pdo_column_data*, %struct.pdo_column_data** %8, align 8
  %78 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  br label %84

79:                                               ; preds = %63
  %80 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i8* @zend_string_init(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 0)
  %82 = load %struct.pdo_column_data*, %struct.pdo_column_data** %8, align 8
  %83 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  br label %84

84:                                               ; preds = %79, %68
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %84, %56
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i32 @dbcollen(i32 %92, i32 %94)
  %96 = load %struct.pdo_column_data*, %struct.pdo_column_data** %8, align 8
  %97 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @PDO_PARAM_ZVAL, align 4
  %99 = load %struct.pdo_column_data*, %struct.pdo_column_data** %8, align 8
  %100 = getelementptr inbounds %struct.pdo_column_data, %struct.pdo_column_data* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %89, %27
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @dbcolname(i32, i32) #1

declare dso_local i8* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @dbcollen(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

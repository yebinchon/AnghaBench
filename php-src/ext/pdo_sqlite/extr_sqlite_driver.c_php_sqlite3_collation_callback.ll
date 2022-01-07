; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_php_sqlite3_collation_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_driver.c_php_sqlite3_collation_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdo_sqlite_collation = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32 }

@FAILURE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"An error occurred while invoking the callback\00", align 1
@IS_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @php_sqlite3_collation_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_sqlite3_collation_callback(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.pdo_sqlite_collation*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.pdo_sqlite_collation*
  store %struct.pdo_sqlite_collation* %16, %struct.pdo_sqlite_collation** %14, align 8
  %17 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %18 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 40, i32* %20, align 8
  %21 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %22 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %26 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %25, i32 0, i32 1
  %27 = call i32 @ZVAL_COPY_VALUE(i32* %24, i32* %26)
  %28 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %29 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %33 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32* %13, i32** %35, align 8
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @ZVAL_STRINGL(i32* %36, i8* %37, i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ZVAL_STRINGL(i32* %40, i8* %41, i32 %42)
  %44 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %45 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 2, i32* %47, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %49 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %50 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32* %48, i32** %52, align 8
  %53 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %54 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load %struct.pdo_sqlite_collation*, %struct.pdo_sqlite_collation** %14, align 8
  %57 = getelementptr inbounds %struct.pdo_sqlite_collation, %struct.pdo_sqlite_collation* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @zend_call_function(%struct.TYPE_4__* %55, i32* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @FAILURE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %5
  %63 = load i32, i32* @E_WARNING, align 4
  %64 = call i32 @php_error_docref(i32* null, i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %90

65:                                               ; preds = %5
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @Z_ISUNDEF(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @Z_TYPE(i32 %70)
  %72 = load i64, i64* @IS_LONG, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 @convert_to_long_ex(i32* %13)
  br label %76

76:                                               ; preds = %74, %69
  store i32 0, i32* %11, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i64 @Z_LVAL(i32 %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %11, align 4
  br label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = call i64 @Z_LVAL(i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %81
  br label %87

87:                                               ; preds = %86, %80
  %88 = call i32 @zval_ptr_dtor(i32* %13)
  br label %89

89:                                               ; preds = %87, %65
  br label %90

90:                                               ; preds = %89, %62
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %92 = call i32 @zval_ptr_dtor(i32* %91)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %94 = call i32 @zval_ptr_dtor(i32* %93)
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @zend_call_function(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @Z_ISUNDEF(i32) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @convert_to_long_ex(i32*) #1

declare dso_local i64 @Z_LVAL(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

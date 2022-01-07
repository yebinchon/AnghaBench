; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_stmt_construct.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo/extr_pdo_dbh.c_pdo_stmt_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32*, i64, i32*, i8*, i32 }
%struct.TYPE_11__ = type { i8*, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"queryString\00", align 1
@FAILURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32*, %struct.TYPE_13__*, i32*)* @pdo_stmt_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdo_stmt_construct(i32* %0, %struct.TYPE_14__* %1, i32* %2, %struct.TYPE_13__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ZVAL_STRINGL(i32* %11, i32 %18, i32 %21)
  %23 = call i32* @zend_string_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11, i32 0)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i8* @Z_OBJ_P(i32* %24)
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @zend_std_write_property(i8* %25, i32* %26, i32* %11, i32* null)
  %28 = call i32 @zval_ptr_dtor(i32* %11)
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @zend_string_release_ex(i32* %29, i32 0)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 48, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %38 = call i32 @ZVAL_UNDEF(i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i8* @Z_OBJ_P(i32* %39)
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  store i32* %15, i32** %42, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @zend_fcall_info_args(%struct.TYPE_12__* %13, i32* %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @Z_OBJCE_P(i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = call i8* @Z_OBJ_P(i32* %55)
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i8* %56, i8** %57, align 8
  %58 = call i64 @zend_call_function(%struct.TYPE_12__* %13, %struct.TYPE_11__* %14)
  %59 = load i64, i64* @FAILURE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %35
  %62 = call i32 @zval_ptr_dtor(i32* %15)
  br label %63

63:                                               ; preds = %61, %35
  %64 = call i32 @zend_fcall_info_args_clear(%struct.TYPE_12__* %13, i32 1)
  br label %65

65:                                               ; preds = %63, %5
  ret void
}

declare dso_local i32 @ZVAL_STRINGL(i32*, i32, i32) #1

declare dso_local i32* @zend_string_init(i8*, i32, i32) #1

declare dso_local i32 @zend_std_write_property(i8*, i32*, i32*, i32*) #1

declare dso_local i8* @Z_OBJ_P(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @ZVAL_UNDEF(i32*) #1

declare dso_local i32 @zend_fcall_info_args(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @Z_OBJCE_P(i32*) #1

declare dso_local i64 @zend_call_function(%struct.TYPE_12__*, %struct.TYPE_11__*) #1

declare dso_local i32 @zend_fcall_info_args_clear(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

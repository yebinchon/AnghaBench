; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_prop.c_stmt_error_list_read.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqli/extr_mysqli_prop.c_stmt_error_list_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i64 }

@MYSQLI_STATUS_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"errno\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sqlstate\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i32*)* @stmt_error_list_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stmt_error_list_read(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @MYSQLI_STATUS_INITIALIZED, align 4
  %8 = call i32 @CHECK_STATUS(i32 %7)
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_16__*
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %5, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = icmp ne %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %51

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @array_init(i32* %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = call i64 @mysql_stmt_errno(%struct.TYPE_17__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %23
  %32 = call i32 @array_init(i32* %6)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = call i64 @mysql_stmt_errno(%struct.TYPE_17__* %35)
  %37 = call i32 @add_assoc_long_ex(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5, i64 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = call i32 @mysql_stmt_sqlstate(%struct.TYPE_17__* %40)
  %42 = call i32 @add_assoc_string_ex(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8, i32 %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  %46 = call i32 @mysql_stmt_error(%struct.TYPE_17__* %45)
  %47 = call i32 @add_assoc_string_ex(i32* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @add_next_index_zval(i32* %48, i32* %6)
  br label %50

50:                                               ; preds = %31, %23
  br label %54

51:                                               ; preds = %18, %2
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @ZVAL_EMPTY_ARRAY(i32* %52)
  br label %54

54:                                               ; preds = %51, %50
  %55 = load i32*, i32** %4, align 8
  ret i32* %55
}

declare dso_local i32 @CHECK_STATUS(i32) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i64 @mysql_stmt_errno(%struct.TYPE_17__*) #1

declare dso_local i32 @add_assoc_long_ex(i32*, i8*, i32, i64) #1

declare dso_local i32 @add_assoc_string_ex(i32*, i8*, i32, i32) #1

declare dso_local i32 @mysql_stmt_sqlstate(%struct.TYPE_17__*) #1

declare dso_local i32 @mysql_stmt_error(%struct.TYPE_17__*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

declare dso_local i32 @ZVAL_EMPTY_ARRAY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_stmt_get_column_meta.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_stmt_get_column_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"max_length\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"column_source\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"native_type\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"native_type_id\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"native_usertype_id\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pdo_type\00", align 1
@PDO_PARAM_INT = common dso_local global i32 0, align 4
@PDO_PARAM_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i32*)* @pdo_dblib_stmt_get_column_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_dblib_stmt_get_column_meta(%struct.TYPE_7__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %4, align 4
  br label %102

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @array_init(i32* %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, 1
  %37 = call %struct.TYPE_10__* @dbcoltypeinfo(i32 %34, i64 %36)
  store %struct.TYPE_10__* %37, %struct.TYPE_10__** %10, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = icmp ne %struct.TYPE_10__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @FAILURE, align 4
  store i32 %41, i32* %4, align 4
  br label %102

42:                                               ; preds = %29
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %6, align 8
  %47 = add nsw i64 %46, 1
  %48 = call i32 @dbcoltype(i32 %45, i64 %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i32 @dbcollen(i32 %52, i64 %54)
  %56 = call i32 @add_assoc_long(i32* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %7, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @add_assoc_long(i32* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @add_assoc_long(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %6, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32 @dbcolsource(i32 %72, i64 %74)
  %76 = call i32 @add_assoc_string(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @pdo_dblib_get_field_name(i32 %78)
  %80 = call i32 @add_assoc_string(i32* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @add_assoc_long(i32* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load i32*, i32** %7, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, 1
  %90 = call i32 @dbcolutype(i32 %87, i64 %89)
  %91 = call i32 @add_assoc_long(i32* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %11, align 4
  switch i32 %92, label %97 [
    i32 131, label %93
    i32 130, label %93
    i32 129, label %93
    i32 128, label %93
  ]

93:                                               ; preds = %42, %42, %42, %42
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* @PDO_PARAM_INT, align 4
  %96 = call i32 @add_assoc_long(i32* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  br label %101

97:                                               ; preds = %42
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* @PDO_PARAM_STR, align 4
  %100 = call i32 @add_assoc_long(i32* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  store i32 1, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %40, %27
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local %struct.TYPE_10__* @dbcoltypeinfo(i32, i64) #1

declare dso_local i32 @dbcoltype(i32, i64) #1

declare dso_local i32 @add_assoc_long(i32*, i8*, i32) #1

declare dso_local i32 @dbcollen(i32, i64) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i32) #1

declare dso_local i32 @dbcolsource(i32, i64) #1

declare dso_local i32 @pdo_dblib_get_field_name(i32) #1

declare dso_local i32 @dbcolutype(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_driver.c_mysql_handle_doer.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_driver.c_mysql_handle_doer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"mysql_handle_doer\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dbh=%p\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sql=%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @mysql_handle_doer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_handle_doer(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = call i32 @PDO_DBG_ENTER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_8__* %16)
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %19, i8* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @mysql_real_query(i32 %24, i8* %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = call i32 @pdo_mysql_error(%struct.TYPE_8__* %30)
  %32 = call i32 @PDO_DBG_RETURN(i32 -1)
  br label %82

33:                                               ; preds = %3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @mysql_affected_rows(i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %51

40:                                               ; preds = %33
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = call i32 @pdo_mysql_error(%struct.TYPE_8__* %41)
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 -1, i32 0
  %50 = call i32 @PDO_DBG_RETURN(i32 %49)
  br label %81

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %76, %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @mysql_more_results(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @mysql_next_result(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = call i32 @PDO_DBG_RETURN(i32 1)
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @mysql_store_result(i32 %69)
  store i32* %70, i32** %10, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @mysql_free_result(i32* %74)
  br label %76

76:                                               ; preds = %73, %66
  br label %52

77:                                               ; preds = %52
  %78 = load i64, i64* %9, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @PDO_DBG_RETURN(i32 %79)
  br label %81

81:                                               ; preds = %77, %40
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @PDO_DBG_ENTER(i8*) #1

declare dso_local i32 @PDO_DBG_INF_FMT(i8*, ...) #1

declare dso_local i64 @mysql_real_query(i32, i8*, i64) #1

declare dso_local i32 @pdo_mysql_error(%struct.TYPE_8__*) #1

declare dso_local i32 @PDO_DBG_RETURN(i32) #1

declare dso_local i64 @mysql_affected_rows(i32) #1

declare dso_local i64 @mysql_more_results(i32) #1

declare dso_local i64 @mysql_next_result(i32) #1

declare dso_local i32* @mysql_store_result(i32) #1

declare dso_local i32 @mysql_free_result(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

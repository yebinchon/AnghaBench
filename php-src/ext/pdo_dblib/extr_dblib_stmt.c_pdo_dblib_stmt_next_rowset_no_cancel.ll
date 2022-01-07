; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_stmt_next_rowset_no_cancel.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_stmt.c_pdo_dblib_stmt_next_rowset_no_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64 }

@SUCCEED = common dso_local global i64 0, align 8
@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HY000\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"PDO_DBLIB: dbresults() returned FAIL\00", align 1
@NO_MORE_RESULTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @pdo_dblib_stmt_next_rowset_no_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_dblib_stmt_next_rowset_no_cancel(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %5, align 8
  br label %15

15:                                               ; preds = %36, %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @dbresults(i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dbnumcols(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SUCCEED, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %29, %24
  %37 = phi i1 [ false, %29 ], [ false, %24 ], [ %35, %32 ]
  br i1 %37, label %15, label %38

38:                                               ; preds = %36
  %39 = load i64, i64* @FAIL, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = call i32 @pdo_raise_impl_error(i32 %45, %struct.TYPE_6__* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %72

48:                                               ; preds = %38
  %49 = load i64, i64* @NO_MORE_RESULTS, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %72

53:                                               ; preds = %48
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = icmp sle i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %58, %53
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @DBCOUNT(i32 %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %61, %52, %42
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @dbresults(i32) #1

declare dso_local i32 @dbnumcols(i32) #1

declare dso_local i32 @pdo_raise_impl_error(i32, %struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @DBCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_handle_last_id.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_dblib/extr_dblib_driver.c_dblib_handle_last_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"SELECT @@IDENTITY\00", align 1
@NO_MORE_RESULTS = common dso_local global i64 0, align 8
@NO_MORE_ROWS = common dso_local global i64 0, align 8
@SQLCHAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dblib_handle_last_id(%struct.TYPE_5__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %8, align 8
  store i8* null, i8** %10, align 8
  %15 = load i64, i64* @FAIL, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @dbcmd(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %99

22:                                               ; preds = %3
  %23 = load i64, i64* @FAIL, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @dbsqlexec(i32 %26)
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i8* null, i8** %4, align 8
  br label %99

30:                                               ; preds = %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dbresults(i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @FAIL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @NO_MORE_RESULTS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dbcancel(i32 %45)
  store i8* null, i8** %4, align 8
  br label %99

47:                                               ; preds = %38
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @dbnextrow(i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @FAIL, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @NO_MORE_ROWS, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %47
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dbcancel(i32 %62)
  store i8* null, i8** %4, align 8
  br label %99

64:                                               ; preds = %55
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @dbdatlen(i32 %67, i32 1)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dbcancel(i32 %73)
  store i8* null, i8** %4, align 8
  br label %99

75:                                               ; preds = %64
  %76 = call i8* @emalloc(i32 32)
  store i8* %76, i8** %10, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dbcoltype(i32 %79, i32 1)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dbdata(i32 %83, i32 1)
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @dbdatlen(i32 %87, i32 1)
  %89 = load i32, i32* @SQLCHAR, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = call i64 @dbconvert(i32* null, i32 %80, i32 %84, i64 %88, i32 %89, i32* %91, i32 -1)
  %93 = load i64*, i64** %7, align 8
  store i64 %92, i64* %93, align 8
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @dbcancel(i32 %96)
  %98 = load i8*, i8** %10, align 8
  store i8* %98, i8** %4, align 8
  br label %99

99:                                               ; preds = %75, %70, %59, %42, %29, %21
  %100 = load i8*, i8** %4, align 8
  ret i8* %100
}

declare dso_local i64 @dbcmd(i32, i8*) #1

declare dso_local i64 @dbsqlexec(i32) #1

declare dso_local i64 @dbresults(i32) #1

declare dso_local i32 @dbcancel(i32) #1

declare dso_local i64 @dbnextrow(i32) #1

declare dso_local i64 @dbdatlen(i32, i32) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i64 @dbconvert(i32*, i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @dbcoltype(i32, i32) #1

declare dso_local i32 @dbdata(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

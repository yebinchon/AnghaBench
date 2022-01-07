; ModuleID = '/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_load_categories_hash.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/tablefunc/extr_tablefunc.c_load_categories_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i8*, i64 }

@MAX_CATNAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"crosstab hash\00", align 1
@INIT_CATS = common dso_local global i32 0, align 4
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"load_categories_hash: SPI_connect returned %d\00", align 1
@SPI_processed = common dso_local global i64 0, align 8
@SPI_OK_SELECT = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global %struct.TYPE_12__* null, align 8
@ERRCODE_SYNTAX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"provided \22categories\22 SQL must return 1 column of at least one row\00", align 1
@SPI_OK_FINISH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"load_categories_hash: SPI_finish() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @load_categories_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_categories_hash(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = call i32 @MemSet(%struct.TYPE_13__* %6, i32 0, i32 12)
  %17 = load i32, i32* @MAX_CATNAME_LEN, align 4
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 4, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @INIT_CATS, align 4
  %23 = load i32, i32* @HASH_ELEM, align 4
  %24 = load i32, i32* @HASH_CONTEXT, align 4
  %25 = or i32 %23, %24
  %26 = call i32* @hash_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.TYPE_13__* %6, i32 %25)
  store i32* %26, i32** %5, align 8
  %27 = call i32 (...) @SPI_connect()
  store i32 %27, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @ERROR, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @elog(i32 %30, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @SPI_execute(i8* %34, i32 1, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* @SPI_processed, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SPI_OK_SELECT, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %92

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SPI_tuptable, align 8
  store %struct.TYPE_12__* %44, %struct.TYPE_12__** %10, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %11, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load i32, i32* @ERROR, align 4
  %54 = load i32, i32* @ERRCODE_SYNTAX_ERROR, align 4
  %55 = call i32 @errcode(i32 %54)
  %56 = call i32 @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @ereport(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %52, %43
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %88, %58
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %59
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %72 = call i8* @SPI_getvalue(i32 %70, %struct.TYPE_11__* %71, i32 1)
  store i8* %72, i8** %14, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @MemoryContextSwitchTo(i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = call i64 @palloc(i32 16)
  %76 = inttoptr i64 %75 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %76, %struct.TYPE_10__** %13, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %85 = call i32 @crosstab_HashTableInsert(i32* %83, %struct.TYPE_10__* %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @MemoryContextSwitchTo(i32 %86)
  br label %88

88:                                               ; preds = %63
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %59

91:                                               ; preds = %59
  br label %92

92:                                               ; preds = %91, %40, %33
  %93 = call i64 (...) @SPI_finish()
  %94 = load i64, i64* @SPI_OK_FINISH, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @ERROR, align 4
  %98 = call i32 (i32, i8*, ...) @elog(i32 %97, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32*, i32** %5, align 8
  ret i32* %100
}

declare dso_local i32 @MemSet(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32* @hash_create(i8*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @SPI_execute(i8*, i32, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i8* @SPI_getvalue(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @crosstab_HashTableInsert(i32*, %struct.TYPE_10__*) #1

declare dso_local i64 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

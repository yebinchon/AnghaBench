; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_skip_metadata.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_skip_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i32* }

@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"mysqlnd_stmt_skip_metadata\00", align 1
@mempool_default_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"stmt=%lu\00", align 1
@PASS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @mysqlnd_stmt_skip_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mysqlnd_stmt_skip_metadata(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = icmp ne %struct.TYPE_15__* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.TYPE_14__* [ %15, %12 ], [ null, %16 ]
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %4, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = icmp ne %struct.TYPE_14__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.TYPE_17__* [ %24, %21 ], [ null, %25 ]
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %5, align 8
  store i32 0, i32* %6, align 4
  %28 = load i64, i64* @FAIL, align 8
  store i64 %28, i64* %7, align 8
  %29 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %34 = icmp ne %struct.TYPE_17__* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %26
  %36 = load i64, i64* @FAIL, align 8
  %37 = call i32 @DBG_RETURN(i64 %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @mempool_default_size, align 4
  %40 = call i32 @MYSQLND_G(i32 %39)
  %41 = call i32* @mysqlnd_mempool_create(i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* @FAIL, align 8
  %46 = call i32 @DBG_RETURN(i64 %45)
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %56, align 8
  %58 = call i32 %57(%struct.TYPE_16__* %8)
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  store i32* %59, i32** %60, align 8
  %61 = load i64, i64* @PASS, align 8
  store i64 %61, i64* %7, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  br label %64

64:                                               ; preds = %78, %47
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %64
  %71 = load i64, i64* @FAIL, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %73 = call i64 @PACKET_READ(%struct.TYPE_17__* %72, %struct.TYPE_16__* %8)
  %74 = icmp eq i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @FAIL, align 8
  store i64 %76, i64* %7, align 8
  br label %81

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %6, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %64

81:                                               ; preds = %75, %64
  %82 = call i32 @PACKET_FREE(%struct.TYPE_16__* %8)
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @mysqlnd_mempool_destroy(i32* %83)
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @DBG_RETURN(i64 %85)
  %87 = load i64, i64* %2, align 8
  ret i64 %87
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_RETURN(i64) #1

declare dso_local i32* @mysqlnd_mempool_create(i32) #1

declare dso_local i32 @MYSQLND_G(i32) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32) #1

declare dso_local i64 @PACKET_READ(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @PACKET_FREE(%struct.TYPE_16__*) #1

declare dso_local i32 @mysqlnd_mempool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

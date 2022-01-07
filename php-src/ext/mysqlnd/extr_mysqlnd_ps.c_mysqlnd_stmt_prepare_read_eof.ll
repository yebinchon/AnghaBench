; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_prepare_read_eof.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps.c_mysqlnd_stmt_prepare_read_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_21__*, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_21__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_19__*)* }
%struct.TYPE_19__ = type { i32, i32 }

@FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mysqlnd_stmt_prepare_read_eof\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stmt=%lu\00", align 1
@MYSQLND_STMT_INITTED = common dso_local global i32 0, align 4
@MYSQLND_STMT_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @mysqlnd_stmt_prepare_read_eof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stmt_prepare_read_eof(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %9 = icmp ne %struct.TYPE_18__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi %struct.TYPE_17__* [ %13, %10 ], [ null, %14 ]
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %4, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = icmp ne %struct.TYPE_17__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  br label %24

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi %struct.TYPE_20__* [ %22, %19 ], [ null, %23 ]
  store %struct.TYPE_20__* %25, %struct.TYPE_20__** %5, align 8
  %26 = load i32, i32* @FAIL, align 4
  store i32 %26, i32* %7, align 4
  %27 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = icmp ne %struct.TYPE_17__* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %32 = icmp ne %struct.TYPE_20__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* @FAIL, align 4
  %35 = call i32 @DBG_RETURN(i32 %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %45, align 8
  %47 = call i32 %46(%struct.TYPE_19__* %6)
  %48 = load i32, i32* @FAIL, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = call i32 @PACKET_READ(%struct.TYPE_20__* %49, %struct.TYPE_19__* %6)
  store i32 %50, i32* %7, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %36
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = icmp ne %struct.TYPE_21__* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %52
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %65, align 8
  %67 = call i32 %63(%struct.TYPE_21__* %66)
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = call i32 @memset(%struct.TYPE_17__* %68, i32 0, i32 32)
  %70 = load i32, i32* @MYSQLND_STMT_INITTED, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %57, %52
  br label %90

74:                                               ; preds = %36
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32 %77, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @UPSERT_STATUS_SET_WARNINGS(i32 %83, i32 %85)
  %87 = load i32, i32* @MYSQLND_STMT_PREPARED, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %74, %73
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @DBG_RETURN(i32 %91)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_RETURN(i32) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32) #1

declare dso_local i32 @PACKET_READ(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_SERVER_STATUS(i32, i32) #1

declare dso_local i32 @UPSERT_STATUS_SET_WARNINGS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

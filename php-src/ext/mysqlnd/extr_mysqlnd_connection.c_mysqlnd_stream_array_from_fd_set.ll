; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_connection.c_mysqlnd_stream_array_from_fd_set.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_connection.c_mysqlnd_stream_array_from_fd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* (%struct.TYPE_11__*)* }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"mysqlnd_stream_array_from_fd_set\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"conn=%llu stream=%p\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@PHP_STREAM_AS_FD_FOR_SELECT = common dso_local global i32 0, align 4
@PHP_STREAM_CAST_INTERNAL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, i32*)* @mysqlnd_stream_array_from_fd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stream_array_from_fd_set(%struct.TYPE_10__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__**, align 8
  %11 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @FALSE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__** %13, %struct.TYPE_10__*** %10, align 8
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__** %14, %struct.TYPE_10__*** %11, align 8
  %15 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %82, %74, %2
  %17 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %86

20:                                               ; preds = %16
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32* (%struct.TYPE_11__*)*, i32* (%struct.TYPE_11__*)** %30, align 8
  %32 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = call i32* %31(%struct.TYPE_11__* %37)
  store i32* %38, i32** %7, align 8
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %82

49:                                               ; preds = %20
  %50 = load i64, i64* @SUCCESS, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @PHP_STREAM_AS_FD_FOR_SELECT, align 4
  %53 = load i32, i32* @PHP_STREAM_CAST_INTERNAL, align 4
  %54 = or i32 %52, %53
  %55 = bitcast i32* %6 to i8*
  %56 = call i64 @php_stream_cast(i32* %51, i32 %54, i8* %55, i32 1)
  %57 = icmp eq i64 %50, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %49
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @ZEND_VALID_SOCKET(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load i32, i32* %6, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i64 @PHP_SAFE_FD_ISSET(i32 %63, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %73, align 8
  br label %74

74:                                               ; preds = %70, %67
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i32 1
  store %struct.TYPE_10__** %76, %struct.TYPE_10__*** %11, align 8
  %77 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %77, i32 1
  store %struct.TYPE_10__** %78, %struct.TYPE_10__*** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %16

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %58, %49, %20
  %83 = load i64, i64* @TRUE, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i32 1
  store %struct.TYPE_10__** %85, %struct.TYPE_10__*** %10, align 8
  br label %16

86:                                               ; preds = %16
  %87 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @DBG_RETURN(i32 %88)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32, i32*) #1

declare dso_local i64 @php_stream_cast(i32*, i32, i8*, i32) #1

declare dso_local i64 @ZEND_VALID_SOCKET(i32) #1

declare dso_local i64 @PHP_SAFE_FD_ISSET(i32, i32*) #1

declare dso_local i32 @DBG_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_connection.c_mysqlnd_stream_array_to_fd_set.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_connection.c_mysqlnd_stream_array_to_fd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* (%struct.TYPE_11__*)* }

@.str = private unnamed_addr constant [31 x i8] c"mysqlnd_stream_array_to_fd_set\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"conn=%llu stream=%p\00", align 1
@SUCCESS = common dso_local global i64 0, align 8
@PHP_STREAM_AS_FD_FOR_SELECT = common dso_local global i32 0, align 4
@PHP_STREAM_CAST_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__**, i32*, i64*)* @mysqlnd_stream_array_to_fd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_stream_array_to_fd_set(%struct.TYPE_10__** %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__** %12, %struct.TYPE_10__*** %11, align 8
  %13 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %74, %3
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %77

18:                                               ; preds = %14
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32* (%struct.TYPE_11__*)*, i32* (%struct.TYPE_11__*)** %28, align 8
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = call i32* %29(%struct.TYPE_11__* %35)
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %18
  %48 = load i64, i64* @SUCCESS, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* @PHP_STREAM_AS_FD_FOR_SELECT, align 4
  %51 = load i32, i32* @PHP_STREAM_CAST_INTERNAL, align 4
  %52 = or i32 %50, %51
  %53 = bitcast i64* %8 to i8*
  %54 = call i64 @php_stream_cast(i32* %49, i32 %52, i8* %53, i32 1)
  %55 = icmp eq i64 %48, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @ZEND_VALID_SOCKET(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @PHP_SAFE_FD_SET(i64 %61, i32* %62)
  %64 = load i64, i64* %8, align 8
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i64, i64* %8, align 8
  %70 = load i64*, i64** %7, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %56, %47, %18
  %75 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %75, i32 1
  store %struct.TYPE_10__** %76, %struct.TYPE_10__*** %11, align 8
  br label %14

77:                                               ; preds = %14
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  %82 = call i32 @DBG_RETURN(i32 %81)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i32, i32*) #1

declare dso_local i64 @php_stream_cast(i32*, i32, i8*, i32) #1

declare dso_local i64 @ZEND_VALID_SOCKET(i64) #1

declare dso_local i32 @PHP_SAFE_FD_SET(i64, i32*) #1

declare dso_local i32 @DBG_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

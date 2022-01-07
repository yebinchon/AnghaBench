; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c_php_do_setsockopt_ipv6_mcast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c_php_do_setsockopt_ipv6_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@IS_TRUE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Expected a value between -1 and 255\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to set socket option\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_do_setsockopt_ipv6_mcast(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %66 [
    i32 132, label %16
    i32 130, label %16
    i32 135, label %28
    i32 134, label %37
    i32 136, label %46
  ]

16:                                               ; preds = %4, %4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @php_do_mcast_opt(%struct.TYPE_5__* %17, i32 %18, i32 %19, i32* %20)
  %22 = load i32, i32* @FAILURE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @FAILURE, align 4
  store i32 %25, i32* %5, align 4
  br label %85

26:                                               ; preds = %16
  %27 = load i32, i32* @SUCCESS, align 4
  store i32 %27, i32* %5, align 4
  br label %85

28:                                               ; preds = %4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @php_get_if_index_from_zval(i32* %29, i32* %10)
  %31 = load i32, i32* @FAILURE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @FAILURE, align 4
  store i32 %34, i32* %5, align 4
  br label %85

35:                                               ; preds = %28
  %36 = bitcast i32* %10 to i8*
  store i8* %36, i8** %11, align 8
  store i32 4, i32* %12, align 4
  br label %67

37:                                               ; preds = %4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @convert_to_boolean_ex(i32* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = call i64 @Z_TYPE_P(i32* %40)
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @IS_TRUE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %13, align 4
  br label %64

46:                                               ; preds = %4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @convert_to_long_ex(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i64 @Z_LVAL_P(i32* %49)
  %51 = icmp slt i64 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %9, align 8
  %54 = call i64 @Z_LVAL_P(i32* %53)
  %55 = icmp sgt i64 %54, 255
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @E_WARNING, align 4
  %58 = call i32 @php_error_docref(i32* null, i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @FAILURE, align 4
  store i32 %59, i32* %5, align 4
  br label %85

60:                                               ; preds = %52
  %61 = load i32*, i32** %9, align 8
  %62 = call i64 @Z_LVAL_P(i32* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %60, %37
  %65 = bitcast i32* %13 to i8*
  store i8* %65, i8** %11, align 8
  store i32 4, i32* %12, align 4
  br label %67

66:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %85

67:                                               ; preds = %64, %35
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @setsockopt(i32 %70, i32 %71, i32 %72, i8* %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = load i32, i32* @errno, align 4
  %81 = call i32 @PHP_SOCKET_ERROR(%struct.TYPE_5__* %79, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @FAILURE, align 4
  store i32 %82, i32* %5, align 4
  br label %85

83:                                               ; preds = %67
  %84 = load i32, i32* @SUCCESS, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %83, %78, %66, %56, %33, %26, %24
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @php_do_mcast_opt(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @php_get_if_index_from_zval(i32*, i32*) #1

declare dso_local i32 @convert_to_boolean_ex(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @convert_to_long_ex(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PHP_SOCKET_ERROR(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

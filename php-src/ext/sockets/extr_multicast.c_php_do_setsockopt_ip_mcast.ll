; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c_php_do_setsockopt_ip_mcast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_multicast.c_php_do_setsockopt_ip_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.in_addr = type { i32 }

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@IS_TRUE = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expected a value between 0 and 255\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to set socket option\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_do_setsockopt_ip_mcast(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %74 [
    i32 132, label %17
    i32 130, label %17
    i32 136, label %29
    i32 135, label %46
    i32 134, label %55
  ]

17:                                               ; preds = %4, %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @php_do_mcast_opt(%struct.TYPE_6__* %18, i32 %19, i32 %20, i32* %21)
  %23 = load i32, i32* @FAILURE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @FAILURE, align 4
  store i32 %26, i32* %5, align 4
  br label %93

27:                                               ; preds = %17
  %28 = load i32, i32* @SUCCESS, align 4
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @php_get_if_index_from_zval(i32* %30, i32* %10)
  %32 = load i32, i32* @FAILURE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @FAILURE, align 4
  store i32 %35, i32* %5, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = call i32 @php_if_index_to_addr4(i32 %37, %struct.TYPE_6__* %38, %struct.in_addr* %11)
  %40 = load i32, i32* @FAILURE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @FAILURE, align 4
  store i32 %43, i32* %5, align 4
  br label %93

44:                                               ; preds = %36
  %45 = bitcast %struct.in_addr* %11 to i8*
  store i8* %45, i8** %12, align 8
  store i32 4, i32* %13, align 4
  br label %75

46:                                               ; preds = %4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @convert_to_boolean_ex(i32* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @Z_TYPE_P(i32* %49)
  %51 = load i32, i32* @IS_TRUE, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %14, align 1
  br label %73

55:                                               ; preds = %4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @convert_to_long_ex(i32* %56)
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @Z_LVAL_P(i32* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load i32*, i32** %9, align 8
  %63 = call i64 @Z_LVAL_P(i32* %62)
  %64 = icmp sgt i64 %63, 255
  br i1 %64, label %65, label %69

65:                                               ; preds = %61, %55
  %66 = load i32, i32* @E_WARNING, align 4
  %67 = call i32 @php_error_docref(i32* null, i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @FAILURE, align 4
  store i32 %68, i32* %5, align 4
  br label %93

69:                                               ; preds = %61
  %70 = load i32*, i32** %9, align 8
  %71 = call i64 @Z_LVAL_P(i32* %70)
  %72 = trunc i64 %71 to i8
  store i8 %72, i8* %14, align 1
  br label %73

73:                                               ; preds = %69, %46
  store i8* %14, i8** %12, align 8
  store i32 1, i32* %13, align 4
  br label %75

74:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %93

75:                                               ; preds = %73, %44
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @setsockopt(i32 %78, i32 %79, i32 %80, i8* %81, i32 %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load i32, i32* @errno, align 4
  %89 = call i32 @PHP_SOCKET_ERROR(%struct.TYPE_6__* %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @FAILURE, align 4
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %75
  %92 = load i32, i32* @SUCCESS, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %86, %74, %65, %42, %34, %27, %25
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @php_do_mcast_opt(%struct.TYPE_6__*, i32, i32, i32*) #1

declare dso_local i32 @php_get_if_index_from_zval(i32*, i32*) #1

declare dso_local i32 @php_if_index_to_addr4(i32, %struct.TYPE_6__*, %struct.in_addr*) #1

declare dso_local i32 @convert_to_boolean_ex(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @convert_to_long_ex(i32*) #1

declare dso_local i64 @Z_LVAL_P(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PHP_SOCKET_ERROR(%struct.TYPE_6__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

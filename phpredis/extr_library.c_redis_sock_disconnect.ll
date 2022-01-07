; ModuleID = '/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_disconnect.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_library.c_redis_sock_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32*, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"redis.pconnect.pooling_enabled\00", align 1
@ATOMIC = common dso_local global i32 0, align 4
@REDIS_SOCK_STATUS_DISCONNECTED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redis_sock_disconnect(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = icmp eq %struct.TYPE_6__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FAILURE, align 4
  store i32 %10, i32* %3, align 4
  br label %73

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %62

16:                                               ; preds = %11
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %22 = call i64 @INI_INT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = call %struct.TYPE_7__* @redis_sock_get_connection_pool(%struct.TYPE_6__* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %6, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @php_stream_pclose(i32* %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %30
  br label %53

43:                                               ; preds = %27
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = call i32 @zend_llist_prepend_element(i32* %48, i32** %50)
  br label %52

52:                                               ; preds = %46, %43
  br label %53

53:                                               ; preds = %52, %42
  br label %59

54:                                               ; preds = %16
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @php_stream_close(i32* %57)
  br label %59

59:                                               ; preds = %54, %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %59, %11
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* @ATOMIC, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @REDIS_SOCK_STATUS_DISCONNECTED, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load i32, i32* @SUCCESS, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %9
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @INI_INT(i8*) #1

declare dso_local %struct.TYPE_7__* @redis_sock_get_connection_pool(%struct.TYPE_6__*) #1

declare dso_local i32 @php_stream_pclose(i32*) #1

declare dso_local i32 @zend_llist_prepend_element(i32*, i32**) #1

declare dso_local i32 @php_stream_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

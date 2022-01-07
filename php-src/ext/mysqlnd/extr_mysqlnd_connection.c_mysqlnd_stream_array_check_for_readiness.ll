; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_connection.c_mysqlnd_stream_array_check_for_readiness.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_connection.c_mysqlnd_stream_array_check_for_readiness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@CONN_READY = common dso_local global i32 0, align 4
@CONN_QUIT_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__** @mysqlnd_stream_array_check_for_readiness(%struct.TYPE_7__** %0) #0 {
  %2 = alloca %struct.TYPE_7__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__**, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__** %10, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__** null, %struct.TYPE_7__*** %6, align 8
  br label %11

11:                                               ; preds = %32, %1
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @GET_CONNECTION_STATE(i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @CONN_READY, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @CONN_QUIT_SENT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %15
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %33, i32 1
  store %struct.TYPE_7__** %34, %struct.TYPE_7__*** %4, align 8
  br label %11

35:                                               ; preds = %11
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %79

38:                                               ; preds = %35
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  %41 = call %struct.TYPE_7__** @ecalloc(i32 %40, i32 8)
  store %struct.TYPE_7__** %41, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__** %41, %struct.TYPE_7__*** %8, align 8
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %2, align 8
  store %struct.TYPE_7__** %42, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__** %42, %struct.TYPE_7__*** %5, align 8
  br label %43

43:                                               ; preds = %74, %38
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = icmp ne %struct.TYPE_7__* %45, null
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @GET_CONNECTION_STATE(i32* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @CONN_READY, align 4
  %56 = icmp ule i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @CONN_QUIT_SENT, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57, %47
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %64, align 8
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i32 1
  store %struct.TYPE_7__** %67, %struct.TYPE_7__*** %8, align 8
  br label %74

68:                                               ; preds = %57
  %69 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %71, align 8
  %72 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %72, i32 1
  store %struct.TYPE_7__** %73, %struct.TYPE_7__*** %5, align 8
  br label %74

74:                                               ; preds = %68, %61
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i32 1
  store %struct.TYPE_7__** %76, %struct.TYPE_7__*** %4, align 8
  br label %43

77:                                               ; preds = %43
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %78, align 8
  br label %79

79:                                               ; preds = %77, %35
  %80 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  ret %struct.TYPE_7__** %80
}

declare dso_local i32 @GET_CONNECTION_STATE(i32*) #1

declare dso_local %struct.TYPE_7__** @ecalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

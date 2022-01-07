; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_check_response.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_check_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@EOF = common dso_local global i32 0, align 4
@TYPE_ERR = common dso_local global i32 0, align 4
@TYPE_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @cluster_check_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_check_response(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = call i32 @CLUSTER_CLEAR_ERROR(%struct.TYPE_9__* %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = call i32 @CLUSTER_CLEAR_REPLY(%struct.TYPE_9__* %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call i32 @redis_check_eof(%struct.TYPE_10__* %15, i32 1)
  %17 = icmp eq i32 -1, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EOF, align 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @php_stream_getc(i32 %24)
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  %27 = icmp eq i32 %19, %25
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %2
  store i32 -1, i32* %3, align 4
  br label %100

29:                                               ; preds = %18
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @TYPE_ERR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %29
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %41 = call i32 @php_stream_gets(i32 %39, i8* %40, i32 4096)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %100

44:                                               ; preds = %34
  %45 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %46 = call i32 @IS_MOVED(i8* %45)
  store i32 %46, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %50 = call i64 @IS_ASK(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %48, %44
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @cluster_set_redirection(%struct.TYPE_9__* %57, i8* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %100

63:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %100

64:                                               ; preds = %48
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %68 = call i64 @strlen(i8* %67)
  %69 = sub nsw i64 %68, 2
  %70 = call i32 @cluster_set_err(%struct.TYPE_9__* %65, i8* %66, i64 %69)
  store i32 0, i32* %3, align 4
  br label %100

71:                                               ; preds = %29
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @redis_sock_gets(%struct.TYPE_10__* %74, i32 %77, i32 4, i64* %6)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %100

81:                                               ; preds = %71
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @TYPE_LINE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @strtol(i32 %89, i32* null, i32 10)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %97

93:                                               ; preds = %81
  %94 = load i64, i64* %6, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = call i32 @CLUSTER_CLEAR_ERROR(%struct.TYPE_9__* %98)
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %80, %64, %63, %62, %43, %28
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @CLUSTER_CLEAR_ERROR(%struct.TYPE_9__*) #1

declare dso_local i32 @CLUSTER_CLEAR_REPLY(%struct.TYPE_9__*) #1

declare dso_local i32 @redis_check_eof(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @php_stream_getc(i32) #1

declare dso_local i32 @php_stream_gets(i32, i8*, i32) #1

declare dso_local i32 @IS_MOVED(i8*) #1

declare dso_local i64 @IS_ASK(i8*) #1

declare dso_local i64 @cluster_set_redirection(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @cluster_set_err(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @redis_sock_gets(%struct.TYPE_10__*, i32, i32, i64*) #1

declare dso_local i64 @strtol(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

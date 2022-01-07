; ModuleID = '/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_read_sock_resp.c'
source_filename = "/home/carl/AnghaBench/phpredis/extr_cluster_library.c_cluster_read_sock_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @cluster_read_sock_resp(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = call i8* @ecalloc(i64 1, i32 48)
  %13 = bitcast i8* %12 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %82 [
    i32 130, label %20
    i32 129, label %24
    i32 131, label %37
    i32 132, label %39
    i32 128, label %61
  ]

20:                                               ; preds = %4
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  br label %85

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @estrndup(i8* %28, i64 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %27, %24
  br label %37

37:                                               ; preds = %4, %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %5, align 8
  br label %93

39:                                               ; preds = %4
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @redis_sock_read_bulk_reply(i32* %43, i64 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, -1
  br i1 %51, label %52, label %60

52:                                               ; preds = %39
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = call i32 @cluster_free_reply(%struct.TYPE_4__* %58, i32 1)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %93

60:                                               ; preds = %52, %39
  br label %85

61:                                               ; preds = %4
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load i64, i64* %9, align 8
  %69 = call i8* @ecalloc(i64 %68, i32 8)
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @cluster_multibulk_resp_recursive(i32* %72, i64 %73, i8* %76, i32 %79, i32* %11)
  br label %81

81:                                               ; preds = %67, %61
  br label %85

82:                                               ; preds = %4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = call i32 @cluster_free_reply(%struct.TYPE_4__* %83, i32 1)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %93

85:                                               ; preds = %81, %60, %20
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = call i32 @cluster_free_reply(%struct.TYPE_4__* %89, i32 1)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %93

91:                                               ; preds = %85
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %92, %struct.TYPE_4__** %5, align 8
  br label %93

93:                                               ; preds = %91, %88, %82, %57, %37
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %94
}

declare dso_local i8* @ecalloc(i64, i32) #1

declare dso_local i32 @estrndup(i8*, i64) #1

declare dso_local i32 @redis_sock_read_bulk_reply(i32*, i64) #1

declare dso_local i32 @cluster_free_reply(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @cluster_multibulk_resp_recursive(i32*, i64, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

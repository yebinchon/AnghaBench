; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_d1_lib.c_dtls1_get_timeout.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_d1_lib.c_dtls1_get_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.timeval* @dtls1_get_timeout(%struct.TYPE_6__* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store %struct.timeval* null, %struct.timeval** %3, align 8
  br label %105

23:                                               ; preds = %14, %2
  %24 = call i32 @get_current_time(%struct.timeval* %6)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %54, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %50, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44, %23
  %55 = load %struct.timeval*, %struct.timeval** %5, align 8
  %56 = call i32 @memset(%struct.timeval* %55, i32 0, i32 16)
  %57 = load %struct.timeval*, %struct.timeval** %5, align 8
  store %struct.timeval* %57, %struct.timeval** %3, align 8
  br label %105

58:                                               ; preds = %44, %34
  %59 = load %struct.timeval*, %struct.timeval** %5, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = call i32 @memcpy(%struct.timeval* %59, %struct.TYPE_7__* %63, i32 16)
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.timeval*, %struct.timeval** %5, align 8
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  %71 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.timeval*, %struct.timeval** %5, align 8
  %74 = getelementptr inbounds %struct.timeval, %struct.timeval* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  %77 = load %struct.timeval*, %struct.timeval** %5, align 8
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %58
  %82 = load %struct.timeval*, %struct.timeval** %5, align 8
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.timeval*, %struct.timeval** %5, align 8
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1000000
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %81, %58
  %91 = load %struct.timeval*, %struct.timeval** %5, align 8
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load %struct.timeval*, %struct.timeval** %5, align 8
  %97 = getelementptr inbounds %struct.timeval, %struct.timeval* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp slt i64 %98, 15000
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.timeval*, %struct.timeval** %5, align 8
  %102 = call i32 @memset(%struct.timeval* %101, i32 0, i32 16)
  br label %103

103:                                              ; preds = %100, %95, %90
  %104 = load %struct.timeval*, %struct.timeval** %5, align 8
  store %struct.timeval* %104, %struct.timeval** %3, align 8
  br label %105

105:                                              ; preds = %103, %54, %22
  %106 = load %struct.timeval*, %struct.timeval** %3, align 8
  ret %struct.timeval* %106
}

declare dso_local i32 @get_current_time(%struct.timeval*) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.timeval*, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

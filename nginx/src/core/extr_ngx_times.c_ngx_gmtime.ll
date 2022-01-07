; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_times.c_ngx_gmtime.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_times.c_ngx_gmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_gmtime(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 86400
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %3, align 4
  %22 = srem i32 %21, 86400
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp sgt i32 %23, 2932896
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 2932896, i32* %13, align 4
  store i32 86399, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %18
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 4, %27
  %29 = srem i32 %28, 7
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 3600
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 3600
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sdiv i32 %34, 60
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = srem i32 %36, 60
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 %38, 59
  %40 = add nsw i32 %39, 719527
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, 2
  %43 = mul nsw i32 %42, 400
  %44 = sdiv i32 %43, 146097
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 365, %46
  %48 = load i32, i32* %11, align 4
  %49 = sdiv i32 %48, 4
  %50 = add nsw i32 %47, %49
  %51 = load i32, i32* %11, align 4
  %52 = sdiv i32 %51, 100
  %53 = sub nsw i32 %50, %52
  %54 = load i32, i32* %11, align 4
  %55 = sdiv i32 %54, 400
  %56 = add nsw i32 %53, %55
  %57 = sub nsw i32 %45, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %26
  %61 = load i32, i32* %11, align 4
  %62 = srem i32 %61, 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = srem i32 %65, 100
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = srem i32 %69, 400
  %71 = icmp eq i32 %70, 0
  br label %72

72:                                               ; preds = %68, %64
  %73 = phi i1 [ true, %64 ], [ %71, %68 ]
  br label %74

74:                                               ; preds = %72, %60
  %75 = phi i1 [ false, %60 ], [ %73, %72 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 365, %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %74, %26
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 31
  %86 = mul nsw i32 %85, 10
  %87 = sdiv i32 %86, 306
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 367, %89
  %91 = sdiv i32 %90, 12
  %92 = sub nsw i32 %91, 30
  %93 = sub nsw i32 %88, %92
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp sge i32 %95, 306
  br i1 %96, label %97, label %102

97:                                               ; preds = %83
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 10
  store i32 %101, i32* %10, align 4
  br label %105

102:                                              ; preds = %83
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 6
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  store i64 %111, i64* %113, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 3
  store i64 %119, i64* %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

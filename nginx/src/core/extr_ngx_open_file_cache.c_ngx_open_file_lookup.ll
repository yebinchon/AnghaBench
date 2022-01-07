; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_open_file_cache.c_ngx_open_file_lookup.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_open_file_cache.c_ngx_open_file_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_12__*, %struct.TYPE_10__*, i64)* @ngx_open_file_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ngx_open_file_lookup(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %10, align 8
  br label %20

20:                                               ; preds = %69, %40, %30, %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = icmp ne %struct.TYPE_11__* %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %9, align 8
  br label %20

34:                                               ; preds = %24
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %9, align 8
  br label %20

44:                                               ; preds = %34
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = bitcast %struct.TYPE_11__* %45 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %11, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ngx_strcmp(i32 %49, i32 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %4, align 8
  br label %72

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  br label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi %struct.TYPE_11__* [ %64, %61 ], [ %68, %65 ]
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %9, align 8
  br label %20

71:                                               ; preds = %20
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %72

72:                                               ; preds = %71, %56
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %73
}

declare dso_local i64 @ngx_strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

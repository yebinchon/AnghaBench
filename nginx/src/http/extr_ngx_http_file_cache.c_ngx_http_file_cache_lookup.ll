; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_lookup.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_file_cache.c_ngx_http_file_cache_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__* }

@NGX_HTTP_CACHE_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_11__*, i32*)* @ngx_http_file_cache_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @ngx_http_file_cache_lookup(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = bitcast i64* %7 to i32*
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @ngx_memcpy(i32* %11, i32* %12, i32 8)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %8, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %9, align 8
  br label %26

26:                                               ; preds = %76, %46, %36, %2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %29 = icmp ne %struct.TYPE_10__* %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  store %struct.TYPE_10__* %39, %struct.TYPE_10__** %8, align 8
  br label %26

40:                                               ; preds = %30
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %8, align 8
  br label %26

50:                                               ; preds = %40
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = bitcast %struct.TYPE_10__* %51 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %10, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* @NGX_HTTP_CACHE_KEY_LEN, align 8
  %59 = sub i64 %58, 8
  %60 = call i64 @ngx_memcmp(i32* %54, i32 %57, i64 %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %3, align 8
  br label %79

65:                                               ; preds = %50
  %66 = load i64, i64* %6, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi %struct.TYPE_10__* [ %71, %68 ], [ %75, %72 ]
  store %struct.TYPE_10__* %77, %struct.TYPE_10__** %8, align 8
  br label %26

78:                                               ; preds = %26
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %80
}

declare dso_local i32 @ngx_memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ngx_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

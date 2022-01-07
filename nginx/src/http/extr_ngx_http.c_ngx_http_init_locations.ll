; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_init_locations.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_init_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__** }
%struct.TYPE_11__ = type { %struct.TYPE_11__**, i64, i64, i64, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }

@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_cmp_locations = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ngx_http_init_locations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_init_locations(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @NGX_OK, align 8
  store i64 %22, i64* %4, align 8
  br label %135

23:                                               ; preds = %3
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @ngx_http_cmp_locations, align 4
  %26 = call i32 @ngx_queue_sort(i32* %24, i32 %25)
  store i32* null, i32** %11, align 8
  store i32 0, i32* %8, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @ngx_queue_head(i32* %27)
  store i32* %28, i32** %9, align 8
  br label %29

29:                                               ; preds = %78, %23
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32* @ngx_queue_sentinel(i32* %31)
  %33 = icmp ne i32* %30, %32
  br i1 %33, label %34, label %81

34:                                               ; preds = %29
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %14, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = icmp ne %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  br label %49

45:                                               ; preds = %34
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  br label %49

49:                                               ; preds = %45, %41
  %50 = phi %struct.TYPE_11__* [ %44, %41 ], [ %48, %45 ]
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %13, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = call i64 @ngx_http_init_locations(%struct.TYPE_12__* %51, %struct.TYPE_10__* null, %struct.TYPE_11__* %52)
  %54 = load i64, i64* @NGX_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %4, align 8
  br label %135

58:                                               ; preds = %49
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32*, i32** %9, align 8
  store i32* %69, i32** %11, align 8
  br label %70

70:                                               ; preds = %68, %63
  br label %78

71:                                               ; preds = %58
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %81

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %70
  %79 = load i32*, i32** %9, align 8
  %80 = call i32* @ngx_queue_next(i32* %79)
  store i32* %80, i32** %9, align 8
  br label %29

81:                                               ; preds = %76, %29
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32* @ngx_queue_sentinel(i32* %83)
  %85 = icmp ne i32* %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** %10, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @ngx_queue_split(i32* %87, i32* %88, i32* %12)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32*, i32** %11, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %133

93:                                               ; preds = %90
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = trunc i64 %100 to i32
  %102 = call %struct.TYPE_11__** @ngx_palloc(i32 %96, i32 %101)
  store %struct.TYPE_11__** %102, %struct.TYPE_11__*** %15, align 8
  %103 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %104 = icmp eq %struct.TYPE_11__** %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i64, i64* @NGX_ERROR, align 8
  store i64 %106, i64* %4, align 8
  br label %135

107:                                              ; preds = %93
  %108 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store %struct.TYPE_11__** %108, %struct.TYPE_11__*** %110, align 8
  %111 = load i32*, i32** %11, align 8
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %125, %107
  %113 = load i32*, i32** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32* @ngx_queue_sentinel(i32* %114)
  %116 = icmp ne i32* %113, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load i32*, i32** %9, align 8
  %119 = bitcast i32* %118 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %119, %struct.TYPE_9__** %14, align 8
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %123, i32 1
  store %struct.TYPE_11__** %124, %struct.TYPE_11__*** %15, align 8
  store %struct.TYPE_11__* %122, %struct.TYPE_11__** %123, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32*, i32** %9, align 8
  %127 = call i32* @ngx_queue_next(i32* %126)
  store i32* %127, i32** %9, align 8
  br label %112

128:                                              ; preds = %112
  %129 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %15, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %129, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @ngx_queue_split(i32* %130, i32* %131, i32* %12)
  br label %133

133:                                              ; preds = %128, %90
  %134 = load i64, i64* @NGX_OK, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %133, %105, %56, %21
  %136 = load i64, i64* %4, align 8
  ret i64 %136
}

declare dso_local i32 @ngx_queue_sort(i32*, i32) #1

declare dso_local i32* @ngx_queue_head(i32*) #1

declare dso_local i32* @ngx_queue_sentinel(i32*) #1

declare dso_local i32* @ngx_queue_next(i32*) #1

declare dso_local i32 @ngx_queue_split(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__** @ngx_palloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

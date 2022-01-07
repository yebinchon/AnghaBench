; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_create_locations_list.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_create_locations_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ngx_http_create_locations_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_create_locations_list(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @ngx_queue_last(i32* %12)
  %14 = icmp eq i32* %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %110

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32* @ngx_queue_next(i32* %25)
  call void @ngx_http_create_locations_list(i32* %24, i32* %26)
  br label %110

27:                                               ; preds = %16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32* @ngx_queue_next(i32* %38)
  store i32* %39, i32** %7, align 8
  br label %40

40:                                               ; preds = %67, %27
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i32* @ngx_queue_sentinel(i32* %42)
  %44 = icmp ne i32* %41, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = bitcast i32* %46 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %10, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ugt i64 %48, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %45
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @ngx_filename_cmp(i32* %56, i32* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55, %45
  br label %70

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66
  %68 = load i32*, i32** %7, align 8
  %69 = call i32* @ngx_queue_next(i32* %68)
  store i32* %69, i32** %7, align 8
  br label %40

70:                                               ; preds = %65, %40
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @ngx_queue_next(i32* %71)
  store i32* %72, i32** %4, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp eq i32* %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %7, align 8
  call void @ngx_http_create_locations_list(i32* %77, i32* %78)
  br label %110

79:                                               ; preds = %70
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ngx_queue_split(i32* %80, i32* %81, i32* %8)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @ngx_queue_add(i32* %84, i32* %8)
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %3, align 8
  %88 = call i32* @ngx_queue_sentinel(i32* %87)
  %89 = icmp eq i32* %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32* @ngx_queue_head(i32* %94)
  call void @ngx_http_create_locations_list(i32* %92, i32* %95)
  br label %110

96:                                               ; preds = %79
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @ngx_queue_split(i32* %98, i32* %99, i32* %8)
  %101 = load i32*, i32** %3, align 8
  %102 = call i32 @ngx_queue_add(i32* %101, i32* %8)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = call i32* @ngx_queue_head(i32* %106)
  call void @ngx_http_create_locations_list(i32* %104, i32* %107)
  %108 = load i32*, i32** %3, align 8
  %109 = load i32*, i32** %7, align 8
  call void @ngx_http_create_locations_list(i32* %108, i32* %109)
  br label %110

110:                                              ; preds = %96, %90, %76, %23, %15
  ret void
}

declare dso_local i32* @ngx_queue_last(i32*) #1

declare dso_local i32* @ngx_queue_next(i32*) #1

declare dso_local i32* @ngx_queue_sentinel(i32*) #1

declare dso_local i64 @ngx_filename_cmp(i32*, i32*, i64) #1

declare dso_local i32 @ngx_queue_split(i32*, i32*, i32*) #1

declare dso_local i32 @ngx_queue_add(i32*, i32*) #1

declare dso_local i32* @ngx_queue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

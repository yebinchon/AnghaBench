; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_done_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_done_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32*, i32* }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"&call=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&name=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, i8*, i32*)* @ngx_rtmp_notify_done_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ngx_rtmp_notify_done_create(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %19 = call %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(i32* %17, i32 %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %14, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call %struct.TYPE_13__* @ngx_alloc_chain_link(i32* %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %9, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %138

25:                                               ; preds = %3
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @ngx_strlen(i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @ngx_strlen(i32* %35)
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i64 [ %36, %32 ], [ 0, %37 ]
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @ngx_strlen(i32* %45)
  br label %48

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %42
  %49 = phi i64 [ %46, %42 ], [ 0, %47 ]
  store i64 %49, i64* %13, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i64, i64* %11, align 8
  %52 = add i64 7, %51
  %53 = add i64 %52, 7
  %54 = load i64, i64* %12, align 8
  %55 = mul i64 %54, 3
  %56 = add i64 %53, %55
  %57 = add i64 %56, 1
  %58 = load i64, i64* %13, align 8
  %59 = add i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call %struct.TYPE_14__* @ngx_create_temp_buf(i32* %50, i32 %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %10, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = icmp eq %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %138

65:                                               ; preds = %48
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %68, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i8* @ngx_cpymem(i32* %73, i32* bitcast ([7 x i8]* @.str to i32*), i64 6)
  %75 = bitcast i8* %74 to i32*
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  store i32* %75, i32** %77, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %11, align 8
  %85 = call i8* @ngx_cpymem(i32* %80, i32* %83, i64 %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %65
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @ngx_cpymem(i32* %94, i32* bitcast ([7 x i8]* @.str.1 to i32*), i64 6)
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  store i32* %96, i32** %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %107 = call i64 @ngx_escape_uri(i32* %101, i32* %104, i64 %105, i32 %106)
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store i32* %108, i32** %110, align 8
  br label %111

111:                                              ; preds = %91, %65
  %112 = load i64, i64* %13, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %116, align 8
  store i32 38, i32* %117, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i8* @ngx_cpymem(i32* %121, i32* %124, i64 %125)
  %127 = bitcast i8* %126 to i32*
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  store i32* %127, i32** %129, align 8
  br label %130

130:                                              ; preds = %114, %111
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %137 = call %struct.TYPE_13__* @ngx_rtmp_notify_create_request(i32* %131, i32* %132, i32 %135, %struct.TYPE_13__* %136)
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %4, align 8
  br label %138

138:                                              ; preds = %130, %64, %24
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %139
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local %struct.TYPE_14__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_13__* @ngx_rtmp_notify_create_request(i32*, i32*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

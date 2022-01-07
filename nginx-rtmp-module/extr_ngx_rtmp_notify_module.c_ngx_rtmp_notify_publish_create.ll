; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_publish_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_publish_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"&call=publish\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"&name=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"&type=\00", align 1
@NGX_RTMP_NOTIFY_PUBLISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32*, i8*, i32*)* @ngx_rtmp_notify_publish_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @ngx_rtmp_notify_publish_create(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_10__* @ngx_alloc_chain_link(i32* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %125

21:                                               ; preds = %3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @ngx_strlen(i32* %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @ngx_strlen(i32* %28)
  store i64 %29, i64* %12, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @ngx_strlen(i32* %32)
  store i64 %33, i64* %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %11, align 8
  %36 = mul i64 %35, 3
  %37 = add i64 21, %36
  %38 = add i64 %37, 7
  %39 = load i64, i64* %12, align 8
  %40 = mul i64 %39, 3
  %41 = add i64 %38, %40
  %42 = add i64 %41, 1
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.TYPE_11__* @ngx_create_temp_buf(i32* %34, i32 %45)
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %10, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = icmp eq %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %21
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %125

50:                                               ; preds = %21
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %53, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i8* @ngx_cpymem(i32* %58, i32* bitcast ([14 x i8]* @.str to i32*), i64 13)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i8* @ngx_cpymem(i32* %65, i32* bitcast ([7 x i8]* @.str.1 to i32*), i64 6)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %78 = call i64 @ngx_escape_uri(i32* %72, i32* %75, i64 %76, i32 %77)
  %79 = inttoptr i64 %78 to i32*
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @ngx_cpymem(i32* %84, i32* bitcast ([7 x i8]* @.str.2 to i32*), i64 6)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %97 = call i64 @ngx_escape_uri(i32* %91, i32* %94, i64 %95, i32 %96)
  %98 = inttoptr i64 %97 to i32*
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32* %98, i32** %100, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %50
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %105, align 8
  store i32 38, i32* %106, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* %13, align 8
  %115 = call i8* @ngx_cpymem(i32* %110, i32* %113, i64 %114)
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  store i32* %116, i32** %118, align 8
  br label %119

119:                                              ; preds = %103, %50
  %120 = load i32*, i32** %5, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* @NGX_RTMP_NOTIFY_PUBLISH, align 4
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %124 = call %struct.TYPE_10__* @ngx_rtmp_notify_create_request(i32* %120, i32* %121, i32 %122, %struct.TYPE_10__* %123)
  store %struct.TYPE_10__* %124, %struct.TYPE_10__** %4, align 8
  br label %125

125:                                              ; preds = %119, %49, %20
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %126
}

declare dso_local %struct.TYPE_10__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local %struct.TYPE_11__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_10__* @ngx_rtmp_notify_create_request(i32*, i32*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

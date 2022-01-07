; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_record_done_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_record_done_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32*, i32* }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"&call=record_done\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"&recorder=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"&name=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&path=\00", align 1
@NGX_RTMP_NOTIFY_RECORD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_17__* (i32*, i8*, i32*)* @ngx_rtmp_notify_record_done_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_17__* @ngx_rtmp_notify_record_done_create(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %8, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %18 = call %struct.TYPE_16__* @ngx_rtmp_get_module_ctx(i32* %16, i32 %17)
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_17__* @ngx_alloc_chain_link(i32* %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %10, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %22 = icmp eq %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %164

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @ngx_strlen(i32* %27)
  store i64 %28, i64* %12, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @ngx_strlen(i32* %31)
  store i64 %32, i64* %13, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add i64 29, %38
  %40 = add i64 %39, 7
  %41 = load i64, i64* %12, align 8
  %42 = mul i64 %41, 3
  %43 = add i64 %40, %42
  %44 = add i64 %43, 7
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = add i64 %44, %50
  %52 = add i64 %51, 1
  %53 = load i64, i64* %13, align 8
  %54 = add i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.TYPE_18__* @ngx_create_temp_buf(i32* %33, i32 %55)
  store %struct.TYPE_18__* %56, %struct.TYPE_18__** %11, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %58 = icmp eq %struct.TYPE_18__* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %24
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %4, align 8
  br label %164

60:                                               ; preds = %24
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  store %struct.TYPE_18__* %61, %struct.TYPE_18__** %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i8* @ngx_cpymem(i32* %68, i32* bitcast ([18 x i8]* @.str to i32*), i64 17)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i8* @ngx_cpymem(i32* %75, i32* bitcast ([11 x i8]* @.str.1 to i32*), i64 10)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %93 = call i64 @ngx_escape_uri(i32* %82, i32* %86, i64 %91, i32 %92)
  %94 = inttoptr i64 %93 to i32*
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i8* @ngx_cpymem(i32* %99, i32* bitcast ([7 x i8]* @.str.2 to i32*), i64 6)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %112 = call i64 @ngx_escape_uri(i32* %106, i32* %109, i64 %110, i32 %111)
  %113 = inttoptr i64 %112 to i32*
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  store i32* %113, i32** %115, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i8* @ngx_cpymem(i32* %118, i32* bitcast ([7 x i8]* @.str.3 to i32*), i64 6)
  %120 = bitcast i8* %119 to i32*
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  store i32* %120, i32** %122, align 8
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %136 = call i64 @ngx_escape_uri(i32* %125, i32* %129, i64 %134, i32 %135)
  %137 = inttoptr i64 %136 to i32*
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i32* %137, i32** %139, align 8
  %140 = load i64, i64* %13, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %60
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %144, align 8
  store i32 38, i32* %145, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %13, align 8
  %154 = call i8* @ngx_cpymem(i32* %149, i32* %152, i64 %153)
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 0
  store i32* %155, i32** %157, align 8
  br label %158

158:                                              ; preds = %142, %60
  %159 = load i32*, i32** %5, align 8
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* @NGX_RTMP_NOTIFY_RECORD_DONE, align 4
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %163 = call %struct.TYPE_17__* @ngx_rtmp_notify_create_request(i32* %159, i32* %160, i32 %161, %struct.TYPE_17__* %162)
  store %struct.TYPE_17__* %163, %struct.TYPE_17__** %4, align 8
  br label %164

164:                                              ; preds = %158, %59, %23
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  ret %struct.TYPE_17__* %165
}

declare dso_local %struct.TYPE_16__* @ngx_rtmp_get_module_ctx(i32*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_alloc_chain_link(i32*) #1

declare dso_local i64 @ngx_strlen(i32*) #1

declare dso_local %struct.TYPE_18__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32*, i64, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_rtmp_notify_create_request(i32*, i32*, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

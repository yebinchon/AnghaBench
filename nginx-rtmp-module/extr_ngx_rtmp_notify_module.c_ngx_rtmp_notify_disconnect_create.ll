; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_disconnect_create.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_notify_module.c_ngx_rtmp_notify_disconnect_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_24__*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_22__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i32, i32 }

@ngx_rtmp_notify_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"&call=disconnect\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&app=\00", align 1
@NGX_ESCAPE_ARGS = common dso_local global i32 0, align 4
@NGX_RTMP_NOTIFY_DISCONNECT = common dso_local global i64 0, align 8
@NGX_RTMP_NETCALL_HTTP_POST = common dso_local global i64 0, align 8
@ngx_rtmp_notify_urlencoded = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_22__*, i8*, i32*)* @ngx_rtmp_notify_disconnect_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @ngx_rtmp_notify_disconnect_create(%struct.TYPE_22__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = load i32, i32* @ngx_rtmp_notify_module, align 4
  %16 = call %struct.TYPE_23__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_22__* %14, i32 %15)
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %8, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_24__* @ngx_alloc_chain_link(i32* %17)
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %12, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %20 = icmp eq %struct.TYPE_24__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %140

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 3
  %29 = sext i32 %28 to i64
  %30 = add i64 23, %29
  %31 = add i64 %30, 1
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add i64 %31, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.TYPE_25__* @ngx_create_temp_buf(i32* %23, i32 %38)
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %13, align 8
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %41 = icmp eq %struct.TYPE_25__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %140

43:                                               ; preds = %22
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 1
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %48, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i8* @ngx_cpymem(i32* %51, i32* bitcast ([17 x i8]* @.str to i32*), i32 16)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i8* @ngx_cpymem(i32* %58, i32* bitcast ([6 x i8]* @.str.1 to i32*), i32 5)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @NGX_ESCAPE_ARGS, align 4
  %75 = call i64 @ngx_escape_uri(i32* %65, i32 %69, i32 %73, i32 %74)
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  store i32* %76, i32** %78, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %43
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %86, align 8
  store i32 38, i32* %87, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @ngx_cpymem(i32* %91, i32* %95, i32 %99)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  store i32* %101, i32** %103, align 8
  br label %104

104:                                              ; preds = %84, %43
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %106, align 8
  %108 = load i64, i64* @NGX_RTMP_NOTIFY_DISCONNECT, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %107, i64 %108
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %109, align 8
  store %struct.TYPE_21__* %110, %struct.TYPE_21__** %9, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = call %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_session(%struct.TYPE_22__* %111, i32* %112)
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %10, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %115 = icmp eq %struct.TYPE_24__* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %140

117:                                              ; preds = %104
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  store %struct.TYPE_24__* %118, %struct.TYPE_24__** %120, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %11, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NGX_RTMP_NETCALL_HTTP_POST, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %127, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %10, align 8
  br label %128

128:                                              ; preds = %126, %117
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = call %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_request(i64 %131, i32* %133, i32* %135, %struct.TYPE_24__* %136, %struct.TYPE_24__* %137, i32* %138, i32* @ngx_rtmp_notify_urlencoded)
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %4, align 8
  br label %140

140:                                              ; preds = %128, %116, %42, %21
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %141
}

declare dso_local %struct.TYPE_23__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_alloc_chain_link(i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_create_temp_buf(i32*, i32) #1

declare dso_local i8* @ngx_cpymem(i32*, i32*, i32) #1

declare dso_local i64 @ngx_escape_uri(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_session(%struct.TYPE_22__*, i32*) #1

declare dso_local %struct.TYPE_24__* @ngx_rtmp_netcall_http_format_request(i64, i32*, i32*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

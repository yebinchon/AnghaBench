; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_redirect.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_control_module.c_ngx_rtmp_control_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32*, i32*, i32*, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }

@ngx_rtmp_control_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"publisher\00", align 1
@NGX_RTMP_CONTROL_FILTER_PUBLISHER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"subscriber\00", align 1
@NGX_RTMP_CONTROL_FILTER_SUBSCRIBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@NGX_RTMP_CONTROL_FILTER_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Undefined filter\00", align 1
@ngx_rtmp_control_redirect_handler = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_INT_T_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%ui\00", align 1
@NGX_HTTP_OK = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*)* @ngx_rtmp_control_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_control_redirect(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = load i32, i32* @ngx_rtmp_control_module, align 4
  %14 = call %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_21__* %12, i32 %13)
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %11, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 9
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ngx_memcmp(i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @NGX_RTMP_CONTROL_FILTER_PUBLISHER, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %83

36:                                               ; preds = %21, %2
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp eq i64 %41, 10
  br i1 %42, label %43, label %58

43:                                               ; preds = %36
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @ngx_memcmp(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* @NGX_RTMP_CONTROL_FILTER_SUBSCRIBER, align 4
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %82

58:                                               ; preds = %43, %36
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %63, 6
  br i1 %64, label %65, label %80

65:                                               ; preds = %58
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @ngx_memcmp(i32 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32, i32* @NGX_RTMP_CONTROL_FILTER_CLIENT, align 4
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %81

80:                                               ; preds = %65, %58
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %154

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %54
  br label %83

83:                                               ; preds = %82, %32
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %85 = load i32, i32* @ngx_rtmp_control_redirect_handler, align 4
  %86 = call i8* @ngx_rtmp_control_walk(%struct.TYPE_21__* %84, i32 %85)
  store i8* %86, i8** %10, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** @NGX_CONF_OK, align 8
  %89 = icmp ne i8* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %154

91:                                               ; preds = %83
  %92 = load i64, i64* @NGX_INT_T_LEN, align 8
  store i64 %92, i64* %6, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i64, i64* %6, align 8
  %99 = call i32* @ngx_palloc(i32 %97, i64 %98)
  store i32* %99, i32** %7, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %154

103:                                              ; preds = %91
  %104 = load i32*, i32** %7, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32* @ngx_snprintf(i32* %104, i64 %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = ptrtoint i32* %109 to i64
  %112 = ptrtoint i32* %110 to i64
  %113 = sub i64 %111, %112
  %114 = sdiv exact i64 %113, 4
  store i64 %114, i64* %6, align 8
  %115 = load i32, i32* @NGX_HTTP_OK, align 4
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  store i64 %119, i64* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call %struct.TYPE_23__* @ngx_calloc_buf(i32 %125)
  store %struct.TYPE_23__* %126, %struct.TYPE_23__** %8, align 8
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %128 = icmp eq %struct.TYPE_23__* %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %103
  br label %154

130:                                              ; preds = %103
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 4
  store i32* %131, i32** %133, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 5
  store i32* %131, i32** %135, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 2
  store i32* %138, i32** %140, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 3
  store i32* %138, i32** %142, align 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  %147 = call i32 @ngx_memzero(%struct.TYPE_22__* %9, i32 8)
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store %struct.TYPE_23__* %148, %struct.TYPE_23__** %149, align 8
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %151 = call i32 @ngx_http_send_header(%struct.TYPE_21__* %150)
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %153 = call i32 @ngx_http_output_filter(%struct.TYPE_21__* %152, %struct.TYPE_22__* %9)
  store i32 %153, i32* %3, align 4
  br label %156

154:                                              ; preds = %129, %102, %90, %80
  %155 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %154, %130
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_20__* @ngx_http_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_memcmp(i32, i8*, i32) #1

declare dso_local i8* @ngx_rtmp_control_walk(%struct.TYPE_21__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32* @ngx_snprintf(i32*, i64, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_calloc_buf(i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_http_send_header(%struct.TYPE_21__*) #1

declare dso_local i32 @ngx_http_output_filter(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_header_filter.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_gzip_filter_module.c_ngx_http_gzip_header_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_23__, i32, i32, i32, i64 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_24__*, i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_29__, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_27__ = type { i32, i64, i32, i32 }

@ngx_http_gzip_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_HTTP_FORBIDDEN = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_FOUND = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*)* @ngx_http_gzip_header_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_gzip_header_filter(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %8 = load i32, i32* @ngx_http_gzip_filter_module, align 4
  %9 = call i8* @ngx_http_get_module_loc_conf(%struct.TYPE_25__* %7, i32 %8)
  %10 = bitcast i8* %9 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %10, %struct.TYPE_27__** %6, align 8
  %11 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %77

15:                                               ; preds = %1
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NGX_HTTP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NGX_HTTP_FORBIDDEN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_HTTP_NOT_FOUND, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %77, label %36

36:                                               ; preds = %29, %22, %15
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %39, align 8
  %41 = icmp ne %struct.TYPE_24__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %77, label %51

51:                                               ; preds = %42, %36
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %57, %51
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 2
  %70 = call i32* @ngx_http_test_content_type(%struct.TYPE_25__* %67, i32* %69)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72, %66, %57, %42, %29, %1
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %79 = call i32 @ngx_http_next_header_filter(%struct.TYPE_25__* %78)
  store i32 %79, i32* %2, align 4
  br label %163

80:                                               ; preds = %72
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %80
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %89 = call i64 @ngx_http_gzip_ok(%struct.TYPE_25__* %88)
  %90 = load i64, i64* @NGX_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %94 = call i32 @ngx_http_next_header_filter(%struct.TYPE_25__* %93)
  store i32 %94, i32* %2, align 4
  br label %163

95:                                               ; preds = %87
  br label %105

96:                                               ; preds = %80
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %103 = call i32 @ngx_http_next_header_filter(%struct.TYPE_25__* %102)
  store i32 %103, i32* %2, align 4
  br label %163

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %95
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_26__* @ngx_pcalloc(i32 %108, i32 16)
  store %struct.TYPE_26__* %109, %struct.TYPE_26__** %5, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %111 = icmp eq %struct.TYPE_26__* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i32, i32* @NGX_ERROR, align 4
  store i32 %113, i32* %2, align 4
  br label %163

114:                                              ; preds = %105
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %117 = load i32, i32* @ngx_http_gzip_filter_module, align 4
  %118 = call i32 @ngx_http_set_ctx(%struct.TYPE_25__* %115, %struct.TYPE_26__* %116, i32 %117)
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 1
  store %struct.TYPE_25__* %119, %struct.TYPE_25__** %121, align 8
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %131 = call i32 @ngx_http_gzip_filter_memory(%struct.TYPE_25__* %129, %struct.TYPE_26__* %130)
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 3
  %135 = call %struct.TYPE_24__* @ngx_list_push(i32* %134)
  store %struct.TYPE_24__* %135, %struct.TYPE_24__** %4, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %137 = icmp eq %struct.TYPE_24__* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %114
  %139 = load i32, i32* @NGX_ERROR, align 4
  store i32 %139, i32* %2, align 4
  br label %163

140:                                              ; preds = %114
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  %145 = call i32 @ngx_str_set(%struct.TYPE_29__* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 1
  %148 = call i32 @ngx_str_set(%struct.TYPE_29__* %147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  store %struct.TYPE_24__* %149, %struct.TYPE_24__** %152, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  store i32 1, i32* %154, align 4
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %156 = call i32 @ngx_http_clear_content_length(%struct.TYPE_25__* %155)
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %158 = call i32 @ngx_http_clear_accept_ranges(%struct.TYPE_25__* %157)
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %160 = call i32 @ngx_http_weak_etag(%struct.TYPE_25__* %159)
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = call i32 @ngx_http_next_header_filter(%struct.TYPE_25__* %161)
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %140, %138, %112, %101, %92, %77
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i8* @ngx_http_get_module_loc_conf(%struct.TYPE_25__*, i32) #1

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @ngx_http_next_header_filter(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_http_gzip_ok(%struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_26__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_http_gzip_filter_memory(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_24__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_str_set(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @ngx_http_clear_content_length(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_clear_accept_ranges(%struct.TYPE_25__*) #1

declare dso_local i32 @ngx_http_weak_etag(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

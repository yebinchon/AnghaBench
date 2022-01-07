; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_special_response.c_ngx_http_send_error_page.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_special_response.c_ngx_http_send_error_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32, i64, i64, %struct.TYPE_30__, %struct.TYPE_28__, i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { i8*, i64 }
%struct.TYPE_34__ = type { i64, %struct.TYPE_32__, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_35__ = type { i64 }

@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_HEAD = common dso_local global i64 0, align 8
@NGX_HTTP_GET = common dso_local global i64 0, align 8
@ngx_http_core_get_method = common dso_local global i32 0, align 4
@NGX_HTTP_MOVED_PERMANENTLY = common dso_local global i64 0, align 8
@NGX_HTTP_MOVED_TEMPORARILY = common dso_local global i64 0, align 8
@NGX_HTTP_SEE_OTHER = common dso_local global i64 0, align 8
@NGX_HTTP_TEMPORARY_REDIRECT = common dso_local global i64 0, align 8
@NGX_HTTP_PERMANENT_REDIRECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_HTTP_OFF_3XX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_33__*, %struct.TYPE_34__*)* @ngx_http_send_error_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_send_error_page(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_32__, align 8
  %8 = alloca %struct.TYPE_32__, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %11 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @NGX_HTTP_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %16, %2
  %24 = load i64, i64* %6, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 2
  %34 = call i64 @ngx_http_complex_value(%struct.TYPE_33__* %31, %struct.TYPE_29__* %33, %struct.TYPE_32__* %7)
  %35 = load i64, i64* @NGX_OK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @NGX_ERROR, align 8
  store i64 %38, i64* %3, align 8
  br label %170

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 47
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %58 = call i32 @ngx_http_split_args(%struct.TYPE_33__* %57, %struct.TYPE_32__* %7, %struct.TYPE_32__* %8)
  br label %64

59:                                               ; preds = %50
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 1
  %62 = bitcast %struct.TYPE_32__* %8 to i8*
  %63 = bitcast %struct.TYPE_32__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 8 %63, i64 16, i1 false)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i64, i64* @NGX_HTTP_GET, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @ngx_http_core_get_method, align 4
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %64
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %79 = call i64 @ngx_http_internal_redirect(%struct.TYPE_33__* %78, %struct.TYPE_32__* %7, %struct.TYPE_32__* %8)
  store i64 %79, i64* %3, align 8
  br label %170

80:                                               ; preds = %43, %39
  %81 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %7, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %93 = call i64 @ngx_http_named_location(%struct.TYPE_33__* %92, %struct.TYPE_32__* %7)
  store i64 %93, i64* %3, align 8
  br label %170

94:                                               ; preds = %84, %80
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 1
  %98 = call %struct.TYPE_31__* @ngx_list_push(i32* %97)
  store %struct.TYPE_31__* %98, %struct.TYPE_31__** %9, align 8
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %100 = icmp eq %struct.TYPE_31__* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i64, i64* @NGX_ERROR, align 8
  store i64 %102, i64* %3, align 8
  br label %170

103:                                              ; preds = %94
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @NGX_HTTP_MOVED_PERMANENTLY, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @NGX_HTTP_MOVED_TEMPORARILY, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %107
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* @NGX_HTTP_SEE_OTHER, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* @NGX_HTTP_TEMPORARY_REDIRECT, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i64, i64* %6, align 8
  %121 = load i64, i64* @NGX_HTTP_PERMANENT_REDIRECT, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i64, i64* @NGX_HTTP_MOVED_TEMPORARILY, align 8
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 1
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %119, %115, %111, %107, %103
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %130, i32 0, i32 2
  %132 = call i32 @ngx_str_set(i32* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 1
  %135 = bitcast %struct.TYPE_32__* %134 to i8*
  %136 = bitcast %struct.TYPE_32__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 16, i1 false)
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %138 = call i32 @ngx_http_clear_location(%struct.TYPE_33__* %137)
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  store %struct.TYPE_31__* %139, %struct.TYPE_31__** %142, align 8
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %144 = load i32, i32* @ngx_http_core_module, align 4
  %145 = call %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__* %143, i32 %144)
  store %struct.TYPE_35__* %145, %struct.TYPE_35__** %10, align 8
  %146 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %127
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %158 = call i64 @ngx_http_send_refresh(%struct.TYPE_33__* %157)
  store i64 %158, i64* %3, align 8
  br label %170

159:                                              ; preds = %150, %127
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @NGX_HTTP_MOVED_PERMANENTLY, align 8
  %166 = sub nsw i64 %164, %165
  %167 = load i64, i64* @NGX_HTTP_OFF_3XX, align 8
  %168 = add nsw i64 %166, %167
  %169 = call i64 @ngx_http_send_special_response(%struct.TYPE_33__* %160, %struct.TYPE_35__* %161, i64 %168)
  store i64 %169, i64* %3, align 8
  br label %170

170:                                              ; preds = %159, %156, %101, %91, %77, %37
  %171 = load i64, i64* %3, align 8
  ret i64 %171
}

declare dso_local i64 @ngx_http_complex_value(%struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ngx_http_split_args(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_internal_redirect(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_32__*) #1

declare dso_local i64 @ngx_http_named_location(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_31__* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i32 @ngx_http_clear_location(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__*, i32) #1

declare dso_local i64 @ngx_http_send_refresh(%struct.TYPE_33__*) #1

declare dso_local i64 @ngx_http_send_special_response(%struct.TYPE_33__*, %struct.TYPE_35__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

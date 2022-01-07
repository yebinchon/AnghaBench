; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_destination_charset.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_destination_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__, %struct.TYPE_27__* }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_31__*, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_34__ = type { %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i32, i64, i64 }
%struct.TYPE_25__ = type { i64, i64, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_34__* }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_NO_CHARSET = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown charset \22%V\22 to override\00", align 1
@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@NGX_HTTP_CHARSET_OFF = common dso_local global i64 0, align 8
@NGX_HTTP_CHARSET_VAR = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_33__*, %struct.TYPE_31__*)* @ngx_http_destination_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_destination_charset(%struct.TYPE_33__* %0, %struct.TYPE_31__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %5, align 8
  %11 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %18, i64* %3, align 8
  br label %144

19:                                               ; preds = %2
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %24 = icmp ne %struct.TYPE_31__* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %25
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %35 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %37, align 8
  %39 = bitcast %struct.TYPE_31__* %34 to i8*
  %40 = bitcast %struct.TYPE_31__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 16, i1 false)
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = call i64 @ngx_http_get_charset(%struct.TYPE_33__* %41, %struct.TYPE_31__* %42)
  store i64 %43, i64* %6, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @NGX_HTTP_NO_CHARSET, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %3, align 8
  br label %144

49:                                               ; preds = %33
  %50 = load i32, i32* @NGX_LOG_ERR, align 4
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %57 = call i32 @ngx_log_error(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_31__* %56)
  %58 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %58, i64* %3, align 8
  br label %144

59:                                               ; preds = %25, %19
  %60 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %61 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %62 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__* %60, i32 %61)
  store %struct.TYPE_25__* %62, %struct.TYPE_25__** %9, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* @NGX_HTTP_CHARSET_OFF, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %70, i64* %3, align 8
  br label %144

71:                                               ; preds = %59
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %71
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %84, i64* %3, align 8
  br label %144

85:                                               ; preds = %78
  br label %95

86:                                               ; preds = %71
  %87 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 2
  %90 = call i32* @ngx_http_test_content_type(%struct.TYPE_33__* %87, i32* %89)
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %93, i64* %3, align 8
  br label %144

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %95
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %101 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %102 = call %struct.TYPE_24__* @ngx_http_get_module_main_conf(%struct.TYPE_33__* %100, i32 %101)
  store %struct.TYPE_24__* %102, %struct.TYPE_24__** %10, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_34__*, %struct.TYPE_34__** %105, align 8
  store %struct.TYPE_34__* %106, %struct.TYPE_34__** %7, align 8
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 0
  %112 = bitcast %struct.TYPE_31__* %107 to i8*
  %113 = bitcast %struct.TYPE_31__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = load i64, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  br label %144

115:                                              ; preds = %95
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @NGX_HTTP_CHARSET_VAR, align 8
  %119 = sub i64 %117, %118
  %120 = call %struct.TYPE_32__* @ngx_http_get_indexed_variable(%struct.TYPE_33__* %116, i64 %119)
  store %struct.TYPE_32__* %120, %struct.TYPE_32__** %8, align 8
  %121 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %122 = icmp eq %struct.TYPE_32__* %121, null
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %115
  %129 = load i64, i64* @NGX_ERROR, align 8
  store i64 %129, i64* %3, align 8
  br label %144

130:                                              ; preds = %123
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %143 = call i64 @ngx_http_get_charset(%struct.TYPE_33__* %141, %struct.TYPE_31__* %142)
  store i64 %143, i64* %3, align 8
  br label %144

144:                                              ; preds = %130, %128, %99, %92, %83, %69, %49, %47, %17
  %145 = load i64, i64* %3, align 8
  ret i64 %145
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ngx_http_get_charset(%struct.TYPE_33__*, %struct.TYPE_31__*) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_31__*) #2

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_33__*, i32) #2

declare dso_local i32* @ngx_http_test_content_type(%struct.TYPE_33__*, i32*) #2

declare dso_local %struct.TYPE_24__* @ngx_http_get_module_main_conf(%struct.TYPE_33__*, i32) #2

declare dso_local %struct.TYPE_32__* @ngx_http_get_indexed_variable(%struct.TYPE_33__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_pass.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_grpc_module.c_ngx_http_grpc_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_20__, %struct.TYPE_23__ }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_20__, %struct.TYPE_24__, i64, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"grpc://\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"grpcs://\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"grpcs protocol requires SSL support\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_grpc_handler = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i32*, i8*)* @ngx_http_grpc_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_grpc_pass(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_26__, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %8, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %148

22:                                               ; preds = %3
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %10, align 8
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i64 1
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %11, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @ngx_strncasecmp(i64 %32, i32* bitcast ([8 x i8]* @.str.1 to i32*), i32 7)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  store i64 7, i64* %9, align 8
  br label %49

36:                                               ; preds = %22
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @ngx_strncasecmp(i64 %39, i32* bitcast ([9 x i8]* @.str.2 to i32*), i32 8)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* @NGX_LOG_EMERG, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %45 = call i32 @ngx_conf_log_error(i32 %43, %struct.TYPE_19__* %44, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %46, i8** %4, align 8
  br label %148

47:                                               ; preds = %36
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %35
  %50 = call i32 @ngx_memzero(%struct.TYPE_26__* %12, i32 64)
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %60, %61
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = call i32* @ngx_http_upstream_add(%struct.TYPE_19__* %66, %struct.TYPE_26__* %12, i32 0)
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  store i32* %67, i32** %70, align 8
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %49
  %77 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %77, i8** %4, align 8
  br label %148

78:                                               ; preds = %49
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AF_UNIX, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %112

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %91 = bitcast %struct.TYPE_20__* %89 to i8*
  %92 = bitcast %struct.TYPE_20__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  br label %111

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  store i64 %101, i64* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %93, %87
  br label %116

112:                                              ; preds = %78
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 1
  %115 = call i32 @ngx_str_set(%struct.TYPE_20__* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %111
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %118 = load i32, i32* @ngx_http_core_module, align 4
  %119 = call %struct.TYPE_29__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_19__* %117, i32 %118)
  store %struct.TYPE_29__* %119, %struct.TYPE_29__** %13, align 8
  %120 = load i32, i32* @ngx_http_grpc_handler, align 4
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %116
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %132, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 47
  br i1 %142, label %143, label %146

143:                                              ; preds = %128
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  br label %146

146:                                              ; preds = %143, %128, %116
  %147 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %147, i8** %4, align 8
  br label %148

148:                                              ; preds = %146, %76, %42, %21
  %149 = load i8*, i8** %4, align 8
  ret i8* %149
}

declare dso_local i64 @ngx_strncasecmp(i64, i32*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_26__*, i32) #1

declare dso_local i32* @ngx_http_upstream_add(%struct.TYPE_19__*, %struct.TYPE_26__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_str_set(%struct.TYPE_20__*, i8*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

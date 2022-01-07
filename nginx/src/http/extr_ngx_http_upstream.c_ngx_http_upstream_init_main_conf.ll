; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_init_main_conf.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_init_main_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__*, i32, %struct.TYPE_25__ }
%struct.TYPE_21__ = type { i32, i8*, i32*, i32, i32, i32 (i32, i64)*, i32* }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_upstream_headers_in = common dso_local global %struct.TYPE_29__* null, align 8
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"upstream_headers_in_hash\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_28__*, i8*)* @ngx_http_upstream_init_main_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream_init_main_conf(%struct.TYPE_28__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_22__, align 4
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_26__**, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %15, %struct.TYPE_27__** %6, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %18, align 8
  store %struct.TYPE_26__** %19, %struct.TYPE_26__*** %13, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %59, %2
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %21, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %20
  %28 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %28, i64 %29
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)** %33, align 8
  %35 = icmp ne i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %37, i64 %38
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)** %42, align 8
  br label %45

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)* [ %43, %36 ], [ @ngx_http_upstream_init_round_robin, %44 ]
  store i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)* %46, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)** %11, align 8
  %47 = load i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)*, i64 (%struct.TYPE_28__*, %struct.TYPE_26__*)** %11, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %49 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %13, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %49, i64 %50
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %51, align 8
  %53 = call i64 %47(%struct.TYPE_28__* %48, %struct.TYPE_26__* %52)
  %54 = load i64, i64* @NGX_OK, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %57, i8** %3, align 8
  br label %135

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %20

62:                                               ; preds = %20
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @ngx_array_init(%struct.TYPE_22__* %8, i32 %65, i32 32, i32 32)
  %67 = load i64, i64* @NGX_OK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %70, i8** %3, align 8
  br label %135

71:                                               ; preds = %62
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** @ngx_http_upstream_headers_in, align 8
  store %struct.TYPE_29__* %72, %struct.TYPE_29__** %12, align 8
  br label %73

73:                                               ; preds = %106, %71
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %73
  %80 = call %struct.TYPE_30__* @ngx_array_push(%struct.TYPE_22__* %8)
  store %struct.TYPE_30__* %80, %struct.TYPE_30__** %9, align 8
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %82 = icmp eq %struct.TYPE_30__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %84, i8** %3, align 8
  br label %135

85:                                               ; preds = %79
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %88, i32 0, i32 0
  %90 = bitcast %struct.TYPE_25__* %87 to i8*
  %91 = bitcast %struct.TYPE_25__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %90, i8* align 8 %91, i64 16, i1 false)
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @ngx_hash_key_lc(i32 %95, i64 %99)
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 0
  store %struct.TYPE_29__* %103, %struct.TYPE_29__** %105, align 8
  br label %106

106:                                              ; preds = %85
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 1
  store %struct.TYPE_29__* %108, %struct.TYPE_29__** %12, align 8
  br label %73

109:                                              ; preds = %73
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 6
  store i32* %111, i32** %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 5
  store i32 (i32, i64)* @ngx_hash_key_lc, i32 (i32, i64)** %113, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i32 512, i32* %114, align 8
  %115 = load i32, i32* @ngx_cacheline_size, align 4
  %116 = call i32 @ngx_align(i32 64, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 4
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %118, align 8
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 3
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  store i32* null, i32** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %8, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @ngx_hash_init(%struct.TYPE_21__* %10, i32 %125, i32 %127)
  %129 = load i64, i64* @NGX_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %109
  %132 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %132, i8** %3, align 8
  br label %135

133:                                              ; preds = %109
  %134 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %134, i8** %3, align 8
  br label %135

135:                                              ; preds = %133, %131, %83, %69, %56
  %136 = load i8*, i8** %3, align 8
  ret i8* %136
}

declare dso_local i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_22__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_array_push(%struct.TYPE_22__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_hash_key_lc(i32, i64) #1

declare dso_local i32 @ngx_align(i32, i32) #1

declare dso_local i64 @ngx_hash_init(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssl_module.c_ngx_http_ssl_init.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_ssl_module.c_ngx_http_ssl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_33__*, %struct.TYPE_30__ }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { %struct.TYPE_32__**, %struct.TYPE_35__** }
%struct.TYPE_32__ = type { i32*, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_34__ = type { %struct.TYPE_28__*, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_33__** }

@ngx_http_core_module = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@ngx_http_ssl_module = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"no \22ssl_certificate\22 is defined for the \22listen ... ssl\22 directive in %s:%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_23__*)* @ngx_http_ssl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_ssl_init(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  %11 = alloca %struct.TYPE_33__**, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_core_module, i32 0, i32 0), align 8
  %16 = call %struct.TYPE_34__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_23__* %14, i64 %15)
  store %struct.TYPE_34__* %16, %struct.TYPE_34__** %13, align 8
  %17 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %19, align 8
  store %struct.TYPE_33__** %20, %struct.TYPE_33__*** %11, align 8
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %78, %1
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %22, %26
  br i1 %27, label %28, label %81

28:                                               ; preds = %21
  %29 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %29, i64 %30
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %35, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ngx_http_ssl_module, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %36, i64 %37
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %38, align 8
  store %struct.TYPE_32__* %39, %struct.TYPE_32__** %9, align 8
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %28
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %28
  br label %78

51:                                               ; preds = %45
  %52 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %52, i64 %53
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_31__*, %struct.TYPE_31__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_35__**, %struct.TYPE_35__*** %58, align 8
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_core_module, i32 0, i32 0), align 8
  %61 = getelementptr inbounds %struct.TYPE_35__*, %struct.TYPE_35__** %59, i64 %60
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %61, align 8
  store %struct.TYPE_35__* %62, %struct.TYPE_35__** %10, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @ngx_ssl_stapling_resolver(%struct.TYPE_23__* %63, %struct.TYPE_24__* %65, i32 %68, i32 %71)
  %73 = load i64, i64* @NGX_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %51
  %76 = load i64, i64* @NGX_ERROR, align 8
  store i64 %76, i64* %2, align 8
  br label %168

77:                                               ; preds = %51
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %21

81:                                               ; preds = %21
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_28__*, %struct.TYPE_28__** %83, align 8
  %85 = icmp eq %struct.TYPE_28__* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i64, i64* @NGX_OK, align 8
  store i64 %87, i64* %2, align 8
  br label %168

88:                                               ; preds = %81
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  store %struct.TYPE_21__* %93, %struct.TYPE_21__** %8, align 8
  store i64 0, i64* %5, align 8
  br label %94

94:                                               ; preds = %163, %88
  %95 = load i64, i64* %5, align 8
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %95, %100
  br i1 %101, label %102, label %166

102:                                              ; preds = %94
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %104 = load i64, i64* %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %7, align 8
  store i64 0, i64* %4, align 8
  br label %109

109:                                              ; preds = %159, %102
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %112 = load i64, i64* %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %110, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %109
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %120 = load i64, i64* %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118
  br label %159

127:                                              ; preds = %118
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %129 = load i64, i64* %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %131, align 8
  store %struct.TYPE_33__* %132, %struct.TYPE_33__** %12, align 8
  %133 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_31__*, %struct.TYPE_31__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %136, align 8
  %138 = load i64, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @ngx_http_ssl_module, i32 0, i32 0), align 8
  %139 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %137, i64 %138
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %139, align 8
  store %struct.TYPE_32__* %140, %struct.TYPE_32__** %9, align 8
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %127
  %146 = load i32, i32* @NGX_LOG_EMERG, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @ngx_log_error(i32 %146, i32 %149, i32 0, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load i64, i64* @NGX_ERROR, align 8
  store i64 %157, i64* %2, align 8
  br label %168

158:                                              ; preds = %127
  br label %159

159:                                              ; preds = %158, %126
  %160 = load i64, i64* %4, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %4, align 8
  br label %109

162:                                              ; preds = %109
  br label %163

163:                                              ; preds = %162
  %164 = load i64, i64* %5, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %5, align 8
  br label %94

166:                                              ; preds = %94
  %167 = load i64, i64* @NGX_OK, align 8
  store i64 %167, i64* %2, align 8
  br label %168

168:                                              ; preds = %166, %145, %86, %75
  %169 = load i64, i64* %2, align 8
  ret i64 %169
}

declare dso_local %struct.TYPE_34__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_23__*, i64) #1

declare dso_local i64 @ngx_ssl_stapling_resolver(%struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

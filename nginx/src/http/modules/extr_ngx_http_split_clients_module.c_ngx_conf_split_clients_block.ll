; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_split_clients_module.c_ngx_conf_split_clients_block.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_split_clients_module.c_ngx_conf_split_clients_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i8*, i32, %struct.TYPE_23__*, i32, %struct.TYPE_19__* }
%struct.TYPE_23__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32*, %struct.TYPE_20__*, %struct.TYPE_25__* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@ngx_http_split_clients_variable = common dso_local global i32 0, align 4
@ngx_http_split_clients = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"percent total is greater than 100%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_25__*, i32*, i8*)* @ngx_conf_split_clients_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_conf_split_clients_block(%struct.TYPE_25__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.TYPE_23__* @ngx_pcalloc(i32 %21, i32 24)
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %16, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %24 = icmp eq %struct.TYPE_23__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %26, i8** %4, align 8
  br label %183

27:                                               ; preds = %3
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %31, align 8
  store %struct.TYPE_20__* %32, %struct.TYPE_20__** %11, align 8
  %33 = call i32 @ngx_memzero(%struct.TYPE_24__* %18, i32 24)
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 2
  store %struct.TYPE_25__* %34, %struct.TYPE_25__** %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i64 1
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  store %struct.TYPE_20__* %37, %struct.TYPE_20__** %38, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  %42 = call i64 @ngx_http_compile_complex_value(%struct.TYPE_24__* %18)
  %43 = load i64, i64* @NGX_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %46, i8** %4, align 8
  br label %183

47:                                               ; preds = %27
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i64 2
  %50 = bitcast %struct.TYPE_20__* %12 to i8*
  %51 = bitcast %struct.TYPE_20__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 36
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load i32, i32* @NGX_LOG_EMERG, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %61 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ngx_conf_log_error(i32 %59, %struct.TYPE_25__* %60, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %12)
  %62 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %62, i8** %4, align 8
  br label %183

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %67, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %71 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %72 = call %struct.TYPE_21__* @ngx_http_add_variable(%struct.TYPE_25__* %70, %struct.TYPE_20__* %12, i32 %71)
  store %struct.TYPE_21__* %72, %struct.TYPE_21__** %15, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %74 = icmp eq %struct.TYPE_21__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %76, i8** %4, align 8
  br label %183

77:                                               ; preds = %63
  %78 = load i32, i32* @ngx_http_split_clients_variable, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %82 = ptrtoint %struct.TYPE_23__* %81 to i64
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @ngx_array_init(%struct.TYPE_18__* %86, i32 %89, i32 2, i32 4)
  %91 = load i64, i64* @NGX_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %94, i8** %4, align 8
  br label %183

95:                                               ; preds = %77
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = bitcast %struct.TYPE_25__* %14 to i8*
  %98 = bitcast %struct.TYPE_25__* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 40, i1 false)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 2
  store %struct.TYPE_23__* %99, %struct.TYPE_23__** %101, align 8
  %102 = load i32, i32* @ngx_http_split_clients, align 4
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %109 = call i8* @ngx_conf_parse(%struct.TYPE_25__* %108, i32* null)
  store i8* %109, i8** %8, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %111 = bitcast %struct.TYPE_25__* %110 to i8*
  %112 = bitcast %struct.TYPE_25__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %111, i8* align 8 %112, i64 40, i1 false)
  %113 = load i8*, i8** %8, align 8
  %114 = load i8*, i8** @NGX_CONF_OK, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %95
  %117 = load i8*, i8** %8, align 8
  store i8* %117, i8** %4, align 8
  br label %183

118:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %121, align 8
  store %struct.TYPE_22__* %122, %struct.TYPE_22__** %17, align 8
  store i64 0, i64* %13, align 8
  br label %123

123:                                              ; preds = %178, %118
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %124, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %123
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %138, %143
  br label %146

145:                                              ; preds = %130
  br label %146

146:                                              ; preds = %145, %137
  %147 = phi i32 [ %144, %137 ], [ 10000, %145 ]
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp sgt i32 %148, 10000
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* @NGX_LOG_EMERG, align 4
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %153 = call i32 (i32, %struct.TYPE_25__*, i32, i8*, ...) @ngx_conf_log_error(i32 %151, %struct.TYPE_25__* %152, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %154, i8** %4, align 8
  br label %183

155:                                              ; preds = %146
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %157 = load i64, i64* %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %155
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %164 = load i64, i64* %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %167, -1
  %169 = sdiv i32 %168, 10000
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 0
  store i32 %172, i32* %176, align 4
  br label %177

177:                                              ; preds = %162, %155
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %13, align 8
  br label %123

181:                                              ; preds = %123
  %182 = load i8*, i8** %8, align 8
  store i8* %182, i8** %4, align 8
  br label %183

183:                                              ; preds = %181, %150, %116, %93, %75, %58, %45, %25
  %184 = load i8*, i8** %4, align 8
  ret i8* %184
}

declare dso_local %struct.TYPE_23__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_compile_complex_value(%struct.TYPE_24__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_25__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_21__* @ngx_http_add_variable(%struct.TYPE_25__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_array_init(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_25__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

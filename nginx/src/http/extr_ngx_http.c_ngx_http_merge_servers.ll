; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_merge_servers.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http.c_ngx_http_merge_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_26__**, i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_23__ = type { i8* (%struct.TYPE_28__*, i32, i32)*, i8* (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)* }
%struct.TYPE_27__ = type { %struct.TYPE_26__**, i32* }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@ngx_http_core_module = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_28__*, %struct.TYPE_25__*, %struct.TYPE_23__*, i64)* @ngx_http_merge_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_merge_servers(%struct.TYPE_28__* %0, %struct.TYPE_25__* %1, %struct.TYPE_23__* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_27__, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_24__**, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %17, align 8
  store %struct.TYPE_24__** %18, %struct.TYPE_24__*** %14, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %22, %struct.TYPE_27__** %11, align 8
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %24 = bitcast %struct.TYPE_27__* %12 to i8*
  %25 = bitcast %struct.TYPE_27__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %26, i8** %9, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %150, %4
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %153

34:                                               ; preds = %27
  %35 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %35, i64 %36
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i8* (%struct.TYPE_28__*, i32, i32)*, i8* (%struct.TYPE_28__*, i32, i32)** %46, align 8
  %48 = icmp ne i8* (%struct.TYPE_28__*, i32, i32)* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %34
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = load i8* (%struct.TYPE_28__*, i32, i32)*, i8* (%struct.TYPE_28__*, i32, i32)** %51, align 8
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %59, i64 %60
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i8* %52(%struct.TYPE_28__* %53, i32 %58, i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** @NGX_CONF_OK, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %49
  br label %154

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %34
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = load i8* (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)*, i8* (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)** %78, align 8
  %80 = icmp ne i8* (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)* %79, null
  br i1 %80, label %81, label %149

81:                                               ; preds = %76
  %82 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %82, i64 %83
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %88, align 8
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  store %struct.TYPE_26__** %89, %struct.TYPE_26__*** %91, align 8
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = load i8* (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)*, i8* (%struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*)** %93, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %97 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %97, i64 %98
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %99, align 8
  %101 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %101, i64 %102
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %108, i64 %109
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = call i8* %94(%struct.TYPE_28__* %95, %struct.TYPE_26__* %100, %struct.TYPE_26__* %111)
  store i8* %112, i8** %9, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** @NGX_CONF_OK, align 8
  %115 = icmp ne i8* %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %81
  br label %154

117:                                              ; preds = %81
  %118 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %119 = load i64, i64* %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %118, i64 %119
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %124, align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_http_core_module, i32 0, i32 0), align 8
  %127 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %125, i64 %126
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %13, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %14, align 8
  %134 = load i64, i64* %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %133, i64 %134
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %139, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i8* @ngx_http_merge_locations(%struct.TYPE_28__* %129, i32 %132, %struct.TYPE_26__** %140, %struct.TYPE_23__* %141, i64 %142)
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = load i8*, i8** @NGX_CONF_OK, align 8
  %146 = icmp ne i8* %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %117
  br label %154

148:                                              ; preds = %117
  br label %149

149:                                              ; preds = %148, %76
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %27

153:                                              ; preds = %27
  br label %154

154:                                              ; preds = %153, %147, %116, %74
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %156 = bitcast %struct.TYPE_27__* %155 to i8*
  %157 = bitcast %struct.TYPE_27__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 8 %157, i64 16, i1 false)
  %158 = load i8*, i8** %9, align 8
  ret i8* %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @ngx_http_merge_locations(%struct.TYPE_28__*, i32, %struct.TYPE_26__**, %struct.TYPE_23__*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

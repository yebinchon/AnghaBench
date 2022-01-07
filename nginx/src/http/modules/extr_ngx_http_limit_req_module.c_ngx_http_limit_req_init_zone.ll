; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_init_zone.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_limit_req_module.c_ngx_http_limit_req_init_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__, i64, i64, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_17__ = type { i64, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"limit_req \22%V\22 uses the \22%V\22 key while previously it used the \22%V\22 key\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@ngx_http_limit_req_rbtree_insert_value = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c" in limit_req zone \22%V\22%Z\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i8*)* @ngx_http_limit_req_init_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_limit_req_init_zone(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %6, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %8, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = icmp ne %struct.TYPE_19__* %14, null
  br i1 %15, label %16, label %75

16:                                               ; preds = %2
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %21, %26
  br i1 %27, label %46, label %28

28:                                               ; preds = %16
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @ngx_strncmp(i32 %33, i32 %38, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %28, %16
  %47 = load i32, i32* @NGX_LOG_EMERG, align 4
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = call i32 @ngx_log_error(i32 %47, i32 %51, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %54, %struct.TYPE_13__* %57, %struct.TYPE_13__* %60)
  %62 = load i32, i32* @NGX_ERROR, align 4
  store i32 %62, i32* %3, align 4
  br label %173

63:                                               ; preds = %28
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %70, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %73, align 8
  %74 = load i32, i32* @NGX_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %173

75:                                               ; preds = %2
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_17__*
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %75
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 1
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %95, align 8
  %96 = load i32, i32* @NGX_OK, align 4
  store i32 %96, i32* %3, align 4
  br label %173

97:                                               ; preds = %75
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %99, align 8
  %101 = call i8* @ngx_slab_alloc(%struct.TYPE_17__* %100, i64 4)
  %102 = bitcast i8* %101 to %struct.TYPE_15__*
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  store %struct.TYPE_15__* %102, %struct.TYPE_15__** %104, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = icmp eq %struct.TYPE_15__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* @NGX_ERROR, align 4
  store i32 %110, i32* %3, align 4
  br label %173

111:                                              ; preds = %97
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 2
  store %struct.TYPE_15__* %114, %struct.TYPE_15__** %118, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* @ngx_http_limit_req_rbtree_insert_value, align 4
  %128 = call i32 @ngx_rbtree_init(i32* %122, i32* %126, i32 %127)
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = call i32 @ngx_queue_init(i32* %132)
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 22, %138
  store i64 %139, i64* %7, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = call i8* @ngx_slab_alloc(%struct.TYPE_17__* %142, i64 %143)
  %145 = bitcast i8* %144 to i32*
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  store i32* %145, i32** %149, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %111
  %157 = load i32, i32* @NGX_ERROR, align 4
  store i32 %157, i32* %3, align 4
  br label %173

158:                                              ; preds = %111
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = call i32 @ngx_sprintf(i32* %163, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %166)
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* @NGX_OK, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %158, %156, %109, %88, %63, %46
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i64 @ngx_strncmp(i32, i32, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_20__*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i8* @ngx_slab_alloc(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ngx_rbtree_init(i32*, i32*, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

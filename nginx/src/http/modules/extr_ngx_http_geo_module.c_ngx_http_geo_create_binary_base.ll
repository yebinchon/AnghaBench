; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_create_binary_base.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_create_binary_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_18__, %struct.TYPE_21__, %struct.TYPE_20__*, i64, %struct.TYPE_19__, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__** }
%struct.TYPE_25__ = type { %struct.TYPE_23__*, i32, i32 }
%struct.TYPE_23__ = type { i32*, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32* }
%struct.TYPE_28__ = type { i64, %struct.TYPE_26__*, i32*, i32 }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_24__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"%V.bin%Z\00", align 1
@NGX_LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"creating binary geo range base \22%s\22\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_geo_header = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_27__*)* @ngx_http_geo_create_binary_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_geo_create_binary_base(%struct.TYPE_27__* %0) #0 {
  %2 = alloca %struct.TYPE_27__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_22__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__**, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %2, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 5
  %21 = call i32* @ngx_pnalloc(i32 %15, i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  store i32* %21, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %176

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %30, i32 0, i32 4
  %32 = call i32 @ngx_sprintf(i32* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_19__* %31)
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 3
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @NGX_LOG_NOTICE, align 4
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @ngx_log_error(i32 %43, i32 %45, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %47)
  %49 = call i64 @ngx_create_file_mapping(%struct.TYPE_28__* %7)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %27
  br label %176

53:                                               ; preds = %27
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %54, align 8
  %56 = call i32* @ngx_cpymem(%struct.TYPE_26__* %55, i32* @ngx_http_geo_header, i32 8)
  store i32* %56, i32** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %57, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32* @ngx_http_geo_copy_values(%struct.TYPE_26__* %58, i32* %59, i32 %63, i32 %67)
  store i32* %68, i32** %3, align 8
  %69 = load i32*, i32** %3, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 16
  store i32* %70, i32** %3, align 8
  %71 = load i32*, i32** %3, align 8
  %72 = bitcast i32* %71 to %struct.TYPE_25__**
  store %struct.TYPE_25__** %72, %struct.TYPE_25__*** %10, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 524288
  store i32* %74, i32** %3, align 8
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %159, %53
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 65536
  br i1 %77, label %78, label %162

78:                                               ; preds = %75
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %82, i64 %84
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %85, align 8
  store %struct.TYPE_25__* %86, %struct.TYPE_25__** %8, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %88 = icmp eq %struct.TYPE_25__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %159

90:                                               ; preds = %78
  %91 = load i32*, i32** %3, align 8
  %92 = bitcast i32* %91 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %92, %struct.TYPE_25__** %9, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = bitcast %struct.TYPE_26__* %95 to i32*
  %97 = ptrtoint i32* %93 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = inttoptr i64 %100 to %struct.TYPE_25__*
  %102 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %10, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %102, i64 %104
  store %struct.TYPE_25__* %101, %struct.TYPE_25__** %105, align 8
  br label %106

106:                                              ; preds = %147, %90
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  store i32* %117, i32** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %5, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @ngx_crc32_long(i32* %120, i64 %122)
  store i8* %123, i8** %4, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 0
  %126 = load i8*, i8** %4, align 8
  %127 = call i64 @ngx_str_rbtree_lookup(%struct.TYPE_18__* %125, %struct.TYPE_22__* %5, i8* %126)
  %128 = inttoptr i64 %127 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %128, %struct.TYPE_24__** %12, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.TYPE_23__*
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  store %struct.TYPE_23__* %132, %struct.TYPE_23__** %134, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 1
  store %struct.TYPE_25__* %146, %struct.TYPE_25__** %9, align 8
  br label %147

147:                                              ; preds = %106
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 1
  store %struct.TYPE_25__* %149, %struct.TYPE_25__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %150, align 8
  %152 = icmp ne %struct.TYPE_23__* %151, null
  br i1 %152, label %106, label %153

153:                                              ; preds = %147
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %155, align 8
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %157 = bitcast %struct.TYPE_25__* %156 to i32*
  %158 = getelementptr inbounds i32, i32* %157, i64 8
  store i32* %158, i32** %3, align 8
  br label %159

159:                                              ; preds = %153, %89
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %75

162:                                              ; preds = %75
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %163, align 8
  store %struct.TYPE_26__* %164, %struct.TYPE_26__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 1
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %165, align 8
  %167 = bitcast %struct.TYPE_26__* %166 to i32*
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %7, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %170, 8
  %172 = call i8* @ngx_crc32_long(i32* %168, i64 %171)
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = call i32 @ngx_close_file_mapping(%struct.TYPE_28__* %7)
  br label %176

176:                                              ; preds = %162, %52, %26
  ret void
}

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ngx_sprintf(i32*, i8*, %struct.TYPE_19__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*) #1

declare dso_local i64 @ngx_create_file_mapping(%struct.TYPE_28__*) #1

declare dso_local i32* @ngx_cpymem(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32* @ngx_http_geo_copy_values(%struct.TYPE_26__*, i32*, i32, i32) #1

declare dso_local i8* @ngx_crc32_long(i32*, i64) #1

declare dso_local i64 @ngx_str_rbtree_lookup(%struct.TYPE_18__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @ngx_close_file_mapping(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

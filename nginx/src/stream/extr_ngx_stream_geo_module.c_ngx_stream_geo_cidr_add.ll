; ModuleID = '/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_cidr_add.c'
source_filename = "/home/carl/AnghaBench/nginx/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo_cidr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"duplicate network \22%V\22, value: \22%v\22, old value: \22%v\22\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"invalid radix tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_16__*, %struct.TYPE_17__*, i32*, i32*)* @ngx_stream_geo_cidr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_geo_cidr_add(i32* %0, %struct.TYPE_16__* %1, %struct.TYPE_17__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32* @ngx_stream_geo_value(i32* %15, %struct.TYPE_16__* %16, i32* %17)
  store i32* %18, i32** %13, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %22, i8** %6, align 8
  br label %119

23:                                               ; preds = %5
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %27 [
  ]

27:                                               ; preds = %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = call i64 @ngx_radix32tree_insert(i32 %30, i32 %35, i32 %40, i64 %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %27
  %48 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %48, i8** %6, align 8
  br label %119

49:                                               ; preds = %27
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @NGX_ERROR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %6, align 8
  br label %119

55:                                               ; preds = %49
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @ngx_radix32tree_find(i32 %58, i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %14, align 8
  %66 = load i32, i32* @NGX_LOG_WARN, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 (i32, i32*, i32, i8*, ...) @ngx_conf_log_error(i32 %66, i32* %67, i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32* %68, i32* %69, i32* %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ngx_radix32tree_delete(i32 %74, i32 %79, i32 %84)
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @NGX_ERROR, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %55
  %90 = load i32, i32* @NGX_LOG_EMERG, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 (i32, i32*, i32, i8*, ...) @ngx_conf_log_error(i32 %90, i32* %91, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %6, align 8
  br label %119

94:                                               ; preds = %55
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = ptrtoint i32* %108 to i64
  %110 = call i64 @ngx_radix32tree_insert(i32 %97, i32 %102, i32 %107, i64 %109)
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %94
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* @NGX_OK, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %116, i8** %6, align 8
  br label %119

117:                                              ; preds = %111
  %118 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %118, i8** %6, align 8
  br label %119

119:                                              ; preds = %117, %115, %89, %53, %47, %21
  %120 = load i8*, i8** %6, align 8
  ret i8* %120
}

declare dso_local i32* @ngx_stream_geo_value(i32*, %struct.TYPE_16__*, i32*) #1

declare dso_local i64 @ngx_radix32tree_insert(i32, i32, i32, i64) #1

declare dso_local i64 @ngx_radix32tree_find(i32, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, ...) #1

declare dso_local i64 @ngx_radix32tree_delete(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

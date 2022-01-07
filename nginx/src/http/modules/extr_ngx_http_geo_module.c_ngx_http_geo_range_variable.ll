; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_range_variable.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_range_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__**, i32* }
%struct.TYPE_20__ = type { i32*, i64, i64 }
%struct.TYPE_22__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }

@NGX_OK = common dso_local global i64 0, align 8
@INADDR_NONE = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"http geo: %v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i32*, i64)* @ngx_http_geo_range_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_geo_range_variable(%struct.TYPE_19__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sockaddr_in*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %24 = call i64 @ngx_http_geo_addr(%struct.TYPE_19__* %22, %struct.TYPE_21__* %23, %struct.TYPE_22__* %9)
  %25 = load i64, i64* @NGX_OK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %32 [
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = bitcast %struct.TYPE_14__* %34 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %35, %struct.sockaddr_in** %11, align 8
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %11, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohl(i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %32
  br label %44

42:                                               ; preds = %3
  %43 = load i32, i32* @INADDR_NONE, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %48, align 8
  %50 = icmp ne %struct.TYPE_20__** %49, null
  br i1 %50, label %51, label %96

51:                                               ; preds = %44
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, 16
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %56, i64 %59
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %12, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %63 = icmp ne %struct.TYPE_20__* %62, null
  br i1 %63, label %64, label %95

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 65535
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %88, %64
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp sge i32 %68, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = icmp sle i32 %75, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %94

87:                                               ; preds = %74, %67
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 1
  store %struct.TYPE_20__* %90, %struct.TYPE_20__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %67, label %94

94:                                               ; preds = %88, %81
  br label %95

95:                                               ; preds = %94, %51
  br label %96

96:                                               ; preds = %95, %44
  %97 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @ngx_log_debug1(i32 %97, i32 %102, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %103)
  %105 = load i64, i64* @NGX_OK, align 8
  ret i64 %105
}

declare dso_local i64 @ngx_http_geo_addr(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

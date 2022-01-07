; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_sax_external_subset.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_xslt_filter_module.c_ngx_http_xslt_sax_external_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_10__* }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32* }

@ngx_http_xslt_filter_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"xslt filter extSubset: \22%s\22 \22%s\22 \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"xmlCopyDtd() failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*)* @ngx_http_xslt_sax_external_subset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_xslt_sax_external_subset(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %13, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %12, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %26 = load i32, i32* @ngx_http_xslt_filter_module, align 4
  %27 = call %struct.TYPE_14__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__* %25, i32 %26)
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %14, align 8
  %28 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32*, i32** %6, align 8
  br label %39

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32* [ %37, %36 ], [ bitcast ([1 x i8]* @.str.1 to i32*), %38 ]
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32*, i32** %7, align 8
  br label %46

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32* [ %44, %43 ], [ bitcast ([1 x i8]* @.str.1 to i32*), %45 ]
  %48 = load i32*, i32** %8, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %8, align 8
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32* [ %51, %50 ], [ bitcast ([1 x i8]* @.str.1 to i32*), %52 ]
  %55 = call i32 @ngx_log_debug3(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %40, i32* %47, i32* %54)
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  store %struct.TYPE_13__* %58, %struct.TYPE_13__** %10, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32* @xmlCopyDtd(i32* %61)
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = load i32, i32* @NGX_LOG_ERR, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ngx_log_error(i32 %66, i32 %71, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %95

73:                                               ; preds = %53
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %80 = ptrtoint %struct.TYPE_13__* %79 to i32
  %81 = load i32*, i32** %11, align 8
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 @xmlAddChild(i32 %80, i32 %82)
  br label %91

84:                                               ; preds = %73
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = ptrtoint i32* %88 to i32
  %90 = call i32 @xmlAddPrevSibling(i32* %87, i32 %89)
  br label %91

91:                                               ; preds = %84, %78
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  store i32* %92, i32** %94, align 8
  br label %95

95:                                               ; preds = %91, %65
  ret void
}

declare dso_local %struct.TYPE_14__* @ngx_http_get_module_loc_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @xmlCopyDtd(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @xmlAddChild(i32, i32) #1

declare dso_local i32 @xmlAddPrevSibling(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_copy.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32*, i32* }

@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hls: failed to read %uz byte(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32**, i64, %struct.TYPE_10__**)* @ngx_rtmp_hls_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_hls_copy(%struct.TYPE_9__* %0, i8* %1, i32** %2, i64 %3, %struct.TYPE_10__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_10__** %4, %struct.TYPE_10__*** %11, align 8
  %14 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @NGX_ERROR, align 4
  store i32 %18, i32* %6, align 4
  br label %137

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %129, %19
  %21 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = load i32**, i32*** %9, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %27 to i64
  %31 = ptrtoint i32* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 4
  %34 = load i64, i64* %10, align 8
  %35 = icmp uge i64 %33, %34
  br i1 %35, label %36, label %86

36:                                               ; preds = %20
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @ngx_memcpy(i8* %40, i32* %42, i64 %43)
  br label %45

45:                                               ; preds = %39, %36
  %46 = load i64, i64* %10, align 8
  %47 = load i32**, i32*** %9, align 8
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 %46
  store i32* %49, i32** %47, align 8
  br label %50

50:                                               ; preds = %83, %45
  %51 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp ne %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32**, i32*** %9, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp eq i32* %56, %62
  br label %64

64:                                               ; preds = %54, %50
  %65 = phi i1 [ false, %50 ], [ %63, %54 ]
  br i1 %65, label %66, label %84

66:                                               ; preds = %64
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %71, align 8
  %72 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32**, i32*** %9, align 8
  store i32* %81, i32** %82, align 8
  br label %83

83:                                               ; preds = %75, %66
  br label %50

84:                                               ; preds = %64
  %85 = load i32, i32* @NGX_OK, align 4
  store i32 %85, i32* %6, align 4
  br label %137

86:                                               ; preds = %20
  %87 = load i32*, i32** %12, align 8
  %88 = load i32**, i32*** %9, align 8
  %89 = load i32*, i32** %88, align 8
  %90 = ptrtoint i32* %87 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  store i64 %93, i64* %13, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %86
  %97 = load i8*, i8** %8, align 8
  %98 = load i32**, i32*** %9, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = call i32 @ngx_memcpy(i8* %97, i32* %99, i64 %100)
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = bitcast i32* %105 to i8*
  store i8* %106, i8** %8, align 8
  br label %107

107:                                              ; preds = %96, %86
  %108 = load i64, i64* %13, align 8
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 %109, %108
  store i64 %110, i64* %10, align 8
  %111 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %115, align 8
  %116 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp eq %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %107
  %120 = load i32, i32* @NGX_LOG_ERR, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @ngx_log_error(i32 %120, i32 %125, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %126)
  %128 = load i32, i32* @NGX_ERROR, align 4
  store i32 %128, i32* %6, align 4
  br label %137

129:                                              ; preds = %107
  %130 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %11, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load i32**, i32*** %9, align 8
  store i32* %135, i32** %136, align 8
  br label %20

137:                                              ; preds = %119, %84, %17
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @ngx_memcpy(i8*, i32*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

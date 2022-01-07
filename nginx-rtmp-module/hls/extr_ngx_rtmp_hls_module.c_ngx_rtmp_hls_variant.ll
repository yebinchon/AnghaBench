; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_variant.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_variant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8**, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i8* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_11__*, i32*, i8*)* @ngx_rtmp_hls_variant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_hls_variant(%struct.TYPE_11__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  store i8** %19, i8*** %9, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @ngx_array_create(i32 %27, i32 1, i32 16)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %36, i8** %4, align 8
  br label %116

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call %struct.TYPE_9__* @ngx_array_push(i32* %41)
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %12, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %44 = icmp eq %struct.TYPE_9__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %46, i8** %4, align 8
  br label %116

47:                                               ; preds = %38
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %49 = call i32 @ngx_memzero(%struct.TYPE_9__* %48, i32 16)
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %62, i8** %4, align 8
  br label %116

63:                                               ; preds = %47
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 2
  %75 = call i64 @ngx_array_init(i32* %65, i32 %68, i32 %74, i32 8)
  %76 = load i64, i64* @NGX_OK, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %79, i8** %4, align 8
  br label %116

80:                                               ; preds = %63
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 2
  %89 = call i8** @ngx_array_push_n(i32* %82, i32 %88)
  store i8** %89, i8*** %10, align 8
  %90 = load i8**, i8*** %10, align 8
  %91 = icmp eq i8** %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %80
  %93 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %93, i8** %4, align 8
  br label %116

94:                                               ; preds = %80
  store i64 2, i64* %11, align 8
  br label %95

95:                                               ; preds = %111, %94
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = icmp ult i64 %96, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = load i8**, i8*** %9, align 8
  %106 = load i64, i64* %11, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  %108 = load i8*, i8** %107, align 8
  %109 = load i8**, i8*** %10, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i32 1
  store i8** %110, i8*** %10, align 8
  store i8* %108, i8** %109, align 8
  br label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %11, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %11, align 8
  br label %95

114:                                              ; preds = %95
  %115 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %115, i8** %4, align 8
  br label %116

116:                                              ; preds = %114, %92, %78, %61, %45, %35
  %117 = load i8*, i8** %4, align 8
  ret i8* %117
}

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i32, i32) #1

declare dso_local i8** @ngx_array_push_n(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

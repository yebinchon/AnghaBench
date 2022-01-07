; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_process_record.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_fastcgi_module.c_ngx_http_fastcgi_process_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32*, i32, i64, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"http fastcgi record byte: %02Xd\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"upstream sent unsupported FastCGI protocol version: %d\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"upstream sent invalid FastCGI record type: %d\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"upstream sent unexpected FastCGI request id high byte: %d\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"upstream sent unexpected FastCGI request id low byte: %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"http fastcgi record length: %z\00", align 1
@NGX_OK = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*)* @ngx_http_fastcgi_process_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_fastcgi_process_record(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  br label %15

15:                                               ; preds = %132, %2
  %16 = load i32*, i32** %7, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ult i32* %16, %19
  br i1 %20, label %21, label %135

21:                                               ; preds = %15
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ngx_log_debug1(i32 %24, i32 %29, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %131 [
    i32 128, label %33
    i32 129, label %47
    i32 132, label %64
    i32 131, label %78
    i32 137, label %92
    i32 136, label %97
    i32 133, label %106
    i32 130, label %111
    i32 135, label %130
    i32 134, label %130
  ]

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* @NGX_LOG_ERR, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ngx_log_error(i32 %37, i32 %42, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @NGX_ERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %143

46:                                               ; preds = %33
  store i32 129, i32* %8, align 4
  br label %131

47:                                               ; preds = %21
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %53 [
    i32 138, label %49
    i32 139, label %49
    i32 140, label %49
  ]

49:                                               ; preds = %47, %47, %47
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %63

53:                                               ; preds = %47
  %54 = load i32, i32* @NGX_LOG_ERR, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ngx_log_error(i32 %54, i32 %59, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @NGX_ERROR, align 4
  store i32 %62, i32* %3, align 4
  br label %143

63:                                               ; preds = %49
  store i32 132, i32* %8, align 4
  br label %131

64:                                               ; preds = %21
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i32, i32* @NGX_LOG_ERR, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ngx_log_error(i32 %68, i32 %73, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @NGX_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %143

77:                                               ; preds = %64
  store i32 131, i32* %8, align 4
  br label %131

78:                                               ; preds = %21
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 1
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load i32, i32* @NGX_LOG_ERR, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @ngx_log_error(i32 %82, i32 %87, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @NGX_ERROR, align 4
  store i32 %90, i32* %3, align 4
  br label %143

91:                                               ; preds = %78
  store i32 137, i32* %8, align 4
  br label %131

92:                                               ; preds = %21
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 %93, 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  store i32 136, i32* %8, align 4
  br label %131

97:                                               ; preds = %21
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = or i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  store i32 133, i32* %8, align 4
  br label %131

106:                                              ; preds = %21
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  store i32 130, i32* %8, align 4
  br label %131

111:                                              ; preds = %21
  store i32 135, i32* %8, align 4
  %112 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ngx_log_debug1(i32 %112, i32 %117, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  store i32* %123, i32** %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @NGX_OK, align 4
  store i32 %129, i32* %3, align 4
  br label %143

130:                                              ; preds = %21, %21
  br label %131

131:                                              ; preds = %21, %130, %106, %97, %92, %91, %77, %63, %46
  br label %132

132:                                              ; preds = %131
  %133 = load i32*, i32** %7, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %7, align 8
  br label %15

135:                                              ; preds = %15
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i32* %136, i32** %138, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %135, %111, %81, %67, %53, %36
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

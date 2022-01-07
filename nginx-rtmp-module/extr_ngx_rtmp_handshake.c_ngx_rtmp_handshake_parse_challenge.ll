; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_parse_challenge.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_parse_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"handshake: unexpected RTMP version: %i\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"handshake: peer version=%i.%i.%i.%i epoch=%uD\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"handshake: digest not found\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"handshake: digest found at pos=%i\00", align 1
@NGX_RTMP_HANDSHAKE_KEYLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i32*, i32*)* @ngx_rtmp_handshake_parse_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_handshake_parse_challenge(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 3
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* @NGX_LOG_INFO, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i64
  %32 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* @NGX_ERROR, align 8
  store i64 %33, i64* %4, align 8
  br label %169

34:                                               ; preds = %3
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @ngx_rtmp_rmemcpy(i64* %42, i8* %45, i32 4)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  store i8* %50, i8** %9, align 8
  %51 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i64
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i64
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i64
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @ngx_log_debug5(i32 %51, i32 %56, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %60, i64 %64, i64 %68, i64 %72, i64 %75)
  %77 = load i8*, i8** %9, align 8
  %78 = bitcast i8* %77 to i64*
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %34
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load i64, i64* @NGX_OK, align 8
  store i64 %84, i64* %4, align 8
  br label %169

85:                                               ; preds = %34
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @ngx_rtmp_find_digest(%struct.TYPE_9__* %86, i32* %87, i32 772, i32 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @NGX_ERROR, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %85
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @ngx_rtmp_find_digest(%struct.TYPE_9__* %98, i32* %99, i32 8, i32 %104)
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %97, %85
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @NGX_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i32, i32* @NGX_LOG_INFO, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %111, i32 %116, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 1, i32* %119, align 8
  %120 = load i64, i64* @NGX_OK, align 8
  store i64 %120, i64* %4, align 8
  br label %169

121:                                              ; preds = %106
  %122 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @ngx_log_debug1(i32 %122, i32 %127, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %128)
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 %130
  store i8* %134, i8** %132, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i32, i32* @NGX_RTMP_HANDSHAKE_KEYLEN, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  store i8* %140, i8** %142, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @NGX_RTMP_HANDSHAKE_KEYLEN, align 4
  %149 = call i32 @ngx_palloc(i32 %147, i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @ngx_rtmp_make_digest(i32* %152, %struct.TYPE_9__* %153, i32* null, i32 %156, i32 %161)
  %163 = load i64, i64* @NGX_OK, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %121
  %166 = load i64, i64* @NGX_ERROR, align 8
  store i64 %166, i64* %4, align 8
  br label %169

167:                                              ; preds = %121
  %168 = load i64, i64* @NGX_OK, align 8
  store i64 %168, i64* %4, align 8
  br label %169

169:                                              ; preds = %167, %165, %110, %81, %20
  %170 = load i64, i64* %4, align 8
  ret i64 %170
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @ngx_rtmp_rmemcpy(i64*, i8*, i32) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i64 @ngx_rtmp_find_digest(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_rtmp_make_digest(i32*, %struct.TYPE_9__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

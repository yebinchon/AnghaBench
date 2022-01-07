; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_node_close.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_record_module.c_ngx_rtmp_record_node_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8**, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_24__, i64, i64, i64, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i8**, %struct.TYPE_18__, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_18__ }

@NGX_INVALID_FILE = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"record: %V error writing av mask\00", align 1
@NGX_FILE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"record: %V error closing file\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"record: %V closed\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"NetStream.Record.Stop\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @ngx_rtmp_record_node_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_record_node_close(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 4
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %14, %struct.TYPE_23__** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NGX_INVALID_FILE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NGX_AGAIN, align 4
  store i32 %22, i32* %3, align 4
  br label %150

23:                                               ; preds = %2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  store i32 0, i32* %11, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %42, 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = call i64 @ngx_write_file(%struct.TYPE_24__* %46, i32* %11, i32 1, i32 4)
  %48 = load i64, i64* @NGX_ERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load i32, i32* @NGX_LOG_CRIT, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ngx_errno, align 4
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 1
  %60 = call i32 @ngx_log_error(i32 %51, i32 %56, i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %59)
  br label %61

61:                                               ; preds = %50, %44
  br label %62

62:                                               ; preds = %61, %23
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @ngx_close_file(i64 %66)
  %68 = load i64, i64* @NGX_FILE_ERROR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %62
  %71 = load i32, i32* @ngx_errno, align 4
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @NGX_LOG_CRIT, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 1
  %81 = call i32 @ngx_log_error(i32 %72, i32 %77, i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = call i32 @ngx_rtmp_record_notify_error(%struct.TYPE_20__* %82, %struct.TYPE_21__* %83)
  br label %85

85:                                               ; preds = %70, %62
  %86 = load i64, i64* @NGX_INVALID_FILE, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  store i64 %86, i64* %89, align 8
  %90 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 1
  %98 = call i32 @ngx_log_debug1(i32 %90, i32 %95, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_18__* %97)
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %85
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  br label %117

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %110
  %118 = phi i8* [ %115, %110 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %116 ]
  %119 = call i32 @ngx_rtmp_send_status(%struct.TYPE_20__* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %117, %85
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i8**, i8*** %122, align 8
  store i8** %123, i8*** %8, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  store i8** %131, i8*** %133, align 8
  br label %134

134:                                              ; preds = %128, %120
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 1
  %138 = bitcast %struct.TYPE_18__* %135 to i8*
  %139 = bitcast %struct.TYPE_18__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 8 %139, i64 8, i1 false)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %143 = call i32 @ngx_rtmp_record_make_path(%struct.TYPE_20__* %140, %struct.TYPE_21__* %141, i32* %142)
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %145 = call i32 @ngx_rtmp_record_done(%struct.TYPE_20__* %144, %struct.TYPE_22__* %10)
  store i32 %145, i32* %9, align 4
  %146 = load i8**, i8*** %8, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  store i8** %146, i8*** %148, align 8
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %134, %21
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @ngx_write_file(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i64 @ngx_close_file(i64) #1

declare dso_local i32 @ngx_rtmp_record_notify_error(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_rtmp_send_status(%struct.TYPE_20__*, i8*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_rtmp_record_make_path(%struct.TYPE_20__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ngx_rtmp_record_done(%struct.TYPE_20__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

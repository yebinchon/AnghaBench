; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_join.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_live_module.c_ngx_rtmp_live_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_25__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_26__ = type { i64, i64 }

@ngx_rtmp_live_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"live: already joined\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"live: join '%s'\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"live: stream not found\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"NetStream.Play.StreamNotFound\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"No such stream\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"live: already publishing\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"NetStream.Publish.BadName\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Already publishing\00", align 1
@NGX_RTMP_CSID_VIDEO = common dso_local global i32 0, align 4
@NGX_RTMP_CSID_AUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32*, i32)* @ngx_rtmp_live_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_live_join(%struct.TYPE_23__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__**, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %11 = load i32, i32* @ngx_rtmp_live_module, align 4
  %12 = call %struct.TYPE_26__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_23__* %10, i32 %11)
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %9, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %14 = icmp eq %struct.TYPE_26__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %179

16:                                               ; preds = %3
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = load i32, i32* @ngx_rtmp_live_module, align 4
  %19 = call %struct.TYPE_25__* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__* %17, i32 %18)
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %7, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %21 = icmp ne %struct.TYPE_25__* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = icmp ne %struct.TYPE_24__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ngx_log_debug0(i32 %28, i32 %33, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %179

35:                                               ; preds = %22, %16
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %37 = icmp eq %struct.TYPE_25__* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.TYPE_25__* @ngx_palloc(i32 %43, i32 40)
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %7, align 8
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %47 = load i32, i32* @ngx_rtmp_live_module, align 4
  %48 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_23__* %45, %struct.TYPE_25__* %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %35
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %51 = call i32 @ngx_memzero(%struct.TYPE_25__* %50, i32 40)
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 4
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %54, align 8
  %55 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ngx_log_debug1(i32 %55, i32 %60, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %61)
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %49
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %49
  %73 = phi i1 [ true, %49 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call %struct.TYPE_24__** @ngx_rtmp_live_get_stream(%struct.TYPE_23__* %63, i32* %64, i32 %74)
  store %struct.TYPE_24__** %75, %struct.TYPE_24__*** %8, align 8
  %76 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %77 = icmp eq %struct.TYPE_24__** %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %104, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %87, %72
  %93 = load i32, i32* @NGX_LOG_ERR, align 4
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ngx_log_error(i32 %93, i32 %98, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = call i32 @ngx_rtmp_send_status(%struct.TYPE_23__* %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %103 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_23__* %102)
  br label %179

104:                                              ; preds = %87, %81, %78
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %104
  %108 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load i32, i32* @NGX_LOG_ERR, align 4
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ngx_log_error(i32 %114, i32 %119, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %122 = call i32 @ngx_rtmp_send_status(%struct.TYPE_23__* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %179

123:                                              ; preds = %107
  %124 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %104
  %128 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  store %struct.TYPE_24__* %129, %struct.TYPE_24__** %131, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 3
  store %struct.TYPE_25__* %138, %struct.TYPE_25__** %140, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %142 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %8, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 0, i32 2
  store %struct.TYPE_25__* %141, %struct.TYPE_25__** %144, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %127
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %127
  %153 = load i32, i32* @NGX_RTMP_CSID_VIDEO, align 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  store i32 %153, i32* %158, align 4
  %159 = load i32, i32* @NGX_RTMP_CSID_AUDIO, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i64 1
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  store i32 %159, i32* %164, align 4
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %152
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %178 = call i32 @ngx_rtmp_live_start(%struct.TYPE_23__* %177)
  br label %179

179:                                              ; preds = %15, %27, %92, %113, %176, %169, %152
  ret void
}

declare dso_local %struct.TYPE_26__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_ctx(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_25__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_23__*, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_24__** @ngx_rtmp_live_get_stream(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_send_status(%struct.TYPE_23__*, i8*, i8*, i8*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_rtmp_live_start(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

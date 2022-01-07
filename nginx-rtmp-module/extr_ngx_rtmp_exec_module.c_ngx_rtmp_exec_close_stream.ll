; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_close_stream.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_close_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_24__*, %struct.TYPE_18__ }
%struct.TYPE_24__ = type { i64, i32, %struct.TYPE_24__*, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_24__**, i32* }

@ngx_rtmp_exec_module = common dso_local global i32 0, align 4
@NGX_RTMP_EXEC_PUBLISHING = common dso_local global i32 0, align 4
@NGX_RTMP_EXEC_PUBLISH_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"publish_done\00", align 1
@NGX_RTMP_EXEC_PLAYING = common dso_local global i32 0, align 4
@NGX_RTMP_EXEC_PLAY_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"play_done\00", align 1
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"exec: delete %uz push command(s)\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"exec: delete %uz pull command(s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*)* @ngx_rtmp_exec_close_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_exec_close_stream(%struct.TYPE_22__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__**, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %12 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %13 = call %struct.TYPE_26__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_22__* %11, i32 %12)
  store %struct.TYPE_26__* %13, %struct.TYPE_26__** %10, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %15 = icmp eq %struct.TYPE_26__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %188

17:                                               ; preds = %2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %19 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %20 = call %struct.TYPE_25__* @ngx_rtmp_get_module_ctx(%struct.TYPE_22__* %18, i32 %19)
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %7, align 8
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %22 = icmp eq %struct.TYPE_25__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %188

24:                                               ; preds = %17
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NGX_RTMP_EXEC_PUBLISHING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @NGX_RTMP_EXEC_PUBLISH_DONE, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_22__* %32, i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %31, %24
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NGX_RTMP_EXEC_PLAYING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load i64, i64* @NGX_RTMP_EXEC_PLAY_DONE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = call i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_22__* %47, i32* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %54
  %63 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ngx_log_debug1(i32 %63, i32 %68, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %76, align 8
  store %struct.TYPE_23__* %77, %struct.TYPE_23__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %78

78:                                               ; preds = %91, %62
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %78
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ngx_rtmp_exec_kill(%struct.TYPE_23__* %86, i32 %89)
  br label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %5, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 1
  store %struct.TYPE_23__* %95, %struct.TYPE_23__** %6, align 8
  br label %78

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %54
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  store %struct.TYPE_24__* %100, %struct.TYPE_24__** %8, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %102 = icmp ne %struct.TYPE_24__* %101, null
  br i1 %102, label %103, label %185

103:                                              ; preds = %97
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %105, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %185

109:                                              ; preds = %103
  %110 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @ngx_log_debug1(i32 %110, i32 %115, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %119)
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %123, align 8
  store %struct.TYPE_23__* %124, %struct.TYPE_23__** %6, align 8
  store i64 0, i64* %5, align 8
  br label %125

125:                                              ; preds = %138, %109
  %126 = load i64, i64* %5, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ult i64 %126, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ngx_rtmp_exec_kill(%struct.TYPE_23__* %133, i32 %136)
  br label %138

138:                                              ; preds = %132
  %139 = load i64, i64* %5, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %5, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 1
  store %struct.TYPE_23__* %142, %struct.TYPE_23__** %6, align 8
  br label %125

143:                                              ; preds = %125
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %145, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @ngx_hash_key(i32 %150, i32 %154)
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = urem i64 %155, %158
  %160 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %146, i64 %159
  store %struct.TYPE_24__** %160, %struct.TYPE_24__*** %9, align 8
  br label %161

161:                                              ; preds = %176, %143
  %162 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %162, align 8
  %164 = icmp ne %struct.TYPE_24__* %163, null
  br i1 %164, label %165, label %180

165:                                              ; preds = %161
  %166 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %167 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %167, align 8
  %169 = icmp eq %struct.TYPE_24__* %166, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %165
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %172, align 8
  %174 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %174, align 8
  br label %180

175:                                              ; preds = %165
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  store %struct.TYPE_24__** %179, %struct.TYPE_24__*** %9, align 8
  br label %161

180:                                              ; preds = %170, %161
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ngx_destroy_pool(i32 %183)
  br label %185

185:                                              ; preds = %180, %103, %97
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %187, align 8
  br label %188

188:                                              ; preds = %185, %23, %16
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %190 = load i32*, i32** %4, align 8
  %191 = call i32 @next_close_stream(%struct.TYPE_22__* %189, i32* %190)
  ret i32 %191
}

declare dso_local %struct.TYPE_26__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_ctx(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_rtmp_exec_unmanaged(%struct.TYPE_22__*, i32*, i8*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i32 @ngx_rtmp_exec_kill(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_hash_key(i32, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32) #1

declare dso_local i32 @next_close_stream(%struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

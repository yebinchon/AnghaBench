; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_init.c_ngx_rtmp_init_session.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_init.c_ngx_rtmp_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_27__*, i32*, i64*, i32 }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_22__*, i32, i32, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_24__*, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__*, i32* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64*, i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, i32 }

@ngx_rtmp_core_module = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@ngx_rtmp_log_error = common dso_local global i32 0, align 4
@NGX_ERROR_INFO = common dso_local global i32 0, align 4
@ngx_rtmp_max_module = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i32 0, align 4
@NGX_RTMP_DEFAULT_CHUNK_SIZE = common dso_local global i32 0, align 4
@NGX_RTMP_CONNECT = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @ngx_rtmp_init_session(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %9 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_25__*
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = add i64 80, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @ngx_pcalloc(i32 %11, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %28, %struct.TYPE_23__** %6, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = icmp eq %struct.TYPE_23__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = call i32 @ngx_rtmp_close_connection(%struct.TYPE_27__* %32)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %179

34:                                               ; preds = %2
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 11
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 10
  store i64* %46, i64** %48, align 8
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 9
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 5
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %55, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 8
  store %struct.TYPE_27__* %56, %struct.TYPE_27__** %58, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.TYPE_24__* @ngx_palloc(i32 %61, i32 16)
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %8, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = icmp eq %struct.TYPE_24__* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %34
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %67 = call i32 @ngx_rtmp_close_connection(%struct.TYPE_27__* %66)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %179

68:                                               ; preds = %34
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  store %struct.TYPE_23__* %73, %struct.TYPE_23__** %75, align 8
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* @ngx_rtmp_log_error, align 4
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 1
  store %struct.TYPE_24__* %88, %struct.TYPE_24__** %92, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* @NGX_ERROR_INFO, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ngx_rtmp_max_module, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i8* @ngx_pcalloc(i32 %102, i32 %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 7
  store i32* %108, i32** %110, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %68
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %117 = call i32 @ngx_rtmp_close_connection(%struct.TYPE_27__* %116)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %179

118:                                              ; preds = %68
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ngx_rtmp_core_module, i32 0, i32 0), align 8
  %121 = call %struct.TYPE_25__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_23__* %119, i64 %120)
  store %struct.TYPE_25__* %121, %struct.TYPE_25__** %7, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = mul i64 4, %138
  %140 = trunc i64 %139 to i32
  %141 = call i8* @ngx_pcalloc(i32 %134, i32 %140)
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 5
  store i32* %142, i32** %144, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %118
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %151 = call i32 @ngx_rtmp_close_connection(%struct.TYPE_27__* %150)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %179

152:                                              ; preds = %118
  %153 = load i32, i32* @ngx_current_msec, align 4
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 8
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %167 = load i32, i32* @NGX_RTMP_DEFAULT_CHUNK_SIZE, align 4
  %168 = call i32 @ngx_rtmp_set_chunk_size(%struct.TYPE_23__* %166, i32 %167)
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %170 = load i32, i32* @NGX_RTMP_CONNECT, align 4
  %171 = call i64 @ngx_rtmp_fire_event(%struct.TYPE_23__* %169, i32 %170, i32* null, i32* null)
  %172 = load i64, i64* @NGX_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %152
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %176 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_23__* %175)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %179

177:                                              ; preds = %152
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %178, %struct.TYPE_23__** %3, align 8
  br label %179

179:                                              ; preds = %177, %174, %149, %115, %65, %31
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %180
}

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_close_connection(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_24__* @ngx_palloc(i32, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_srv_conf(%struct.TYPE_23__*, i64) #1

declare dso_local i32 @ngx_rtmp_set_chunk_size(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ngx_rtmp_fire_event(%struct.TYPE_23__*, i32, i32*, i32*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

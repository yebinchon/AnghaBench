; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_init_ctx.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_exec_module.c_ngx_rtmp_exec_init_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_26__ = type { i64, i32* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__*, i32, i32, i32* }
%struct.TYPE_24__ = type { i64, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i32, i32 }

@NGX_RTMP_MAX_NAME = common dso_local global i32 0, align 4
@NGX_RTMP_MAX_ARGS = common dso_local global i32 0, align 4
@ngx_rtmp_exec_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_RTMP_EXEC_PUSH = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_rtmp_exec_push_eval = common dso_local global i32 0, align 4
@NGX_CONF_UNSET_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, i32*, i32*, i64)* @ngx_rtmp_exec_init_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_exec_init_ctx(%struct.TYPE_21__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @NGX_RTMP_MAX_NAME, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* @NGX_RTMP_MAX_ARGS, align 4
  %20 = zext i32 %19 to i64
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %23 = call %struct.TYPE_24__* @ngx_rtmp_get_module_ctx(%struct.TYPE_21__* %21, i32 %22)
  store %struct.TYPE_24__* %23, %struct.TYPE_24__** %13, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %25 = icmp ne %struct.TYPE_24__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %144

27:                                               ; preds = %4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_24__* @ngx_pcalloc(i32 %32, i32 24)
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %13, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %35 = icmp eq %struct.TYPE_24__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %5, align 8
  br label %163

38:                                               ; preds = %27
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %41 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %42 = call i32 @ngx_rtmp_set_ctx(%struct.TYPE_21__* %39, %struct.TYPE_24__* %40, i32 %41)
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %44 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %45 = call %struct.TYPE_25__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_21__* %43, i32 %44)
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %15, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %47 = load i32, i32* @ngx_rtmp_exec_module, align 4
  %48 = call %struct.TYPE_23__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_21__* %46, i32 %47)
  store %struct.TYPE_23__* %48, %struct.TYPE_23__** %16, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %50, align 8
  %52 = load i64, i64* @NGX_RTMP_EXEC_PUSH, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i64 %52
  store %struct.TYPE_26__* %53, %struct.TYPE_26__** %11, align 8
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %143

58:                                               ; preds = %38
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @ngx_array_init(i32* %60, i32 %65, i64 %68, i32 40)
  %70 = load i64, i64* @NGX_OK, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i64, i64* @NGX_ERROR, align 8
  store i64 %73, i64* %5, align 8
  br label %163

74:                                               ; preds = %58
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.TYPE_22__* @ngx_array_push_n(i32* %76, i64 %79)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %12, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %82 = icmp eq %struct.TYPE_22__* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = load i64, i64* @NGX_ERROR, align 8
  store i64 %84, i64* %5, align 8
  br label %163

85:                                               ; preds = %74
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %14, align 8
  store i64 0, i64* %10, align 8
  br label %89

89:                                               ; preds = %135, %85
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %142

95:                                               ; preds = %89
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %97 = call i32 @ngx_memzero(%struct.TYPE_22__* %96, i32 40)
  %98 = load i32*, i32** %14, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 6
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @ngx_rtmp_exec_push_eval, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  store %struct.TYPE_21__* %113, %struct.TYPE_21__** %115, align 8
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %95
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  br label %131

129:                                              ; preds = %95
  %130 = load i32, i32* @NGX_CONF_UNSET_MSEC, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = phi i32 [ %128, %125 ], [ %130, %129 ]
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %10, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %10, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 1
  store %struct.TYPE_22__* %139, %struct.TYPE_22__** %12, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %14, align 8
  br label %89

142:                                              ; preds = %89
  br label %143

143:                                              ; preds = %142, %38
  br label %144

144:                                              ; preds = %143, %26
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* @NGX_RTMP_MAX_NAME, align 4
  %150 = call i32 @ngx_memcpy(i32 %147, i32* %148, i32 %149)
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @NGX_RTMP_MAX_ARGS, align 4
  %156 = call i32 @ngx_memcpy(i32 %153, i32* %154, i32 %155)
  %157 = load i64, i64* %9, align 8
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = or i64 %160, %157
  store i64 %161, i64* %159, align 8
  %162 = load i64, i64* @NGX_OK, align 8
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %144, %83, %72, %36
  %164 = load i64, i64* %5, align 8
  ret i64 %164
}

declare dso_local %struct.TYPE_24__* @ngx_rtmp_get_module_ctx(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_24__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_set_ctx(%struct.TYPE_21__*, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_rtmp_get_module_main_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_array_init(i32*, i32, i64, i32) #1

declare dso_local %struct.TYPE_22__* @ngx_array_push_n(i32*, i64) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

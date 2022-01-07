; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_play.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_play.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__*, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_24__, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, i32 }

@ngx_rtmp_relay_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"relay: pull failed name='%V' app='%V' playpath='%V' url='%V'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_29__*)* @ngx_rtmp_relay_play to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_relay_play(%struct.TYPE_26__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_27__**, align 8
  %8 = alloca %struct.TYPE_25__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %12 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %13 = call i32* @ngx_rtmp_get_module_ctx(%struct.TYPE_26__* %11, i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %112

22:                                               ; preds = %16, %2
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %25 = call %struct.TYPE_28__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_26__* %23, i32 %24)
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %5, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = icmp eq %struct.TYPE_28__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  br label %112

35:                                               ; preds = %28
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ngx_strlen(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %47, align 8
  store %struct.TYPE_27__** %48, %struct.TYPE_27__*** %7, align 8
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %106, %35
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %111

56:                                               ; preds = %49
  %57 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %7, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %57, align 8
  store %struct.TYPE_27__* %58, %struct.TYPE_27__** %6, align 8
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %83, label %72

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %8, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @ngx_memcmp(i32 %74, i32 %78, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72, %64
  br label %106

84:                                               ; preds = %72, %56
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %87 = call i64 @ngx_rtmp_relay_pull(%struct.TYPE_26__* %85, %struct.TYPE_25__* %8, %struct.TYPE_27__* %86)
  %88 = load i64, i64* @NGX_OK, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %106

91:                                               ; preds = %84
  %92 = load i32, i32* @NGX_LOG_ERR, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = call i32 @ngx_log_error(i32 %92, i32 %97, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %8, i32* %99, i32* %101, i32* %104)
  br label %106

106:                                              ; preds = %91, %90, %83
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %9, align 8
  %109 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %109, i32 1
  store %struct.TYPE_27__** %110, %struct.TYPE_27__*** %7, align 8
  br label %49

111:                                              ; preds = %49
  br label %112

112:                                              ; preds = %111, %34, %21
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %115 = call i32 @next_play(%struct.TYPE_26__* %113, %struct.TYPE_29__* %114)
  ret i32 %115
}

declare dso_local i32* @ngx_rtmp_get_module_ctx(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_strlen(i32) #1

declare dso_local i64 @ngx_memcmp(i32, i32, i64) #1

declare dso_local i64 @ngx_rtmp_relay_pull(%struct.TYPE_26__*, %struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_25__*, i32*, i32*, i32*) #1

declare dso_local i32 @next_play(%struct.TYPE_26__*, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_push_reconnect.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_push_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { %struct.TYPE_25__, i32, i32, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_27__*, i32*, %struct.TYPE_28__*, %struct.TYPE_28__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }

@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"relay: push reconnect\00", align 1
@ngx_rtmp_relay_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"relay: push reconnect failed name='%V' app='%V' playpath='%V' url='%V'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_30__*)* @ngx_rtmp_relay_push_reconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_relay_push_reconnect(%struct.TYPE_30__* %0) #0 {
  %2 = alloca %struct.TYPE_30__*, align 8
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__**, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %2, align 8
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %3, align 8
  %13 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ngx_log_debug0(i32 %13, i32 %18, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %21 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %22 = call %struct.TYPE_29__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_26__* %20, i32 %21)
  store %struct.TYPE_29__* %22, %struct.TYPE_29__** %4, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %24 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %25 = call %struct.TYPE_28__* @ngx_rtmp_get_module_ctx(%struct.TYPE_26__* %23, i32 %24)
  store %struct.TYPE_28__* %25, %struct.TYPE_28__** %5, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = icmp eq %struct.TYPE_28__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %147

29:                                               ; preds = %1
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %32, align 8
  store %struct.TYPE_27__** %33, %struct.TYPE_27__*** %9, align 8
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %142, %29
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %35, %39
  br i1 %40, label %41, label %147

41:                                               ; preds = %34
  %42 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  store %struct.TYPE_27__* %43, %struct.TYPE_27__** %8, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %41
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %53, %57
  br i1 %58, label %74, label %59

59:                                               ; preds = %49
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @ngx_memcmp(i32 %63, i32 %67, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59, %49
  br label %142

75:                                               ; preds = %59, %41
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %77, align 8
  store %struct.TYPE_28__* %78, %struct.TYPE_28__** %6, align 8
  br label %79

79:                                               ; preds = %95, %75
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %81 = icmp ne %struct.TYPE_28__* %80, null
  br i1 %81, label %82, label %99

82:                                               ; preds = %79
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, @ngx_rtmp_relay_module
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %92 = icmp eq %struct.TYPE_27__* %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %99

94:                                               ; preds = %87, %82
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %97, align 8
  store %struct.TYPE_28__* %98, %struct.TYPE_28__** %6, align 8
  br label %79

99:                                               ; preds = %93, %79
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %101 = icmp ne %struct.TYPE_28__* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %142

103:                                              ; preds = %99
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %108 = call i64 @ngx_rtmp_relay_push(%struct.TYPE_26__* %104, %struct.TYPE_20__* %106, %struct.TYPE_27__* %107)
  %109 = load i64, i64* @NGX_OK, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %142

112:                                              ; preds = %103
  %113 = load i32, i32* @NGX_LOG_ERR, align 4
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 0
  %128 = call i32 @ngx_log_error(i32 %113, i32 %118, i32 0, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_20__* %120, i32* %122, i32* %124, i32* %127)
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %112
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ngx_add_timer(%struct.TYPE_21__* %136, i32 %139)
  br label %141

141:                                              ; preds = %134, %112
  br label %142

142:                                              ; preds = %141, %111, %102, %74
  %143 = load i64, i64* %7, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %7, align 8
  %145 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %145, i32 1
  store %struct.TYPE_27__** %146, %struct.TYPE_27__*** %9, align 8
  br label %34

147:                                              ; preds = %28, %34
  ret void
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_29__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_26__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_rtmp_get_module_ctx(%struct.TYPE_26__*, i32) #1

declare dso_local i64 @ngx_memcmp(i32, i32, i64) #1

declare dso_local i64 @ngx_rtmp_relay_push(%struct.TYPE_26__*, %struct.TYPE_20__*, %struct.TYPE_27__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

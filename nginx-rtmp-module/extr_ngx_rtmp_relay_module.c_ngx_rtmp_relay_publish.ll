; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_publish.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_relay_module.c_ngx_rtmp_relay_publish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_28__*, i64, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, %struct.TYPE_32__** }
%struct.TYPE_32__ = type { %struct.TYPE_29__, i32, i32, %struct.TYPE_27__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }

@ngx_rtmp_relay_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"relay: push failed name='%V' app='%V' playpath='%V' url='%V'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_31__*, %struct.TYPE_24__*)* @ngx_rtmp_relay_publish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_relay_publish(%struct.TYPE_31__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_31__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca %struct.TYPE_32__**, align 8
  %8 = alloca %struct.TYPE_30__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %11 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %131

16:                                               ; preds = %2
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %18 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %19 = call %struct.TYPE_33__* @ngx_rtmp_get_module_ctx(%struct.TYPE_31__* %17, i32 %18)
  store %struct.TYPE_33__* %19, %struct.TYPE_33__** %10, align 8
  %20 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %21 = icmp ne %struct.TYPE_33__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %131

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %30 = load i32, i32* @ngx_rtmp_relay_module, align 4
  %31 = call %struct.TYPE_34__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_31__* %29, i32 %30)
  store %struct.TYPE_34__* %31, %struct.TYPE_34__** %5, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %33 = icmp eq %struct.TYPE_34__* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %28
  br label %131

41:                                               ; preds = %34
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ngx_strlen(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %53, align 8
  store %struct.TYPE_32__** %54, %struct.TYPE_32__*** %7, align 8
  store i64 0, i64* %9, align 8
  br label %55

55:                                               ; preds = %125, %41
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %56, %60
  br i1 %61, label %62, label %130

62:                                               ; preds = %55
  %63 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %63, align 8
  store %struct.TYPE_32__* %64, %struct.TYPE_32__** %6, align 8
  %65 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %72, %76
  br i1 %77, label %89, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %8, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @ngx_memcmp(i32 %80, i32 %84, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78, %70
  br label %125

90:                                               ; preds = %78, %62
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %93 = call i64 @ngx_rtmp_relay_push(%struct.TYPE_31__* %91, %struct.TYPE_30__* %8, %struct.TYPE_32__* %92)
  %94 = load i64, i64* @NGX_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %125

97:                                               ; preds = %90
  %98 = load i32, i32* @NGX_LOG_ERR, align 4
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %109, i32 0, i32 0
  %111 = call i32 @ngx_log_error(i32 %98, i32 %103, i32 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), %struct.TYPE_30__* %8, i32* %105, i32* %107, i32* %110)
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %97
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ngx_add_timer(%struct.TYPE_26__* %119, i32 %122)
  br label %124

124:                                              ; preds = %117, %97
  br label %125

125:                                              ; preds = %124, %96, %89
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %9, align 8
  %128 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %128, i32 1
  store %struct.TYPE_32__** %129, %struct.TYPE_32__*** %7, align 8
  br label %55

130:                                              ; preds = %55
  br label %131

131:                                              ; preds = %130, %40, %27, %15
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %3, align 8
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %134 = call i32 @next_publish(%struct.TYPE_31__* %132, %struct.TYPE_24__* %133)
  ret i32 %134
}

declare dso_local %struct.TYPE_33__* @ngx_rtmp_get_module_ctx(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_34__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_31__*, i32) #1

declare dso_local i64 @ngx_strlen(i32) #1

declare dso_local i64 @ngx_memcmp(i32, i32, i64) #1

declare dso_local i64 @ngx_rtmp_relay_push(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_32__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_30__*, i32*, i32*, i32*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @next_publish(%struct.TYPE_31__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

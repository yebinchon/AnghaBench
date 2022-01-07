; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_optimize_servers.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp.c_ngx_rtmp_optimize_servers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_27__*, %struct.TYPE_28__*, i32, i32, i32, i32, i32, %struct.TYPE_26__, i32, i32*, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i32, i32* }

@ngx_rtmp_cmp_conf_addrs = common dso_local global i32 0, align 4
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_rtmp_init_connection = common dso_local global i32 0, align 4
@ngx_accept_log_error = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_32__*, %struct.TYPE_23__*)* @ngx_rtmp_optimize_servers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_rtmp_optimize_servers(%struct.TYPE_32__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  store %struct.TYPE_29__* %16, %struct.TYPE_29__** %12, align 8
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %174, %2
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %177

23:                                               ; preds = %17
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %28, align 8
  %30 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @ngx_rtmp_cmp_conf_addrs, align 4
  %37 = call i32 @ngx_sort(%struct.TYPE_30__* %29, i64 %35, i32 40, i32 %36)
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %42, align 8
  store %struct.TYPE_30__* %43, %struct.TYPE_30__** %13, align 8
  %44 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, 1
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %23
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  store i64 1, i64* %9, align 8
  br label %64

63:                                               ; preds = %23
  store i64 0, i64* %9, align 8
  br label %64

64:                                               ; preds = %63, %57
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %168, %79, %64
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %173

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %6, align 8
  br label %65

82:                                               ; preds = %72, %69
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %85 = load i64, i64* %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.TYPE_31__* @ngx_create_listening(%struct.TYPE_32__* %83, i32 %88, i32 %93)
  store %struct.TYPE_31__* %94, %struct.TYPE_31__** %10, align 8
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %96 = icmp eq %struct.TYPE_31__* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %98, i8** %3, align 8
  br label %179

99:                                               ; preds = %82
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i32, i32* @ngx_rtmp_init_connection, align 4
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 1
  store i32 4096, i32* %106, align 4
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 11
  store i32* %110, i32** %112, align 8
  %113 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %113, i32 0, i32 10
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %115, i32 0, i32 9
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 1
  store i32* %114, i32** %117, align 8
  %118 = load i32, i32* @ngx_accept_log_error, align 4
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 9
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %123 = load i64, i64* %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.TYPE_28__* @ngx_palloc(i32 %131, i32 8)
  store %struct.TYPE_28__* %132, %struct.TYPE_28__** %11, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %134 = icmp eq %struct.TYPE_28__* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %99
  %136 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %136, i8** %3, align 8
  br label %179

137:                                              ; preds = %99
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %139, i32 0, i32 3
  store %struct.TYPE_28__* %138, %struct.TYPE_28__** %140, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* %8, align 8
  %143 = sub i64 %142, 1
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i64, i64* %8, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %152

149:                                              ; preds = %137
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  store i64 1, i64* %151, align 8
  store i64 0, i64* %6, align 8
  br label %152

152:                                              ; preds = %149, %145
  %153 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_27__*, %struct.TYPE_27__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %158 [
  ]

158:                                              ; preds = %152
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %162 = call i32 @ngx_rtmp_add_addrs(%struct.TYPE_32__* %159, %struct.TYPE_28__* %160, %struct.TYPE_30__* %161)
  %163 = load i32, i32* @NGX_OK, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %158
  %166 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %166, i8** %3, align 8
  br label %179

167:                                              ; preds = %158
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 1
  store %struct.TYPE_30__* %170, %struct.TYPE_30__** %13, align 8
  %171 = load i64, i64* %8, align 8
  %172 = add i64 %171, -1
  store i64 %172, i64* %8, align 8
  br label %65

173:                                              ; preds = %65
  br label %174

174:                                              ; preds = %173
  %175 = load i64, i64* %7, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %7, align 8
  br label %17

177:                                              ; preds = %17
  %178 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %178, i8** %3, align 8
  br label %179

179:                                              ; preds = %177, %165, %135, %97
  %180 = load i8*, i8** %3, align 8
  ret i8* %180
}

declare dso_local i32 @ngx_sort(%struct.TYPE_30__*, i64, i32, i32) #1

declare dso_local %struct.TYPE_31__* @ngx_create_listening(%struct.TYPE_32__*, i32, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_rtmp_add_addrs(%struct.TYPE_32__*, %struct.TYPE_28__*, %struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

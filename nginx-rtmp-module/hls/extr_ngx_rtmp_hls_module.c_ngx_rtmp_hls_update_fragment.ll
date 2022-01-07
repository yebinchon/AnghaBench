; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_update_fragment.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/hls/extr_ngx_rtmp_hls_module.c_ngx_rtmp_hls_update_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i64, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_21__ = type { i32, i32, i64, i64 }
%struct.TYPE_19__ = type { i32 }

@ngx_rtmp_hls_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hls: force fragment split: %.3f sec, \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32, i32, i32)* @ngx_rtmp_hls_update_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_hls_update_fragment(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %19 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %20 = call %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__* %18, i32 %19)
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %10, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = load i32, i32* @ngx_rtmp_hls_module, align 4
  %23 = call %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__* %21, i32 %22)
  store %struct.TYPE_20__* %23, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.TYPE_19__* @ngx_rtmp_hls_get_frag(%struct.TYPE_18__* %29, i32 %32)
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %11, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %43, 90
  %45 = icmp sgt i32 %39, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %17, align 4
  %48 = icmp slt i32 %47, -90000
  br i1 %48, label %49, label %61

49:                                               ; preds = %46, %28
  %50 = load i32, i32* @NGX_LOG_ERR, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 9.000000e+04
  %59 = fptosi double %58 to i32
  %60 = call i32 @ngx_log_error(i32 %50, i32 %55, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32 1, i32* %14, align 4
  br label %72

61:                                               ; preds = %46
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %62, %65
  %67 = sitofp i32 %66 to double
  %68 = fdiv double %67, 9.000000e+04
  %69 = fptosi double %68 to i32
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %61, %49
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %130 [
    i32 128, label %77
    i32 129, label %93
  ]

77:                                               ; preds = %73
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %79 = icmp ne %struct.TYPE_19__* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sitofp i32 %83 to double
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %88, 1.000000e+03
  %90 = fcmp olt double %84, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %80
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %80, %77
  br label %130

93:                                               ; preds = %73
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 90
  store i32 %97, i32* %12, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sdiv i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sdiv i32 %103, %104
  %106 = icmp eq i32 %102, %105
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %109 = icmp ne %struct.TYPE_19__* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %93
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %113, %110, %93
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %116 = icmp eq %struct.TYPE_19__* %115, null
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122, %117
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %125, %122, %114
  br label %130

130:                                              ; preds = %73, %129, %92
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %14, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133, %130
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = call i32 @ngx_rtmp_hls_close_fragment(%struct.TYPE_18__* %137)
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @ngx_rtmp_hls_open_fragment(%struct.TYPE_18__* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %136, %133
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %145, align 8
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %16, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %143
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %153 = icmp ne %struct.TYPE_22__* %152, null
  br i1 %153, label %154, label %179

154:                                              ; preds = %151
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %157, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %154
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = mul nsw i32 %169, 90
  %171 = load i32, i32* %8, align 4
  %172 = sdiv i32 %170, %171
  %173 = add nsw i32 %165, %172
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %162
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %178 = call i32 @ngx_rtmp_hls_flush_audio(%struct.TYPE_18__* %177)
  br label %179

179:                                              ; preds = %176, %162, %154, %151, %143
  ret void
}

declare dso_local %struct.TYPE_21__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_20__* @ngx_rtmp_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_rtmp_hls_get_frag(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_rtmp_hls_close_fragment(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_rtmp_hls_open_fragment(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ngx_rtmp_hls_flush_audio(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_disconnect.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_log_module.c_ngx_rtmp_log_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__*, i64, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_18__*, i64 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32* (%struct.TYPE_22__*, i32*, %struct.TYPE_24__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_24__*)* }

@NGX_OK = common dso_local global i32 0, align 4
@ngx_rtmp_log_module = common dso_local global i32 0, align 4
@NGX_LINEFEED_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32*, i32*)* @ngx_rtmp_log_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_log_disconnect(%struct.TYPE_22__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %3
  %26 = load i32, i32* @NGX_OK, align 4
  store i32 %26, i32* %4, align 4
  br label %166

27:                                               ; preds = %20
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %29 = load i32, i32* @ngx_rtmp_log_module, align 4
  %30 = call %struct.TYPE_25__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_22__* %28, i32 %29)
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %8, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %32 = icmp eq %struct.TYPE_25__* %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  %42 = icmp eq %struct.TYPE_18__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %33, %27
  %44 = load i32, i32* @NGX_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %166

45:                                               ; preds = %38
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %49, align 8
  store %struct.TYPE_23__* %50, %struct.TYPE_23__** %9, align 8
  store i64 0, i64* %12, align 8
  br label %51

51:                                               ; preds = %159, %45
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %52, %57
  br i1 %58, label %59, label %164

59:                                               ; preds = %51
  %60 = call i64 (...) @ngx_time()
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %159

66:                                               ; preds = %59
  store i64 0, i64* %15, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %74

74:                                               ; preds = %93, %66
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %75, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %74
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = load i64 (%struct.TYPE_22__*, %struct.TYPE_24__*)*, i64 (%struct.TYPE_22__*, %struct.TYPE_24__*)** %86, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %90 = call i64 %87(%struct.TYPE_22__* %88, %struct.TYPE_24__* %89)
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %84
  %94 = load i64, i64* %11, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %11, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 1
  store %struct.TYPE_24__* %97, %struct.TYPE_24__** %10, align 8
  br label %74

98:                                               ; preds = %74
  %99 = load i64, i64* @NGX_LINEFEED_SIZE, align 8
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %15, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %15, align 8
  %108 = call i32* @ngx_palloc(i32 %106, i64 %107)
  store i32* %108, i32** %13, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %98
  %112 = load i32, i32* @NGX_OK, align 4
  store i32 %112, i32* %4, align 4
  br label %166

113:                                              ; preds = %98
  %114 = load i32*, i32** %13, align 8
  store i32* %114, i32** %14, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  store %struct.TYPE_24__* %121, %struct.TYPE_24__** %10, align 8
  store i64 0, i64* %11, align 8
  br label %122

122:                                              ; preds = %140, %113
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %123, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %122
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load i32* (%struct.TYPE_22__*, i32*, %struct.TYPE_24__*)*, i32* (%struct.TYPE_22__*, i32*, %struct.TYPE_24__*)** %134, align 8
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %139 = call i32* %135(%struct.TYPE_22__* %136, i32* %137, %struct.TYPE_24__* %138)
  store i32* %139, i32** %14, align 8
  br label %140

140:                                              ; preds = %132
  %141 = load i64, i64* %11, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %11, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %143, i32 1
  store %struct.TYPE_24__* %144, %struct.TYPE_24__** %10, align 8
  br label %122

145:                                              ; preds = %122
  %146 = load i32*, i32** %14, align 8
  %147 = call i32 @ngx_linefeed(i32* %146)
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = ptrtoint i32* %151 to i64
  %154 = ptrtoint i32* %152 to i64
  %155 = sub i64 %153, %154
  %156 = sdiv exact i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 @ngx_rtmp_log_write(%struct.TYPE_22__* %148, %struct.TYPE_23__* %149, i32* %150, i32 %157)
  br label %159

159:                                              ; preds = %145, %65
  %160 = load i64, i64* %12, align 8
  %161 = add nsw i64 %160, 1
  store i64 %161, i64* %12, align 8
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 1
  store %struct.TYPE_23__* %163, %struct.TYPE_23__** %9, align 8
  br label %51

164:                                              ; preds = %51
  %165 = load i32, i32* @NGX_OK, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %164, %111, %43, %25
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_25__* @ngx_rtmp_get_module_app_conf(%struct.TYPE_22__*, i32) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local i32* @ngx_palloc(i32, i64) #1

declare dso_local i32 @ngx_linefeed(i32*) #1

declare dso_local i32 @ngx_rtmp_log_write(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

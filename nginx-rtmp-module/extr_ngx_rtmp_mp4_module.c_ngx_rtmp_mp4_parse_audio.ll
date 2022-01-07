; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_audio.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_parse_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@ngx_rtmp_mp4_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"mp4: audio settings version=%ui, codec=%i, nchannels==%ui, sample_size=%ui, sample_rate=%ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i32*, i32*, i64)* @ngx_rtmp_mp4_parse_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_rtmp_mp4_parse_audio(%struct.TYPE_11__* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = load i32, i32* @ngx_rtmp_mp4_module, align 4
  %15 = call %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(%struct.TYPE_11__* %13, i32 %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %10, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i64, i64* @NGX_OK, align 8
  store i64 %21, i64* %5, align 8
  br label %159

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 28
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ugt i32* %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %5, align 8
  br label %159

35:                                               ; preds = %22
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @ngx_rtmp_r16(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %12, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ngx_rtmp_r16(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  store i32* %51, i32** %7, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @ngx_rtmp_r16(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 6
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ngx_rtmp_r16(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  store i32* %67, i32** %7, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %11, align 8
  store i32 0, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %35
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %77, %35
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 16
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, 2
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  switch i32 %93, label %103 [
    i32 5512, label %94
    i32 11025, label %95
    i32 22050, label %99
  ]

94:                                               ; preds = %90
  br label %107

95:                                               ; preds = %90
  %96 = load i32*, i32** %11, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, 4
  store i32 %98, i32* %96, align 4
  br label %107

99:                                               ; preds = %90
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, 8
  store i32 %102, i32* %100, align 4
  br label %107

103:                                              ; preds = %90
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 12
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %103, %99, %95, %94
  %108 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %12, align 4
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ngx_log_debug5(i32 %108, i32 %113, i32 0, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %114, i64 %115, i32 %118, i32 %121, i32 %124)
  %126 = load i32, i32* %12, align 4
  switch i32 %126, label %133 [
    i32 1, label %127
    i32 2, label %130
  ]

127:                                              ; preds = %107
  %128 = load i32*, i32** %7, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 16
  store i32* %129, i32** %7, align 8
  br label %133

130:                                              ; preds = %107
  %131 = load i32*, i32** %7, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 36
  store i32* %132, i32** %7, align 8
  br label %133

133:                                              ; preds = %130, %107, %127
  %134 = load i32*, i32** %7, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = icmp ugt i32* %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i64, i64* @NGX_ERROR, align 8
  store i64 %138, i64* %5, align 8
  br label %159

139:                                              ; preds = %133
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i64 @ngx_rtmp_mp4_parse(%struct.TYPE_11__* %140, i32* %141, i32* %142)
  %144 = load i64, i64* @NGX_OK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i64, i64* @NGX_ERROR, align 8
  store i64 %147, i64* %5, align 8
  br label %159

148:                                              ; preds = %139
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  %158 = load i64, i64* @NGX_OK, align 8
  store i64 %158, i64* %5, align 8
  br label %159

159:                                              ; preds = %148, %146, %137, %33, %20
  %160 = load i64, i64* %5, align 8
  ret i64 %160
}

declare dso_local %struct.TYPE_12__* @ngx_rtmp_get_module_ctx(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @ngx_rtmp_r16(i32) #1

declare dso_local i32 @ngx_log_debug5(i32, i32, i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i64 @ngx_rtmp_mp4_parse(%struct.TYPE_11__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

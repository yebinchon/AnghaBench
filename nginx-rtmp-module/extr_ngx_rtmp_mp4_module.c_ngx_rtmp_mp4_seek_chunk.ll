; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_seek_chunk.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_mp4_module.c_ngx_rtmp_mp4_seek_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i64, i64, i64 }

@NGX_OK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"mp4: track#%ui seek chunk[%ui/%uD][%uD..%ui][%ui/%uD]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* @ngx_rtmp_mp4_seek_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_seek_chunk(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 2
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18, %2
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @NGX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %171

29:                                               ; preds = %18
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  store %struct.TYPE_16__* %34, %struct.TYPE_16__** %7, align 8
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %72, %29
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @ngx_rtmp_r32(i64 %44)
  %46 = icmp slt i64 %39, %45
  br i1 %46, label %47, label %82

47:                                               ; preds = %35
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i64 1
  store %struct.TYPE_16__* %49, %struct.TYPE_16__** %8, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @ngx_rtmp_r32(i64 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @ngx_rtmp_r32(i64 %56)
  %58 = sub nsw i64 %53, %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i64 @ngx_rtmp_r32(i64 %61)
  %63 = mul nsw i64 %58, %62
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %47
  br label %82

72:                                               ; preds = %47
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 1
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %7, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %35

82:                                               ; preds = %71, %35
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @NGX_ERROR, align 4
  store i32 %88, i32* %3, align 4
  br label %171

89:                                               ; preds = %82
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = sub nsw i64 %92, %93
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @ngx_rtmp_r32(i64 %97)
  %99 = sdiv i64 %94, %98
  store i64 %99, i64* %11, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i64 @ngx_rtmp_r32(i64 %102)
  %104 = load i64, i64* %11, align 8
  %105 = add nsw i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %113, align 8
  %115 = ptrtoint %struct.TYPE_16__* %109 to i64
  %116 = ptrtoint %struct.TYPE_16__* %114 to i64
  %117 = sub i64 %115, %116
  %118 = sdiv exact i64 %117, 16
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %9, align 8
  %125 = sub nsw i64 %123, %124
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i64 @ngx_rtmp_r32(i64 %129)
  %131 = mul nsw i64 %126, %130
  %132 = sub nsw i64 %125, %131
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 3
  store i64 %132, i64* %134, align 8
  %135 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i64 @ngx_rtmp_r32(i64 %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @ngx_rtmp_r32(i64 %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @ngx_rtmp_r32(i64 %165)
  %167 = call i32 @ngx_log_debug7(i32 %135, i32 %140, i32 0, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %143, i64 %146, i64 %152, i64 %156, i32 %159, i64 %162, i64 %166)
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %170 = call i32 @ngx_rtmp_mp4_update_offset(%struct.TYPE_13__* %168, %struct.TYPE_14__* %169)
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %89, %87, %25
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i64 @ngx_rtmp_r32(i64) #1

declare dso_local i32 @ngx_log_debug7(i32, i32, i32, i8*, i32, i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @ngx_rtmp_mp4_update_offset(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

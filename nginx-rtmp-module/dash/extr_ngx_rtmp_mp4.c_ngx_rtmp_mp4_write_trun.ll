; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_trun.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/dash/extr_ngx_rtmp_mp4.c_ngx_rtmp_mp4_write_trun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [5 x i8] c"trun\00", align 1
@NGX_RTMP_MP4_SAMPLE_DURATION = common dso_local global i32 0, align 4
@NGX_RTMP_MP4_SAMPLE_SIZE = common dso_local global i32 0, align 4
@NGX_RTMP_MP4_SAMPLE_KEY = common dso_local global i32 0, align 4
@NGX_RTMP_MP4_SAMPLE_DELAY = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_3__*, i32, i32*)* @ngx_rtmp_mp4_write_trun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_rtmp_mp4_write_trun(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @ngx_rtmp_mp4_start_box(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_DURATION, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = or i32 %25, 256
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %22, %5
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_SIZE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = or i32 %35, 512
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_KEY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = or i32 %45, 1024
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_DELAY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = or i32 %55, 2048
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = ptrtoint i32* %58 to i64
  %61 = ptrtoint i32* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = add nsw i64 %63, 20
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %14, align 4
  %67 = mul nsw i32 %65, %66
  %68 = mul nsw i32 %67, 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %64, %69
  %71 = add nsw i64 %70, 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @ngx_rtmp_mp4_field_32(i32* %73, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ngx_rtmp_mp4_field_32(i32* %76, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @ngx_rtmp_mp4_field_32(i32* %79, i32 %80)
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %134, %57
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %139

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_DURATION, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32*, i32** %6, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ngx_rtmp_mp4_field_32(i32* %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %86
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_SIZE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32*, i32** %6, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ngx_rtmp_mp4_field_32(i32* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_KEY, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i32*, i32** %6, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 0, i32 65536
  %121 = call i32 @ngx_rtmp_mp4_field_32(i32* %114, i32 %120)
  br label %122

122:                                              ; preds = %113, %108
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @NGX_RTMP_MP4_SAMPLE_DELAY, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32*, i32** %6, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @ngx_rtmp_mp4_field_32(i32* %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %122
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 1
  store %struct.TYPE_3__* %138, %struct.TYPE_3__** %8, align 8
  br label %82

139:                                              ; preds = %82
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @ngx_rtmp_mp4_update_box_size(i32* %140, i32* %141)
  %143 = load i32, i32* @NGX_OK, align 4
  ret i32 %143
}

declare dso_local i32* @ngx_rtmp_mp4_start_box(i32*, i8*) #1

declare dso_local i32 @ngx_rtmp_mp4_field_32(i32*, i32) #1

declare dso_local i32 @ngx_rtmp_mp4_update_box_size(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

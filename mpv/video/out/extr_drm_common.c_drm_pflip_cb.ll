; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_drm_pflip_cb.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_drm_pflip_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_pflip_cb_closure = type { i32*, %struct.vo_vsync_info*, %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple* }
%struct.vo_vsync_info = type { i32, i32, i32 }
%struct.drm_vsync_tuple = type { i32, i64, i32 }
%struct.timespec = type { i64, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_pflip_cb(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.drm_pflip_cb_closure*, align 8
  %12 = alloca %struct.drm_vsync_tuple*, align 8
  %13 = alloca %struct.drm_vsync_tuple*, align 8
  %14 = alloca %struct.vo_vsync_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.timespec, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.drm_pflip_cb_closure*
  store %struct.drm_pflip_cb_closure* %25, %struct.drm_pflip_cb_closure** %11, align 8
  %26 = load %struct.drm_pflip_cb_closure*, %struct.drm_pflip_cb_closure** %11, align 8
  %27 = getelementptr inbounds %struct.drm_pflip_cb_closure, %struct.drm_pflip_cb_closure* %26, i32 0, i32 3
  %28 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %27, align 8
  store %struct.drm_vsync_tuple* %28, %struct.drm_vsync_tuple** %12, align 8
  %29 = load %struct.drm_pflip_cb_closure*, %struct.drm_pflip_cb_closure** %11, align 8
  %30 = getelementptr inbounds %struct.drm_pflip_cb_closure, %struct.drm_pflip_cb_closure* %29, i32 0, i32 2
  %31 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %30, align 8
  store %struct.drm_vsync_tuple* %31, %struct.drm_vsync_tuple** %13, align 8
  %32 = load %struct.drm_pflip_cb_closure*, %struct.drm_pflip_cb_closure** %11, align 8
  %33 = getelementptr inbounds %struct.drm_pflip_cb_closure, %struct.drm_pflip_cb_closure* %32, i32 0, i32 1
  %34 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %33, align 8
  store %struct.vo_vsync_info* %34, %struct.vo_vsync_info** %14, align 8
  %35 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %36 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %5
  %40 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %13, align 8
  %41 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %13, align 8
  %46 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %39, %5
  %50 = phi i1 [ false, %39 ], [ false, %5 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = mul nsw i64 %53, 1000000
  %55 = load i32, i32* %9, align 4
  %56 = zext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %61 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub i32 %59, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %16, align 4
  %65 = zext i32 %64 to i64
  %66 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %67 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %70 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %138

73:                                               ; preds = %49
  %74 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %75 = call i64 @clock_gettime(i32 %74, %struct.timespec* %18)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %139

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul nsw i64 %80, 1000000
  %82 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sdiv i32 %83, 1000
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %81, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %19, align 4
  %88 = call i32 (...) @mp_time_us()
  %89 = zext i32 %88 to i64
  %90 = load i32, i32* %19, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %93 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %91, %94
  %96 = sub nsw i64 %89, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %20, align 4
  %98 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %99 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %13, align 8
  %102 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %21, align 4
  %106 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %107 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %13, align 8
  %110 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub i32 %108, %111
  store i32 %112, i32* %22, align 4
  %113 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %12, align 8
  %114 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.drm_vsync_tuple*, %struct.drm_vsync_tuple** %13, align 8
  %117 = getelementptr inbounds %struct.drm_vsync_tuple, %struct.drm_vsync_tuple* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sub i32 %115, %118
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %22, align 4
  %122 = udiv i32 %120, %121
  %123 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %14, align 8
  %124 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* %17, align 4
  %126 = sub i32 %125, 1
  %127 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %14, align 8
  %128 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %23, align 4
  %131 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %14, align 8
  %132 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = mul i32 %130, %133
  %135 = add i32 %129, %134
  %136 = load %struct.vo_vsync_info*, %struct.vo_vsync_info** %14, align 8
  %137 = getelementptr inbounds %struct.vo_vsync_info, %struct.vo_vsync_info* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %78, %49
  br label %139

139:                                              ; preds = %138, %77
  %140 = load %struct.drm_pflip_cb_closure*, %struct.drm_pflip_cb_closure** %11, align 8
  %141 = getelementptr inbounds %struct.drm_pflip_cb_closure, %struct.drm_pflip_cb_closure* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  store i32 0, i32* %142, align 4
  %143 = load %struct.drm_pflip_cb_closure*, %struct.drm_pflip_cb_closure** %11, align 8
  %144 = call i32 @talloc_free(%struct.drm_pflip_cb_closure* %143)
  ret void
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @talloc_free(%struct.drm_pflip_cb_closure*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

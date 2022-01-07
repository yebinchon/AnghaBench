; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_destroy_vdpau_objects.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_vdpau.c_destroy_vdpau_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.vdpctx* }
%struct.vdpctx = type { i64, i64, i32, i64*, i64, i32*, %struct.osd_bitmap_surface*, %struct.vdp_functions* }
%struct.osd_bitmap_surface = type { i64 }
%struct.vdp_functions = type { i32 (i64)*, i32 (i64)*, i32 (i64)*, i32 (i64)* }

@VDP_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Error when calling vdp_presentation_queue_destroy\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Error when calling vdp_presentation_queue_target_destroy\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error when calling vdp_output_surface_destroy\00", align 1
@MAX_OSD_PARTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Error when calling vdp_bitmap_surface_destroy\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @destroy_vdpau_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_vdpau_objects(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vdpctx*, align 8
  %4 = alloca %struct.vdp_functions*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.osd_bitmap_surface*, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %9 = load %struct.vo*, %struct.vo** %2, align 8
  %10 = getelementptr inbounds %struct.vo, %struct.vo* %9, i32 0, i32 0
  %11 = load %struct.vdpctx*, %struct.vdpctx** %10, align 8
  store %struct.vdpctx* %11, %struct.vdpctx** %3, align 8
  %12 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %13 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %12, i32 0, i32 7
  %14 = load %struct.vdp_functions*, %struct.vdp_functions** %13, align 8
  store %struct.vdp_functions* %14, %struct.vdp_functions** %4, align 8
  %15 = load %struct.vo*, %struct.vo** %2, align 8
  %16 = call i32 @free_video_specific(%struct.vo* %15)
  %17 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %18 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %24 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %23, i32 0, i32 3
  %25 = load i32 (i64)*, i32 (i64)** %24, align 8
  %26 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %27 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 %25(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.vo*, %struct.vo** %2, align 8
  %31 = call i32 @CHECK_VDP_WARNING(%struct.vo* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %34 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %40 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %39, i32 0, i32 2
  %41 = load i32 (i64)*, i32 (i64)** %40, align 8
  %42 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %43 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 %41(i64 %44)
  store i32 %45, i32* %5, align 4
  %46 = load %struct.vo*, %struct.vo** %2, align 8
  %47 = call i32 @CHECK_VDP_WARNING(%struct.vo* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %38, %32
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %80, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %52 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %57 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %56, i32 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %80

66:                                               ; preds = %55
  %67 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %68 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %67, i32 0, i32 1
  %69 = load i32 (i64)*, i32 (i64)** %68, align 8
  %70 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %71 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %70, i32 0, i32 3
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = call i32 %69(i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load %struct.vo*, %struct.vo** %2, align 8
  %79 = call i32 @CHECK_VDP_WARNING(%struct.vo* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %66, %65
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %49

83:                                               ; preds = %49
  %84 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %85 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %91 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %90, i32 0, i32 1
  %92 = load i32 (i64)*, i32 (i64)** %91, align 8
  %93 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %94 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = call i32 %92(i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.vo*, %struct.vo** %2, align 8
  %98 = call i32 @CHECK_VDP_WARNING(%struct.vo* %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %99

99:                                               ; preds = %89, %83
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %127, %99
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @MAX_OSD_PARTS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %106 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %105, i32 0, i32 6
  %107 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %107, i64 %109
  store %struct.osd_bitmap_surface* %110, %struct.osd_bitmap_surface** %8, align 8
  %111 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %112 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @VDP_INVALID_HANDLE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %126

116:                                              ; preds = %104
  %117 = load %struct.vdp_functions*, %struct.vdp_functions** %4, align 8
  %118 = getelementptr inbounds %struct.vdp_functions, %struct.vdp_functions* %117, i32 0, i32 0
  %119 = load i32 (i64)*, i32 (i64)** %118, align 8
  %120 = load %struct.osd_bitmap_surface*, %struct.osd_bitmap_surface** %8, align 8
  %121 = getelementptr inbounds %struct.osd_bitmap_surface, %struct.osd_bitmap_surface* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 %119(i64 %122)
  store i32 %123, i32* %5, align 4
  %124 = load %struct.vo*, %struct.vo** %2, align 8
  %125 = call i32 @CHECK_VDP_WARNING(%struct.vo* %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %116, %104
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %100

130:                                              ; preds = %100
  %131 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %132 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @mp_vdpau_destroy(i32* %133)
  %135 = load %struct.vdpctx*, %struct.vdpctx** %3, align 8
  %136 = getelementptr inbounds %struct.vdpctx, %struct.vdpctx* %135, i32 0, i32 5
  store i32* null, i32** %136, align 8
  ret void
}

declare dso_local i32 @free_video_specific(%struct.vo*) #1

declare dso_local i32 @CHECK_VDP_WARNING(%struct.vo*, i8*) #1

declare dso_local i32 @mp_vdpau_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

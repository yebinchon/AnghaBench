; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo.c_do_redraw.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo.c_do_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo = type { %struct.TYPE_2__*, i32, %struct.vo_internal* }
%struct.TYPE_2__ = type { i32, i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*)*, i32 (%struct.vo*, i32)*, i32 (%struct.vo*, %struct.vo_frame*)*, i32 }
%struct.vo_frame = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.vo_internal = type { i32, i32, i32, i32 }

@VO_CAP_NORETAIN = common dso_local global i32 0, align 4
@VOCTRL_REDRAW_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vo*)* @do_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_redraw(%struct.vo* %0) #0 {
  %2 = alloca %struct.vo*, align 8
  %3 = alloca %struct.vo_internal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vo_frame*, align 8
  %6 = alloca %struct.vo_frame, align 8
  store %struct.vo* %0, %struct.vo** %2, align 8
  %7 = load %struct.vo*, %struct.vo** %2, align 8
  %8 = getelementptr inbounds %struct.vo, %struct.vo* %7, i32 0, i32 2
  %9 = load %struct.vo_internal*, %struct.vo_internal** %8, align 8
  store %struct.vo_internal* %9, %struct.vo_internal** %3, align 8
  %10 = load %struct.vo*, %struct.vo** %2, align 8
  %11 = getelementptr inbounds %struct.vo, %struct.vo* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.vo*, %struct.vo** %2, align 8
  %16 = getelementptr inbounds %struct.vo, %struct.vo* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VO_CAP_NORETAIN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %1
  br label %132

24:                                               ; preds = %14
  %25 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %26 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %25, i32 0, i32 2
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %29 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %31 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  store %struct.vo_frame* null, %struct.vo_frame** %5, align 8
  %33 = load %struct.vo*, %struct.vo** %2, align 8
  %34 = getelementptr inbounds %struct.vo, %struct.vo* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %24
  %40 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %41 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.vo_frame* @vo_frame_ref(i32 %42)
  store %struct.vo_frame* %43, %struct.vo_frame** %5, align 8
  br label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %46 = icmp ne %struct.vo_frame* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %49 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = bitcast %struct.vo_frame* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %51, i8 0, i64 40, i1 false)
  %52 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %53 = icmp ne %struct.vo_frame* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store %struct.vo_frame* %6, %struct.vo_frame** %5, align 8
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %61 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %63 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %65 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %67 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %69 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %68, i32 0, i32 3
  store i32 -1, i32* %69, align 4
  %70 = load %struct.vo_internal*, %struct.vo_internal** %3, align 8
  %71 = getelementptr inbounds %struct.vo_internal, %struct.vo_internal* %70, i32 0, i32 2
  %72 = call i32 @pthread_mutex_unlock(i32* %71)
  %73 = load %struct.vo*, %struct.vo** %2, align 8
  %74 = getelementptr inbounds %struct.vo, %struct.vo* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i32 (%struct.vo*, %struct.vo_frame*)*, i32 (%struct.vo*, %struct.vo_frame*)** %76, align 8
  %78 = icmp ne i32 (%struct.vo*, %struct.vo_frame*)* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %55
  %80 = load %struct.vo*, %struct.vo** %2, align 8
  %81 = getelementptr inbounds %struct.vo, %struct.vo* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32 (%struct.vo*, %struct.vo_frame*)*, i32 (%struct.vo*, %struct.vo_frame*)** %83, align 8
  %85 = load %struct.vo*, %struct.vo** %2, align 8
  %86 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %87 = call i32 %84(%struct.vo* %85, %struct.vo_frame* %86)
  br label %119

88:                                               ; preds = %55
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %88
  %92 = load %struct.vo*, %struct.vo** %2, align 8
  %93 = getelementptr inbounds %struct.vo, %struct.vo* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32 (%struct.vo*, i32, i32*)*, i32 (%struct.vo*, i32, i32*)** %95, align 8
  %97 = load %struct.vo*, %struct.vo** %2, align 8
  %98 = load i32, i32* @VOCTRL_REDRAW_FRAME, align 4
  %99 = call i32 %96(%struct.vo* %97, i32 %98, i32* null)
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %118

101:                                              ; preds = %91, %88
  %102 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %103 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.vo*, %struct.vo** %2, align 8
  %108 = getelementptr inbounds %struct.vo, %struct.vo* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32 (%struct.vo*, i32)*, i32 (%struct.vo*, i32)** %110, align 8
  %112 = load %struct.vo*, %struct.vo** %2, align 8
  %113 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %114 = getelementptr inbounds %struct.vo_frame, %struct.vo_frame* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @mp_image_new_ref(i64 %115)
  %117 = call i32 %111(%struct.vo* %112, i32 %116)
  br label %118

118:                                              ; preds = %106, %101, %91
  br label %119

119:                                              ; preds = %118, %79
  %120 = load %struct.vo*, %struct.vo** %2, align 8
  %121 = getelementptr inbounds %struct.vo, %struct.vo* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 2
  %124 = load i32 (%struct.vo*)*, i32 (%struct.vo*)** %123, align 8
  %125 = load %struct.vo*, %struct.vo** %2, align 8
  %126 = call i32 %124(%struct.vo* %125)
  %127 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %128 = icmp ne %struct.vo_frame* %127, %6
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load %struct.vo_frame*, %struct.vo_frame** %5, align 8
  %131 = call i32 @talloc_free(%struct.vo_frame* %130)
  br label %132

132:                                              ; preds = %23, %129, %119
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local %struct.vo_frame* @vo_frame_ref(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @mp_image_new_ref(i64) #1

declare dso_local i32 @talloc_free(%struct.vo_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

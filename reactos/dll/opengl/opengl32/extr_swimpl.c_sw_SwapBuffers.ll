; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_SwapBuffers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_SwapBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wgl_dc_data = type { %struct.sw_framebuffer* }
%struct.sw_framebuffer = type { i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@BI_BITFIELDS = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@PFD_TYPE_COLORINDEX = common dso_local global i64 0, align 8
@DIB_PAL_COLORS = common dso_local global i32 0, align 4
@DIB_RGB_COLORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sw_SwapBuffers(i32 %0, %struct.wgl_dc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.wgl_dc_data*, align 8
  %6 = alloca %struct.sw_framebuffer*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.wgl_dc_data* %1, %struct.wgl_dc_data** %5, align 8
  %11 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %5, align 8
  %12 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %11, i32 0, i32 0
  %13 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %12, align 8
  store %struct.sw_framebuffer* %13, %struct.sw_framebuffer** %6, align 8
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %15 = bitcast i8* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %17 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %22 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %21, i32 0, i32 5
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %140

29:                                               ; preds = %2
  %30 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %31 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %140

36:                                               ; preds = %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store i32 64, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 10
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 9
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  %53 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %54 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @WIDTH_BYTES_ALIGN32(i32 %55, i32 %56)
  %58 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %59 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 7
  store i64 0, i64* %70, align 8
  %71 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %72 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 8
  %77 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %78 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %85, label %87

85:                                               ; preds = %36
  %86 = load i32, i32* @BI_BITFIELDS, align 4
  br label %89

87:                                               ; preds = %36
  %88 = load i32, i32* @BI_RGB, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  store i32 %90, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 16
  br i1 %95, label %96, label %107

96:                                               ; preds = %89
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32* %100, i32** %10, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 63488, i32* %102, align 4
  %103 = load i32*, i32** %10, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 2016, i32* %104, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  store i32 31, i32* %106, align 4
  br label %107

107:                                              ; preds = %96, %89
  %108 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %109 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %112 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %115 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %118 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %121 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %6, align 8
  %125 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PFD_TYPE_COLORINDEX, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %107
  %132 = load i32, i32* @DIB_PAL_COLORS, align 4
  br label %135

133:                                              ; preds = %107
  %134 = load i32, i32* @DIB_RGB_COLORS, align 4
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %132, %131 ], [ %134, %133 ]
  %137 = call i64 @SetDIBitsToDevice(i32 %110, i32 0, i32 0, i32 %113, i32 %116, i32 0, i32 0, i32 0, i32 %119, i32 %122, %struct.TYPE_9__* %123, i32 %136)
  %138 = icmp ne i64 %137, 0
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %135, %34, %27
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @WIDTH_BYTES_ALIGN32(i32, i32) #1

declare dso_local i64 @SetDIBitsToDevice(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

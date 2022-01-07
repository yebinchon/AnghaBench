; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_swapchain_cleanup.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_swapchain.c_swapchain_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_swapchain = type { i32, i64, %struct.TYPE_11__*, i32, i32, %struct.TYPE_10__, i32, i32**, i32*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_10__ = type { i64, i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Destroying swapchain %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Something's still holding the front buffer (%p).\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Something's still holding back buffer %u (%p).\0A\00", align 1
@wined3d_swapchain_destroy_object = common dso_local global i32 0, align 4
@WINED3D_CS_QUEUE_DEFAULT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to restore display mode, hr %#x.\0A\00", align 1
@WINED3D_SWAPCHAIN_RESTORE_WINDOW_RECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Destroying backup wined3d window %p, dc %p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_swapchain*)* @swapchain_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swapchain_cleanup(%struct.wined3d_swapchain* %0) #0 {
  %2 = alloca %struct.wined3d_swapchain*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.wined3d_swapchain* %0, %struct.wined3d_swapchain** %2, align 8
  %5 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %6 = call i32 (i8*, %struct.wined3d_swapchain*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.wined3d_swapchain* %5)
  %7 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %8 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %9 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %8, i32 0, i32 9
  %10 = call i32 @wined3d_swapchain_set_gamma_ramp(%struct.wined3d_swapchain* %7, i32 0, i32* %9)
  %11 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %17 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @wined3d_texture_set_swapchain(i32* %18, i32* null)
  %20 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %21 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %20, i32 0, i32 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i64 @wined3d_texture_decref(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %15
  %26 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %27 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = ptrtoint i32* %28 to i64
  %30 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  br label %31

31:                                               ; preds = %25, %15
  %32 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %32, i32 0, i32 8
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %36 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %35, i32 0, i32 7
  %37 = load i32**, i32*** %36, align 8
  %38 = icmp ne i32** %37, null
  br i1 %38, label %39, label %81

39:                                               ; preds = %34
  %40 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %73, %39
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %4, align 8
  %47 = icmp ne i64 %45, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %44
  %49 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %50 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %49, i32 0, i32 7
  %51 = load i32**, i32*** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @wined3d_texture_set_swapchain(i32* %54, i32* null)
  %56 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %57 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %56, i32 0, i32 7
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i64 @wined3d_texture_decref(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %48
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %67 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %66, i32 0, i32 7
  %68 = load i32**, i32*** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %65, i32* %71)
  br label %73

73:                                               ; preds = %64, %48
  br label %44

74:                                               ; preds = %44
  %75 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %76 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %75, i32 0, i32 7
  %77 = load i32**, i32*** %76, align 8
  %78 = call i32 @heap_free(i32** %77)
  %79 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %80 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %79, i32 0, i32 7
  store i32** null, i32*** %80, align 8
  br label %81

81:                                               ; preds = %74, %34
  %82 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %83 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %82, i32 0, i32 2
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = load i32, i32* @wined3d_swapchain_destroy_object, align 4
  %88 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %89 = call i32 @wined3d_cs_destroy_object(%struct.TYPE_12__* %86, i32 %87, %struct.wined3d_swapchain* %88)
  %90 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %91 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %90, i32 0, i32 2
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32 (%struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_12__*, i32)** %97, align 8
  %99 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %100 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %99, i32 0, i32 2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = load i32, i32* @WINED3D_CS_QUEUE_DEFAULT, align 4
  %105 = call i32 %98(%struct.TYPE_12__* %103, i32 %104)
  %106 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %107 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %161, label %111

111:                                              ; preds = %81
  %112 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %113 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %111
  %118 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %119 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %118, i32 0, i32 2
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %124 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %123, i32 0, i32 2
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %131 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %130, i32 0, i32 6
  %132 = call i32 @wined3d_set_adapter_display_mode(i32 %122, i32 %129, i32* %131)
  store i32 %132, i32* %3, align 4
  %133 = call i64 @FAILED(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %117
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %135, %117
  %139 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %140 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %139, i32 0, i32 5
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @WINED3D_SWAPCHAIN_RESTORE_WINDOW_RECT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %138
  %147 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %148 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %147, i32 0, i32 2
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %151 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %154 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %153, i32 0, i32 3
  %155 = call i32 @wined3d_device_restore_fullscreen_window(%struct.TYPE_11__* %149, i32 %152, i32* %154)
  %156 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %157 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %156, i32 0, i32 2
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = call i32 @wined3d_device_release_focus_window(%struct.TYPE_11__* %158)
  br label %160

160:                                              ; preds = %146, %138
  br label %161

161:                                              ; preds = %160, %111, %81
  %162 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %163 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %168 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to %struct.wined3d_swapchain*
  %172 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %173 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i8*, %struct.wined3d_swapchain*, ...) @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.wined3d_swapchain* %171, i64 %174)
  %176 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %177 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %180 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @wined3d_release_dc(i32 %178, i64 %181)
  %183 = load %struct.wined3d_swapchain*, %struct.wined3d_swapchain** %2, align 8
  %184 = getelementptr inbounds %struct.wined3d_swapchain, %struct.wined3d_swapchain* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @DestroyWindow(i32 %185)
  br label %187

187:                                              ; preds = %166, %161
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_swapchain*, ...) #1

declare dso_local i32 @wined3d_swapchain_set_gamma_ramp(%struct.wined3d_swapchain*, i32, i32*) #1

declare dso_local i32 @wined3d_texture_set_swapchain(i32*, i32*) #1

declare dso_local i64 @wined3d_texture_decref(i32*) #1

declare dso_local i32 @WARN(i8*, i64, ...) #1

declare dso_local i32 @heap_free(i32**) #1

declare dso_local i32 @wined3d_cs_destroy_object(%struct.TYPE_12__*, i32, %struct.wined3d_swapchain*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @wined3d_set_adapter_display_mode(i32, i32, i32*) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @wined3d_device_restore_fullscreen_window(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @wined3d_device_release_focus_window(%struct.TYPE_11__*) #1

declare dso_local i32 @wined3d_release_dc(i32, i64) #1

declare dso_local i32 @DestroyWindow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

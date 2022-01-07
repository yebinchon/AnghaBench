; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_swap_buffers.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context.c_ra_gl_ctx_swap_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_swapchain = type { %struct.TYPE_14__*, %struct.priv* }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.priv = type { i32, i32, i64, i32*, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i64*, i64 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_14__*)* }
%struct.TYPE_13__ = type { i32 (i32)*, i32 (i32, i32, i32)*, i32 (i32, i32, i32*)*, i32 (i32*)* }

@.str = private unnamed_addr constant [30 x i8] c"Flip counts: %u->%u, step=%d\0A\00", align 1
@GL_SYNC_FLUSH_COMMANDS_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ra_gl_ctx_swap_buffers(%struct.ra_swapchain* %0) #0 {
  %2 = alloca %struct.ra_swapchain*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ra_swapchain* %0, %struct.ra_swapchain** %2, align 8
  %8 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %9 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %8, i32 0, i32 1
  %10 = load %struct.priv*, %struct.priv** %9, align 8
  store %struct.priv* %10, %struct.priv** %3, align 8
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 6
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %16, align 8
  %18 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %19 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %18, i32 0, i32 0
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = call i32 %17(%struct.TYPE_14__* %20)
  %22 = load %struct.priv*, %struct.priv** %3, align 8
  %23 = getelementptr inbounds %struct.priv, %struct.priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.priv*, %struct.priv** %3, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %28, 5
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %32 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %31, i32 0, i32 0
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %30
  %39 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %40 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %39, i32 0, i32 0
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ra_gl_set_debug(i32 %43, i32 0)
  br label %45

45:                                               ; preds = %38, %30, %1
  %46 = load %struct.priv*, %struct.priv** %3, align 8
  %47 = getelementptr inbounds %struct.priv, %struct.priv* %46, i32 0, i32 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %112

61:                                               ; preds = %52, %45
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 3
  %64 = load i32 (i32*)*, i32 (i32*)** %63, align 8
  %65 = icmp ne i32 (i32*)* %64, null
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i32 (i32*)*, i32 (i32*)** %68, align 8
  %70 = call i32 %69(i32* %5)
  %71 = load %struct.priv*, %struct.priv** %3, align 8
  %72 = getelementptr inbounds %struct.priv, %struct.priv* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %66
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = add i32 %81, 1
  %83 = urem i32 %82, 2
  %84 = call i32 %80(i32 2, i32 %83, i32* %6)
  br label %85

85:                                               ; preds = %77, %66
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.priv*, %struct.priv** %3, align 8
  %88 = getelementptr inbounds %struct.priv, %struct.priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub i32 %86, %89
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.priv*, %struct.priv** %3, align 8
  %93 = getelementptr inbounds %struct.priv, %struct.priv* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.priv*, %struct.priv** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @MP_DBG(%struct.priv* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96, i32 %97)
  %99 = load %struct.priv*, %struct.priv** %3, align 8
  %100 = getelementptr inbounds %struct.priv, %struct.priv* %99, i32 0, i32 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %85
  %108 = load %struct.priv*, %struct.priv** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @check_pattern(%struct.priv* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %85
  br label %112

112:                                              ; preds = %111, %61, %52
  br label %113

113:                                              ; preds = %127, %112
  %114 = load %struct.priv*, %struct.priv** %3, align 8
  %115 = getelementptr inbounds %struct.priv, %struct.priv* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ra_swapchain*, %struct.ra_swapchain** %2, align 8
  %118 = getelementptr inbounds %struct.ra_swapchain, %struct.ra_swapchain* %117, i32 0, i32 0
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %116, %125
  br i1 %126, label %127, label %154

127:                                              ; preds = %113
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %129, align 8
  %131 = load %struct.priv*, %struct.priv** %3, align 8
  %132 = getelementptr inbounds %struct.priv, %struct.priv* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @GL_SYNC_FLUSH_COMMANDS_BIT, align 4
  %137 = call i32 %130(i32 %135, i32 %136, i32 1000000000)
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = load i32 (i32)*, i32 (i32)** %139, align 8
  %141 = load %struct.priv*, %struct.priv** %3, align 8
  %142 = getelementptr inbounds %struct.priv, %struct.priv* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 %140(i32 %145)
  %147 = load %struct.priv*, %struct.priv** %3, align 8
  %148 = getelementptr inbounds %struct.priv, %struct.priv* %147, i32 0, i32 3
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.priv*, %struct.priv** %3, align 8
  %151 = getelementptr inbounds %struct.priv, %struct.priv* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @MP_TARRAY_REMOVE_AT(i32* %149, i64 %152, i32 0)
  br label %113

154:                                              ; preds = %113
  ret void
}

declare dso_local i32 @ra_gl_set_debug(i32, i32) #1

declare dso_local i32 @MP_DBG(%struct.priv*, i8*, i32, i32, i32) #1

declare dso_local i32 @check_pattern(%struct.priv*, i32) #1

declare dso_local i32 @MP_TARRAY_REMOVE_AT(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

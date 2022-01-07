; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_SetContext.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/opengl32/extr_swimpl.c_sw_SetContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.wgl_dc_data = type { i32, %struct.TYPE_13__, %struct.sw_framebuffer* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.sw_framebuffer = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }
%struct.sw_context = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@WGL_DC_OBJ_DC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Physical DC without a window!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"GetClientRect failed!\0A\00", align 1
@WH_CALLWNDPROC = common dso_local global i32 0, align 4
@sw_call_window_proc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"Memory DC called with a double buffered format.\0A\00", align 1
@OBJ_BITMAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"No Bitmap!\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"GetObject failed!\0A\00", align 1
@sw_api_table = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sw_SetContext(%struct.wgl_dc_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wgl_dc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sw_context*, align 8
  %7 = alloca %struct.sw_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_17__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wgl_dc_data* %0, %struct.wgl_dc_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = inttoptr i64 %15 to %struct.sw_context*
  store %struct.sw_context* %16, %struct.sw_context** %6, align 8
  %17 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %4, align 8
  %18 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %17, i32 0, i32 2
  %19 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %18, align 8
  store %struct.sw_framebuffer* %19, %struct.sw_framebuffer** %7, align 8
  %20 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %4, align 8
  %21 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WGL_DC_OBJ_DC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %2
  %27 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %4, align 8
  %28 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %160

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @GetClientRect(i32 %37, %struct.TYPE_16__* %11)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %3, align 4
  br label %160

43:                                               ; preds = %36
  %44 = load i32, i32* @WH_CALLWNDPROC, align 4
  %45 = load i32, i32* @sw_call_window_proc, align 4
  %46 = call i32 (...) @GetCurrentThreadId()
  %47 = call i32 @SetWindowsHookEx(i32 %44, i32 %45, i32* null, i32 %46)
  %48 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %49 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %51, %53
  store i32 %54, i32* %8, align 4
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  store i32 %59, i32* %9, align 4
  br label %95

60:                                               ; preds = %2
  %61 = load %struct.wgl_dc_data*, %struct.wgl_dc_data** %4, align 8
  %62 = getelementptr inbounds %struct.wgl_dc_data, %struct.wgl_dc_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %14, align 4
  %65 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %7, align 8
  %66 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %65, i32 0, i32 1
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %160

74:                                               ; preds = %60
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @OBJ_BITMAP, align 4
  %77 = call i32 @GetCurrentObject(i32 %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = call i32 @ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %160

83:                                               ; preds = %74
  %84 = load i32, i32* %13, align 4
  %85 = call i64 @GetObject(i32 %84, i32 8, %struct.TYPE_17__* %12)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = call i32 @ERR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %160

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %8, align 4
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %90, %43
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %98, %95
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  store i32 1, i32* %9, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %105 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %104, i32 0, i32 0
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = load %struct.sw_framebuffer*, %struct.sw_framebuffer** %7, align 8
  %108 = getelementptr inbounds %struct.sw_framebuffer, %struct.sw_framebuffer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @gl_make_current(%struct.TYPE_19__* %106, i32 %109)
  %111 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %112 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %111, i32 0, i32 0
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %112, align 8
  %114 = call i32 @setup_DD_pointers(%struct.TYPE_19__* %113)
  %115 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %116 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %115, i32 0, i32 0
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %153

122:                                              ; preds = %103
  %123 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %124 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %122
  %131 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %132 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %131, i32 0, i32 0
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %153

138:                                              ; preds = %130
  %139 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %140 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %139, i32 0, i32 0
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %138
  %147 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %148 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %147, i32 0, i32 0
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @gl_Viewport(%struct.TYPE_19__* %149, i32 0, i32 0, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %138, %130, %122, %103
  %154 = load %struct.sw_context*, %struct.sw_context** %6, align 8
  %155 = getelementptr inbounds %struct.sw_context, %struct.sw_context* %154, i32 0, i32 0
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = call i32 @gl_ResizeBuffersMESA(%struct.TYPE_19__* %156)
  %158 = call i32 @IntSetCurrentDispatchTable(i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sw_api_table, i32 0, i32 0))
  %159 = load i32, i32* @TRUE, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %153, %87, %80, %71, %40, %33
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @SetWindowsHookEx(i32, i32, i32*, i32) #1

declare dso_local i32 @GetCurrentThreadId(...) #1

declare dso_local i32 @GetCurrentObject(i32, i32) #1

declare dso_local i64 @GetObject(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @gl_make_current(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @setup_DD_pointers(%struct.TYPE_19__*) #1

declare dso_local i32 @gl_Viewport(%struct.TYPE_19__*, i32, i32, i32, i32) #1

declare dso_local i32 @gl_ResizeBuffersMESA(%struct.TYPE_19__*) #1

declare dso_local i32 @IntSetCurrentDispatchTable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

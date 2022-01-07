; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_unordered_access_views.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_bind_unordered_access_views.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_shader = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.wined3d_unordered_access_view = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.wined3d_texture = type { i32 }

@MAX_UNORDERED_ACCESS_VIEWS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"No unordered access view bound at index %u.\0A\00", align 1
@GL_FALSE = common dso_local global i32 0, align 4
@GL_READ_WRITE = common dso_local global i32 0, align 4
@GL_R8 = common dso_local global i32 0, align 4
@WINED3D_RTYPE_BUFFER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Unsupported buffer unordered access view.\0A\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4
@GL_ATOMIC_COUNTER_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Bind unordered access views\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, %struct.wined3d_shader*, %struct.wined3d_unordered_access_view**)* @context_bind_unordered_access_views to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_bind_unordered_access_views(%struct.wined3d_context* %0, %struct.wined3d_shader* %1, %struct.wined3d_unordered_access_view** %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_shader*, align 8
  %6 = alloca %struct.wined3d_unordered_access_view**, align 8
  %7 = alloca %struct.wined3d_gl_info*, align 8
  %8 = alloca %struct.wined3d_unordered_access_view*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.wined3d_texture*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store %struct.wined3d_shader* %1, %struct.wined3d_shader** %5, align 8
  store %struct.wined3d_unordered_access_view** %2, %struct.wined3d_unordered_access_view*** %6, align 8
  %13 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %14 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %13, i32 0, i32 0
  %15 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %14, align 8
  store %struct.wined3d_gl_info* %15, %struct.wined3d_gl_info** %7, align 8
  %16 = load %struct.wined3d_shader*, %struct.wined3d_shader** %5, align 8
  %17 = icmp ne %struct.wined3d_shader* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %126

19:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %121, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MAX_UNORDERED_ACCESS_VIEWS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %124

24:                                               ; preds = %20
  %25 = load %struct.wined3d_unordered_access_view**, %struct.wined3d_unordered_access_view*** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %25, i64 %27
  %29 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %28, align 8
  store %struct.wined3d_unordered_access_view* %29, %struct.wined3d_unordered_access_view** %8, align 8
  %30 = icmp ne %struct.wined3d_unordered_access_view* %29, null
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  %32 = load %struct.wined3d_shader*, %struct.wined3d_shader** %5, align 8
  %33 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @WARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @GL_FALSE, align 4
  %48 = load i32, i32* @GL_READ_WRITE, align 4
  %49 = load i32, i32* @GL_R8, align 4
  %50 = call i32 @glBindImageTexture(i32 %46, i64 0, i64 0, i32 %47, i32 0, i32 %48, i32 %49)
  %51 = call i32 @GL_EXTCALL(i32 %50)
  br label %121

52:                                               ; preds = %24
  %53 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %54 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %60 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %9, align 8
  store i64 0, i64* %11, align 8
  br label %95

63:                                               ; preds = %52
  %64 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %65 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %64, i32 0, i32 3
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WINED3D_RTYPE_BUFFER, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  %72 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %73 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %72, i32 0, i32 3
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = call %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_16__* %74)
  store %struct.wined3d_texture* %75, %struct.wined3d_texture** %12, align 8
  %76 = load %struct.wined3d_texture*, %struct.wined3d_texture** %12, align 8
  %77 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = call i64 @wined3d_texture_get_texture_name(%struct.wined3d_texture* %76, %struct.wined3d_context* %77, i32 %78)
  store i64 %79, i64* %9, align 8
  %80 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %81 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %11, align 8
  br label %94

86:                                               ; preds = %63
  %87 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @GL_FALSE, align 4
  %90 = load i32, i32* @GL_READ_WRITE, align 4
  %91 = load i32, i32* @GL_R8, align 4
  %92 = call i32 @glBindImageTexture(i32 %88, i64 0, i64 0, i32 %89, i32 0, i32 %90, i32 %91)
  %93 = call i32 @GL_EXTCALL(i32 %92)
  br label %121

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94, %58
  %96 = load i32, i32* %10, align 4
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i32, i32* @GL_TRUE, align 4
  %100 = load i32, i32* @GL_READ_WRITE, align 4
  %101 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %102 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %101, i32 0, i32 1
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @glBindImageTexture(i32 %96, i64 %97, i64 %98, i32 %99, i32 0, i32 %100, i32 %105)
  %107 = call i32 @GL_EXTCALL(i32 %106)
  %108 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %109 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %95
  %113 = load i32, i32* @GL_ATOMIC_COUNTER_BUFFER, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.wined3d_unordered_access_view*, %struct.wined3d_unordered_access_view** %8, align 8
  %116 = getelementptr inbounds %struct.wined3d_unordered_access_view, %struct.wined3d_unordered_access_view* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @glBindBufferBase(i32 %113, i32 %114, i64 %117)
  %119 = call i32 @GL_EXTCALL(i32 %118)
  br label %120

120:                                              ; preds = %112, %95
  br label %121

121:                                              ; preds = %120, %86, %45
  %122 = load i32, i32* %10, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %20

124:                                              ; preds = %20
  %125 = call i32 @checkGLcall(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %18
  ret void
}

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindImageTexture(i32, i64, i64, i32, i32, i32, i32) #1

declare dso_local %struct.wined3d_texture* @texture_from_resource(%struct.TYPE_16__*) #1

declare dso_local i64 @wined3d_texture_get_texture_name(%struct.wined3d_texture*, %struct.wined3d_context*, i32) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @glBindBufferBase(i32, i32, i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

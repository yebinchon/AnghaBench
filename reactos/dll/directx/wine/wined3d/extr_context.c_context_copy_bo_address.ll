; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_copy_bo_address.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_copy_bo_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { %struct.wined3d_gl_info* }
%struct.wined3d_gl_info = type { i64* }
%struct.wined3d_bo_address = type { i32*, i64 }

@ARB_COPY_BUFFER = common dso_local global i64 0, align 8
@GL_COPY_READ_BUFFER = common dso_local global i32 0, align 4
@GL_COPY_WRITE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"direct buffer copy\00", align 1
@WINED3D_MAP_READ = common dso_local global i32 0, align 4
@WINED3D_MAP_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"buffer download\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"buffer upload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @context_copy_bo_address(%struct.wined3d_context* %0, %struct.wined3d_bo_address* %1, i32 %2, %struct.wined3d_bo_address* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.wined3d_context*, align 8
  %8 = alloca %struct.wined3d_bo_address*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wined3d_bo_address*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.wined3d_gl_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %7, align 8
  store %struct.wined3d_bo_address* %1, %struct.wined3d_bo_address** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wined3d_bo_address* %3, %struct.wined3d_bo_address** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %16 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %17 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %16, i32 0, i32 0
  %18 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %17, align 8
  store %struct.wined3d_gl_info* %18, %struct.wined3d_gl_info** %13, align 8
  %19 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %20 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %89

23:                                               ; preds = %6
  %24 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %25 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %89

28:                                               ; preds = %23
  %29 = load %struct.wined3d_gl_info*, %struct.wined3d_gl_info** %13, align 8
  %30 = getelementptr inbounds %struct.wined3d_gl_info, %struct.wined3d_gl_info* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @ARB_COPY_BUFFER, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %28
  %37 = load i32, i32* @GL_COPY_READ_BUFFER, align 4
  %38 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %39 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @glBindBuffer(i32 %37, i64 %40)
  %42 = call i32 @GL_EXTCALL(i32 %41)
  %43 = load i32, i32* @GL_COPY_WRITE_BUFFER, align 4
  %44 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %45 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @glBindBuffer(i32 %43, i64 %46)
  %48 = call i32 @GL_EXTCALL(i32 %47)
  %49 = load i32, i32* @GL_COPY_READ_BUFFER, align 4
  %50 = load i32, i32* @GL_COPY_WRITE_BUFFER, align 4
  %51 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %52 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %53 to i32
  %55 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %56 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = ptrtoint i32* %57 to i32
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @glCopyBufferSubData(i32 %49, i32 %50, i32 %54, i32 %58, i64 %59)
  %61 = call i32 @GL_EXTCALL(i32 %60)
  %62 = call i32 @checkGLcall(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %88

63:                                               ; preds = %28
  %64 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %65 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @WINED3D_MAP_READ, align 4
  %69 = call i32* @context_map_bo_address(%struct.wined3d_context* %64, %struct.wined3d_bo_address* %65, i64 %66, i32 %67, i32 %68)
  store i32* %69, i32** %15, align 8
  %70 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %71 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @WINED3D_MAP_WRITE, align 4
  %75 = call i32* @context_map_bo_address(%struct.wined3d_context* %70, %struct.wined3d_bo_address* %71, i64 %72, i32 %73, i32 %74)
  store i32* %75, i32** %14, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @memcpy(i32* %76, i32* %77, i64 %78)
  %80 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %81 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @context_unmap_bo_address(%struct.wined3d_context* %80, %struct.wined3d_bo_address* %81, i32 %82)
  %84 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %85 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @context_unmap_bo_address(%struct.wined3d_context* %84, %struct.wined3d_bo_address* %85, i32 %86)
  br label %88

88:                                               ; preds = %63, %36
  br label %158

89:                                               ; preds = %23, %6
  %90 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %91 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %118, label %94

94:                                               ; preds = %89
  %95 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %96 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %94
  %100 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %103 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @context_bind_bo(%struct.wined3d_context* %100, i32 %101, i64 %104)
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %108 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = ptrtoint i32* %109 to i32
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %113 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @glGetBufferSubData(i32 %106, i32 %110, i64 %111, i32* %114)
  %116 = call i32 @GL_EXTCALL(i32 %115)
  %117 = call i32 @checkGLcall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %157

118:                                              ; preds = %94, %89
  %119 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %120 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  %124 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %125 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %147, label %128

128:                                              ; preds = %123
  %129 = load %struct.wined3d_context*, %struct.wined3d_context** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %132 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @context_bind_bo(%struct.wined3d_context* %129, i32 %130, i64 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %137 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = ptrtoint i32* %138 to i32
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %142 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @glBufferSubData(i32 %135, i32 %139, i64 %140, i32* %143)
  %145 = call i32 @GL_EXTCALL(i32 %144)
  %146 = call i32 @checkGLcall(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %156

147:                                              ; preds = %123, %118
  %148 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %8, align 8
  %149 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.wined3d_bo_address*, %struct.wined3d_bo_address** %10, align 8
  %152 = getelementptr inbounds %struct.wined3d_bo_address, %struct.wined3d_bo_address* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call i32 @memcpy(i32* %150, i32* %153, i64 %154)
  br label %156

156:                                              ; preds = %147, %128
  br label %157

157:                                              ; preds = %156, %99
  br label %158

158:                                              ; preds = %157, %88
  ret void
}

declare dso_local i32 @GL_EXTCALL(i32) #1

declare dso_local i32 @glBindBuffer(i32, i64) #1

declare dso_local i32 @glCopyBufferSubData(i32, i32, i32, i32, i64) #1

declare dso_local i32 @checkGLcall(i8*) #1

declare dso_local i32* @context_map_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i64, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @context_unmap_bo_address(%struct.wined3d_context*, %struct.wined3d_bo_address*, i32) #1

declare dso_local i32 @context_bind_bo(%struct.wined3d_context*, i32, i64) #1

declare dso_local i32 @glGetBufferSubData(i32, i32, i64, i32*) #1

declare dso_local i32 @glBufferSubData(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_vertexdeclaration.c_dump_wined3d_vertex_element.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_vertexdeclaration.c_dump_wined3d_vertex_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_vertex_element = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"                 format: %s (%#x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"             input_slot: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"                 offset: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"            output_slot: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"       input slot class: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"instance data step rate: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"                 method: %s (%#x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"                  usage: %s (%#x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"              usage_idx: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_vertex_element*)* @dump_wined3d_vertex_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_wined3d_vertex_element(%struct.wined3d_vertex_element* %0) #0 {
  %2 = alloca %struct.wined3d_vertex_element*, align 8
  store %struct.wined3d_vertex_element* %0, %struct.wined3d_vertex_element** %2, align 8
  %3 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %4 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %3, i32 0, i32 8
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @debug_d3dformat(i32 %5)
  %7 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %8 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9)
  %11 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %12 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  %15 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %16 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %20 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %24 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @debug_d3dinput_classification(i32 %25)
  %27 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %29 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %33 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @debug_d3ddeclmethod(i32 %34)
  %36 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %37 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %41 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @debug_d3ddeclusage(i32 %42)
  %44 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %45 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load %struct.wined3d_vertex_element*, %struct.wined3d_vertex_element** %2, align 8
  %49 = getelementptr inbounds %struct.wined3d_vertex_element, %struct.wined3d_vertex_element* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_d3dformat(i32) #1

declare dso_local i32 @debug_d3dinput_classification(i32) #1

declare dso_local i32 @debug_d3ddeclmethod(i32) #1

declare dso_local i32 @debug_d3ddeclusage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

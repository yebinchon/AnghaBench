; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_string_buffer_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_string_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate shader buffer memory.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_buffer_init(%struct.wined3d_string_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wined3d_string_buffer*, align 8
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %3, align 8
  %4 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %5 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %4, i32 0, i32 0
  store i32 32, i32* %5, align 4
  %6 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @heap_alloc(i32 %8)
  %10 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = icmp ne i32 %9, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = call i32 @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %3, align 8
  %18 = call i32 @string_buffer_clear(%struct.wined3d_string_buffer* %17)
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @heap_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @string_buffer_clear(%struct.wined3d_string_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_string_buffer_resize.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_string_buffer_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32, i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Failed to grow buffer.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_buffer_resize(%struct.wined3d_string_buffer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_string_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  %22 = icmp uge i32 %16, %21
  br label %23

23:                                               ; preds = %15, %12
  %24 = phi i1 [ false, %12 ], [ %22, %15 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  %27 = mul i32 %26, 2
  store i32 %27, i32* %7, align 4
  br label %12

28:                                               ; preds = %23
  %29 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @heap_realloc(i8* %31, i32 %32)
  store i8* %33, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %3, align 4
  br label %54

46:                                               ; preds = %28
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %49 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.wined3d_string_buffer, %struct.wined3d_string_buffer* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %35
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @heap_realloc(i8*, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

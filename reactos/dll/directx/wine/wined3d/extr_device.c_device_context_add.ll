; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_device.c_device_context_add.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_device.c_device_context_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i32, %struct.wined3d_context** }
%struct.wined3d_context = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Adding context %p.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to grow the context array.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_context_add(%struct.wined3d_device* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wined3d_device*, align 8
  %5 = alloca %struct.wined3d_context*, align 8
  %6 = alloca %struct.wined3d_context**, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %4, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %5, align 8
  %7 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %8 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %7)
  %9 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %9, i32 0, i32 1
  %11 = load %struct.wined3d_context**, %struct.wined3d_context*** %10, align 8
  %12 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.wined3d_context** @heap_realloc(%struct.wined3d_context** %11, i32 %18)
  store %struct.wined3d_context** %19, %struct.wined3d_context*** %6, align 8
  %20 = icmp ne %struct.wined3d_context** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %2
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %5, align 8
  %26 = load %struct.wined3d_context**, %struct.wined3d_context*** %6, align 8
  %27 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %28 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds %struct.wined3d_context*, %struct.wined3d_context** %26, i64 %31
  store %struct.wined3d_context* %25, %struct.wined3d_context** %32, align 8
  %33 = load %struct.wined3d_context**, %struct.wined3d_context*** %6, align 8
  %34 = load %struct.wined3d_device*, %struct.wined3d_device** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %34, i32 0, i32 1
  store %struct.wined3d_context** %33, %struct.wined3d_context*** %35, align 8
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*) #1

declare dso_local %struct.wined3d_context** @heap_realloc(%struct.wined3d_context**, i32) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

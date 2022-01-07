; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_device.c_device_context_remove.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_device.c_device_context_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_device = type { i64, %struct.wined3d_context** }
%struct.wined3d_context = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Removing context %p.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Context %p doesn't exist in context array.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to shrink context array. Oh well.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_context_remove(%struct.wined3d_device* %0, %struct.wined3d_context* %1) #0 {
  %3 = alloca %struct.wined3d_device*, align 8
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca %struct.wined3d_context**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.wined3d_device* %0, %struct.wined3d_device** %3, align 8
  store %struct.wined3d_context* %1, %struct.wined3d_context** %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.wined3d_context* %9)
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %14 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %19 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %18, i32 0, i32 1
  %20 = load %struct.wined3d_context**, %struct.wined3d_context*** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.wined3d_context*, %struct.wined3d_context** %20, i64 %21
  %23 = load %struct.wined3d_context*, %struct.wined3d_context** %22, align 8
  %24 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %25 = icmp eq %struct.wined3d_context* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %6, align 4
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %11

32:                                               ; preds = %26, %11
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %37 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.wined3d_context* %36)
  br label %86

38:                                               ; preds = %32
  %39 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %40 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %46 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %45, i32 0, i32 1
  %47 = load %struct.wined3d_context**, %struct.wined3d_context*** %46, align 8
  %48 = call i32 @heap_free(%struct.wined3d_context** %47)
  %49 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %50 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %49, i32 0, i32 1
  store %struct.wined3d_context** null, %struct.wined3d_context*** %50, align 8
  br label %86

51:                                               ; preds = %38
  %52 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %53 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %52, i32 0, i32 1
  %54 = load %struct.wined3d_context**, %struct.wined3d_context*** %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds %struct.wined3d_context*, %struct.wined3d_context** %54, i64 %55
  %57 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %58 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %57, i32 0, i32 1
  %59 = load %struct.wined3d_context**, %struct.wined3d_context*** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  %62 = getelementptr inbounds %struct.wined3d_context*, %struct.wined3d_context** %59, i64 %61
  %63 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %64 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %65, %66
  %68 = mul i64 %67, 8
  %69 = call i32 @memmove(%struct.wined3d_context** %56, %struct.wined3d_context** %62, i64 %68)
  %70 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %71 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %70, i32 0, i32 1
  %72 = load %struct.wined3d_context**, %struct.wined3d_context*** %71, align 8
  %73 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %74 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = mul i64 %75, 8
  %77 = trunc i64 %76 to i32
  %78 = call %struct.wined3d_context** @heap_realloc(%struct.wined3d_context** %72, i32 %77)
  store %struct.wined3d_context** %78, %struct.wined3d_context*** %5, align 8
  %79 = icmp ne %struct.wined3d_context** %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %51
  %81 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %86

82:                                               ; preds = %51
  %83 = load %struct.wined3d_context**, %struct.wined3d_context*** %5, align 8
  %84 = load %struct.wined3d_device*, %struct.wined3d_device** %3, align 8
  %85 = getelementptr inbounds %struct.wined3d_device, %struct.wined3d_device* %84, i32 0, i32 1
  store %struct.wined3d_context** %83, %struct.wined3d_context*** %85, align 8
  br label %86

86:                                               ; preds = %82, %80, %44, %35
  ret void
}

declare dso_local i32 @TRACE(i8*, %struct.wined3d_context*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @heap_free(%struct.wined3d_context**) #1

declare dso_local i32 @memmove(%struct.wined3d_context**, %struct.wined3d_context**, i64) #1

declare dso_local %struct.wined3d_context** @heap_realloc(%struct.wined3d_context**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

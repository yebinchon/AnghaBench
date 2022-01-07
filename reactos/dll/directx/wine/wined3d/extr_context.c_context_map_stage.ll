; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_stage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_context.c_context_map_stage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_context = type { i64*, i64* }

@.str = private unnamed_addr constant [30 x i8] c"Mapping stage %u to unit %u.\0A\00", align 1
@WINED3D_UNMAPPED_STAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_context*, i64, i64)* @context_map_stage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @context_map_stage(%struct.wined3d_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.wined3d_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.wined3d_context* %0, %struct.wined3d_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %10 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i64, i64* %11, i64 %12
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %16 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %26 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 %24, i64* %29, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %3
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %39 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %40 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %38, i64* %43, align 8
  br label %44

44:                                               ; preds = %37, %33, %3
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %47 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 %45, i64* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i64, i64* @WINED3D_UNMAPPED_STAGE, align 8
  %60 = load %struct.wined3d_context*, %struct.wined3d_context** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_context, %struct.wined3d_context* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %59, i64* %64, align 8
  br label %65

65:                                               ; preds = %58, %54, %44
  ret void
}

declare dso_local i32 @TRACE(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

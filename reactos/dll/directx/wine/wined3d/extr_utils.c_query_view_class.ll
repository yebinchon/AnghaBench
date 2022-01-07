; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_query_view_class.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_utils.c_query_view_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_format = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Format %s is member of GL view class %#x.\0A\00", align 1
@GL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_format*)* @query_view_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_view_class(%struct.wined3d_format* %0) #0 {
  %2 = alloca %struct.wined3d_format*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.wined3d_format* %0, %struct.wined3d_format** %2, align 8
  %6 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %7 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @lookup_gl_view_class(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %11 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @lookup_gl_view_class(i32 %12)
  store i64 %13, i64* %4, align 8
  %14 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %15 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @lookup_gl_view_class(i32 %16)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21, %1
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %28 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %30 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @debug_d3dformat(i32 %31)
  %33 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %34 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %35)
  br label %41

37:                                               ; preds = %21
  %38 = load i64, i64* @GL_NONE, align 8
  %39 = load %struct.wined3d_format*, %struct.wined3d_format** %2, align 8
  %40 = getelementptr inbounds %struct.wined3d_format, %struct.wined3d_format* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %25
  ret void
}

declare dso_local i64 @lookup_gl_view_class(i32) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debug_d3dformat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

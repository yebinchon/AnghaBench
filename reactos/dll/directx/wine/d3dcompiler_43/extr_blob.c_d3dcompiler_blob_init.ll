; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_blob.c_d3dcompiler_blob_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_blob.c_d3dcompiler_blob_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_blob = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@d3dcompiler_blob_vtbl = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to allocate D3D blob data memory\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dcompiler_blob*, i32)* @d3dcompiler_blob_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dcompiler_blob_init(%struct.d3dcompiler_blob* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.d3dcompiler_blob*, align 8
  %5 = alloca i32, align 4
  store %struct.d3dcompiler_blob* %0, %struct.d3dcompiler_blob** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.d3dcompiler_blob*, %struct.d3dcompiler_blob** %4, align 8
  %7 = getelementptr inbounds %struct.d3dcompiler_blob, %struct.d3dcompiler_blob* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i32* @d3dcompiler_blob_vtbl, i32** %8, align 8
  %9 = load %struct.d3dcompiler_blob*, %struct.d3dcompiler_blob** %4, align 8
  %10 = getelementptr inbounds %struct.d3dcompiler_blob, %struct.d3dcompiler_blob* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.d3dcompiler_blob*, %struct.d3dcompiler_blob** %4, align 8
  %13 = getelementptr inbounds %struct.d3dcompiler_blob, %struct.d3dcompiler_blob* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = call i32 (...) @GetProcessHeap()
  %15 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @HeapAlloc(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.d3dcompiler_blob*, %struct.d3dcompiler_blob** %4, align 8
  %19 = getelementptr inbounds %struct.d3dcompiler_blob, %struct.d3dcompiler_blob* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.d3dcompiler_blob*, %struct.d3dcompiler_blob** %4, align 8
  %21 = getelementptr inbounds %struct.d3dcompiler_blob, %struct.d3dcompiler_blob* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = call i32 @ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %26, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

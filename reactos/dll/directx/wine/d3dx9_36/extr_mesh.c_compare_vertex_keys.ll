; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_compare_vertex_keys.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_mesh.c_compare_vertex_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vertex_metadata = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_vertex_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_vertex_keys(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vertex_metadata*, align 8
  %7 = alloca %struct.vertex_metadata*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vertex_metadata*
  store %struct.vertex_metadata* %9, %struct.vertex_metadata** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.vertex_metadata*
  store %struct.vertex_metadata* %11, %struct.vertex_metadata** %7, align 8
  %12 = load %struct.vertex_metadata*, %struct.vertex_metadata** %6, align 8
  %13 = getelementptr inbounds %struct.vertex_metadata, %struct.vertex_metadata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vertex_metadata*, %struct.vertex_metadata** %7, align 8
  %16 = getelementptr inbounds %struct.vertex_metadata, %struct.vertex_metadata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.vertex_metadata*, %struct.vertex_metadata** %6, align 8
  %22 = getelementptr inbounds %struct.vertex_metadata, %struct.vertex_metadata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vertex_metadata*, %struct.vertex_metadata** %7, align 8
  %25 = getelementptr inbounds %struct.vertex_metadata, %struct.vertex_metadata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 -1, i32 1
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

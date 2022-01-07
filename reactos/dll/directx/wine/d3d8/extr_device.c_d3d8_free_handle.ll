; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3d8_free_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3d8_free_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_handle_table = type { i64, %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry* }
%struct.d3d8_handle_entry = type { i32, %struct.d3d8_handle_entry* }

@D3D8_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid handle %u passed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Handle %u(%p) is not of type %#x.\0A\00", align 1
@D3D8_HANDLE_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.d3d8_handle_table*, i64, i32)* @d3d8_free_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @d3d8_free_handle(%struct.d3d8_handle_table* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.d3d8_handle_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3d8_handle_entry*, align 8
  %9 = alloca i8*, align 8
  store %struct.d3d8_handle_table* %0, %struct.d3d8_handle_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @D3D8_INVALID_HANDLE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %16 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i64, i64* %6, align 8
  %21 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %20)
  store i8* null, i8** %4, align 8
  br label %55

22:                                               ; preds = %13
  %23 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %24 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %23, i32 0, i32 2
  %25 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %25, i64 %26
  store %struct.d3d8_handle_entry* %27, %struct.d3d8_handle_entry** %8, align 8
  %28 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %29 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %34, %struct.d3d8_handle_entry* %35, i32 %36)
  store i8* null, i8** %4, align 8
  br label %55

38:                                               ; preds = %22
  %39 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %40 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %39, i32 0, i32 1
  %41 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %40, align 8
  %42 = bitcast %struct.d3d8_handle_entry* %41 to i8*
  store i8* %42, i8** %9, align 8
  %43 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %44 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %43, i32 0, i32 1
  %45 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %44, align 8
  %46 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %47 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %46, i32 0, i32 1
  store %struct.d3d8_handle_entry* %45, %struct.d3d8_handle_entry** %47, align 8
  %48 = load i32, i32* @D3D8_HANDLE_FREE, align 4
  %49 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %50 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %52 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %53 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %52, i32 0, i32 1
  store %struct.d3d8_handle_entry* %51, %struct.d3d8_handle_entry** %53, align 8
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %4, align 8
  br label %55

55:                                               ; preds = %38, %33, %19
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

declare dso_local i32 @WARN(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

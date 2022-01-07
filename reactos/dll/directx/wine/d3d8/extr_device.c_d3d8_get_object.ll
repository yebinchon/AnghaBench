; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3d8_get_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3d8_get_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_handle_table = type { i64, %struct.d3d8_handle_entry* }
%struct.d3d8_handle_entry = type { i32, i8* }

@D3D8_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid handle %u passed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Handle %u(%p) is not of type %#x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.d3d8_handle_table*, i64, i32)* @d3d8_get_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @d3d8_get_object(%struct.d3d8_handle_table* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.d3d8_handle_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3d8_handle_entry*, align 8
  store %struct.d3d8_handle_table* %0, %struct.d3d8_handle_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @D3D8_INVALID_HANDLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %15 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %3
  %19 = load i64, i64* %6, align 8
  %20 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %19)
  store i8* null, i8** %4, align 8
  br label %41

21:                                               ; preds = %12
  %22 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %23 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %22, i32 0, i32 1
  %24 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %24, i64 %25
  store %struct.d3d8_handle_entry* %26, %struct.d3d8_handle_entry** %8, align 8
  %27 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %28 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i64, ...) @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %33, %struct.d3d8_handle_entry* %34, i32 %35)
  store i8* null, i8** %4, align 8
  br label %41

37:                                               ; preds = %21
  %38 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %39 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %37, %32, %18
  %42 = load i8*, i8** %4, align 8
  ret i8* %42
}

declare dso_local i32 @WARN(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

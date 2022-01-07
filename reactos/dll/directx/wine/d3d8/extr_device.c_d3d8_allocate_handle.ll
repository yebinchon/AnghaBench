; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3d8_allocate_handle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3d8/extr_device.c_d3d8_allocate_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3d8_handle_table = type { i64, i64, %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry* }
%struct.d3d8_handle_entry = type { i32, %struct.d3d8_handle_entry* }

@D3D8_HANDLE_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Handle %u(%p) is in the free list, but has type %#x.\0A\00", align 1
@D3D8_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to grow the handle table.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3d8_handle_table*, i8*, i32)* @d3d8_allocate_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3d8_allocate_handle(%struct.d3d8_handle_table* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3d8_handle_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.d3d8_handle_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.d3d8_handle_entry*, align 8
  store %struct.d3d8_handle_table* %0, %struct.d3d8_handle_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %13 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %12, i32 0, i32 3
  %14 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %13, align 8
  %15 = icmp ne %struct.d3d8_handle_entry* %14, null
  br i1 %15, label %16, label %58

16:                                               ; preds = %3
  %17 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %18 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %17, i32 0, i32 3
  %19 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %18, align 8
  %20 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %21 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %20, i32 0, i32 2
  %22 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %21, align 8
  %23 = ptrtoint %struct.d3d8_handle_entry* %19 to i64
  %24 = ptrtoint %struct.d3d8_handle_entry* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 16
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %29 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %28, i32 0, i32 3
  %30 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %29, align 8
  store %struct.d3d8_handle_entry* %30, %struct.d3d8_handle_entry** %8, align 8
  %31 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %32 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @D3D8_HANDLE_FREE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %16
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %39 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %40 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %37, %struct.d3d8_handle_entry* %38, i32 %41)
  %43 = load i32, i32* @D3D8_INVALID_HANDLE, align 4
  store i32 %43, i32* %4, align 4
  br label %116

44:                                               ; preds = %16
  %45 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %46 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %45, i32 0, i32 1
  %47 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %46, align 8
  %48 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %49 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %48, i32 0, i32 3
  store %struct.d3d8_handle_entry* %47, %struct.d3d8_handle_entry** %49, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to %struct.d3d8_handle_entry*
  %52 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %53 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %52, i32 0, i32 1
  store %struct.d3d8_handle_entry* %51, %struct.d3d8_handle_entry** %53, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %56 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %4, align 4
  br label %116

58:                                               ; preds = %3
  %59 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %60 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %63 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %96, label %66

66:                                               ; preds = %58
  %67 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %68 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %71 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = lshr i64 %72, 1
  %74 = add i64 %69, %73
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %10, align 4
  %76 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %77 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %76, i32 0, i32 2
  %78 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 16
  %82 = trunc i64 %81 to i32
  %83 = call %struct.d3d8_handle_entry* @heap_realloc(%struct.d3d8_handle_entry* %78, i32 %82)
  store %struct.d3d8_handle_entry* %83, %struct.d3d8_handle_entry** %11, align 8
  %84 = icmp ne %struct.d3d8_handle_entry* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %66
  %86 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @D3D8_INVALID_HANDLE, align 4
  store i32 %87, i32* %4, align 4
  br label %116

88:                                               ; preds = %66
  %89 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %11, align 8
  %90 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %91 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %90, i32 0, i32 2
  store %struct.d3d8_handle_entry* %89, %struct.d3d8_handle_entry** %91, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %95 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %88, %58
  %97 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %98 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %97, i32 0, i32 2
  %99 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %98, align 8
  %100 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %101 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %99, i64 %102
  store %struct.d3d8_handle_entry* %103, %struct.d3d8_handle_entry** %8, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = bitcast i8* %104 to %struct.d3d8_handle_entry*
  %106 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %107 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %106, i32 0, i32 1
  store %struct.d3d8_handle_entry* %105, %struct.d3d8_handle_entry** %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.d3d8_handle_entry*, %struct.d3d8_handle_entry** %8, align 8
  %110 = getelementptr inbounds %struct.d3d8_handle_entry, %struct.d3d8_handle_entry* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.d3d8_handle_table*, %struct.d3d8_handle_table** %5, align 8
  %112 = getelementptr inbounds %struct.d3d8_handle_table, %struct.d3d8_handle_table* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %112, align 8
  %115 = trunc i64 %113 to i32
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %96, %85, %44, %36
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local %struct.d3d8_handle_entry* @heap_realloc(%struct.d3d8_handle_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

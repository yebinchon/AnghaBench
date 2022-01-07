; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_unmap_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_unmap_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32*, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.image_section_map = type { i64, %struct.image_file_map* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.image_file_map*)* @pe_unmap_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pe_unmap_file(%struct.image_file_map* %0) #0 {
  %2 = alloca %struct.image_file_map*, align 8
  %3 = alloca %struct.image_section_map, align 8
  store %struct.image_file_map* %0, %struct.image_file_map** %2, align 8
  %4 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %5 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %68

10:                                               ; preds = %1
  %11 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %12 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 1
  store %struct.image_file_map* %11, %struct.image_file_map** %12, align 8
  %13 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %27, %10
  %15 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %18 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %16, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = call i32 @pe_unmap_section(%struct.image_section_map* %3)
  br label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.image_section_map, %struct.image_section_map* %3, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  br label %14

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %39, %31
  %33 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %34 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %41 = call i32 @pe_unmap_full(%struct.image_file_map* %40)
  br label %32

42:                                               ; preds = %32
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %45 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @HeapFree(i32 %43, i32 0, i8* %48)
  %50 = call i32 (...) @GetProcessHeap()
  %51 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %52 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @HeapFree(i32 %50, i32 0, i8* %56)
  %58 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %59 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @CloseHandle(i32* %62)
  %64 = load %struct.image_file_map*, %struct.image_file_map** %2, align 8
  %65 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @pe_unmap_section(%struct.image_section_map*) #1

declare dso_local i32 @pe_unmap_full(%struct.image_file_map*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_map_file_read.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_elf_module.c_elf_map_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_file_map = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.elf_map_file_data = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_file_map*, %struct.elf_map_file_data*, i8*, i64, i64)* @elf_map_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_map_file_read(%struct.image_file_map* %0, %struct.elf_map_file_data* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.image_file_map*, align 8
  %8 = alloca %struct.elf_map_file_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.image_file_map* %0, %struct.image_file_map** %7, align 8
  store %struct.elf_map_file_data* %1, %struct.elf_map_file_data** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.elf_map_file_data*, %struct.elf_map_file_data** %8, align 8
  %14 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %54 [
    i32 129, label %16
    i32 128, label %29
  ]

16:                                               ; preds = %5
  %17 = load %struct.image_file_map*, %struct.image_file_map** %7, align 8
  %18 = getelementptr inbounds %struct.image_file_map, %struct.image_file_map* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @pread(i32 %21, i8* %22, i64 %23, i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %5
  %30 = load %struct.elf_map_file_data*, %struct.elf_map_file_data** %8, align 8
  %31 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.elf_map_file_data*, %struct.elf_map_file_data** %8, align 8
  %36 = getelementptr inbounds %struct.elf_map_file_data, %struct.elf_map_file_data* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @ReadProcessMemory(i32 %34, i8* %42, i8* %43, i64 %44, i64* %12)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %29
  %52 = phi i1 [ false, %29 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %6, align 4
  br label %57

54:                                               ; preds = %5
  %55 = call i32 @assert(i32 0)
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %51, %16
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i64 @pread(i32, i8*, i64, i64) #1

declare dso_local i32 @ReadProcessMemory(i32, i8*, i8*, i64, i64*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_map_file_into_memory.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_map_file_into_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping_info = type { i32*, i32, i32, i64 }

@PAGE_READWRITE = common dso_local global i32 0, align 4
@FILE_MAP_WRITE = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mapping_info*)* @map_file_into_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_file_into_memory(%struct.mapping_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapping_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mapping_info* %0, %struct.mapping_info** %3, align 8
  %7 = load %struct.mapping_info*, %struct.mapping_info** %3, align 8
  %8 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i32, i32* @PAGE_READWRITE, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @FILE_MAP_WRITE, align 4
  %14 = load i32, i32* @FILE_MAP_READ, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  br label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @PAGE_READONLY, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @FILE_MAP_READ, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.mapping_info*, %struct.mapping_info** %3, align 8
  %21 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @CreateFileMappingW(i32 %22, i32* null, i32 %23, i32 0, i32 0, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %45

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mapping_info*, %struct.mapping_info** %3, align 8
  %33 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @MapViewOfFile(i32 %30, i32 %31, i32 0, i32 0, i32 %34)
  %36 = load %struct.mapping_info*, %struct.mapping_info** %3, align 8
  %37 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @CloseHandle(i32 %38)
  %40 = load %struct.mapping_info*, %struct.mapping_info** %3, align 8
  %41 = getelementptr inbounds %struct.mapping_info, %struct.mapping_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %29, %27
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @CreateFileMappingW(i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32* @MapViewOfFile(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CloseHandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

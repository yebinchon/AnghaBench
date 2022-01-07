; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_fetch_file_info.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_pdb_fetch_file_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdb_lookup = type { i32 }
%struct.pdb_file_info = type { i32 }

@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to open .PDB file: %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdb_fetch_file_info(%struct.pdb_lookup* %0, i32* %1) #0 {
  %3 = alloca %struct.pdb_lookup*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pdb_file_info, align 4
  store %struct.pdb_lookup* %0, %struct.pdb_lookup** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load %struct.pdb_lookup*, %struct.pdb_lookup** %3, align 8
  %11 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = load i32, i32* @FILE_SHARE_READ, align 4
  %15 = load i32, i32* @OPEN_EXISTING, align 4
  %16 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %17 = call i32* @CreateFileA(i32 %12, i32 %13, i32 %14, i32* null, i32 %15, i32 %16, i32* null)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @PAGE_READONLY, align 4
  %23 = call i32* @CreateFileMappingW(i32* %21, i32* null, i32 %22, i32 0, i32 0, i32* null)
  store i32* %23, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @FILE_MAP_READ, align 4
  %28 = call i8* @MapViewOfFile(i32* %26, i32 %27, i32 0, i32 0, i32 0)
  store i8* %28, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25, %20, %2
  %31 = load %struct.pdb_lookup*, %struct.pdb_lookup** %3, align 8
  %32 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @WARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %8, align 4
  br label %42

36:                                               ; preds = %25
  %37 = load %struct.pdb_lookup*, %struct.pdb_lookup** %3, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @pdb_init(%struct.pdb_lookup* %37, %struct.pdb_file_info* %9, i8* %38, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = call i32 @pdb_free_file(%struct.pdb_file_info* %9)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load i8*, i8** %7, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @UnmapViewOfFile(i8* %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @CloseHandle(i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @CloseHandle(i32* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32* @CreateFileA(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32* @CreateFileMappingW(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @MapViewOfFile(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @pdb_init(%struct.pdb_lookup*, %struct.pdb_file_info*, i8*, i32*) #1

declare dso_local i32 @pdb_free_file(%struct.pdb_file_info*) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i32 @CloseHandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_map_pdb_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_map_pdb_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.pdb_lookup = type { i32, i32, i32, i32, i32 }
%struct.module = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"\09Couldn't find %s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@PAGE_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.process*, %struct.pdb_lookup*, %struct.module*)* @map_pdb_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @map_pdb_file(%struct.process* %0, %struct.pdb_lookup* %1, %struct.module* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.process*, align 8
  %6 = alloca %struct.pdb_lookup*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.process* %0, %struct.process** %5, align 8
  store %struct.pdb_lookup* %1, %struct.pdb_lookup** %6, align 8
  store %struct.module* %2, %struct.module** %7, align 8
  store i32* null, i32** %9, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %20 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %53 [
    i32 128, label %22
    i32 129, label %38
  ]

22:                                               ; preds = %3
  %23 = load %struct.process*, %struct.process** %5, align 8
  %24 = load %struct.module*, %struct.module** %7, align 8
  %25 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %26 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %29 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %32 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.module*, %struct.module** %7, align 8
  %35 = getelementptr inbounds %struct.module, %struct.module* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @path_find_symbol_file(%struct.process* %23, %struct.module* %24, i32 %27, i32* null, i32 %30, i32 %33, i8* %17, i32* %36)
  store i32 %37, i32* %12, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load %struct.process*, %struct.process** %5, align 8
  %40 = load %struct.module*, %struct.module** %7, align 8
  %41 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %42 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %45 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %44, i32 0, i32 3
  %46 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %47 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.module*, %struct.module** %7, align 8
  %50 = getelementptr inbounds %struct.module, %struct.module* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @path_find_symbol_file(%struct.process* %39, %struct.module* %40, i32 %43, i32* %45, i32 0, i32 %48, i8* %17, i32* %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %3, %38, %22
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.pdb_lookup*, %struct.pdb_lookup** %6, align 8
  %58 = getelementptr inbounds %struct.pdb_lookup, %struct.pdb_lookup* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %59)
  store i32* null, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %77

61:                                               ; preds = %53
  %62 = load i32, i32* @GENERIC_READ, align 4
  %63 = load i32, i32* @FILE_SHARE_READ, align 4
  %64 = load i32, i32* @OPEN_EXISTING, align 4
  %65 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %66 = call i32* @CreateFileA(i8* %17, i32 %62, i32 %63, i32* null, i32 %64, i32 %65, i32* null)
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %68 = icmp ne i32* %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* @PAGE_READONLY, align 4
  %72 = call i32* @CreateFileMappingW(i32* %70, i32* null, i32 %71, i32 0, i32 0, i32* null)
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @CloseHandle(i32* %73)
  br label %75

75:                                               ; preds = %69, %61
  %76 = load i32*, i32** %9, align 8
  store i32* %76, i32** %4, align 8
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %56
  %78 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32*, i32** %4, align 8
  ret i32* %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @path_find_symbol_file(%struct.process*, %struct.module*, i32, i32*, i32, i32, i8*, i32*) #2

declare dso_local i32 @WARN(i8*, i32) #2

declare dso_local i32* @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32* @CreateFileMappingW(i32*, i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

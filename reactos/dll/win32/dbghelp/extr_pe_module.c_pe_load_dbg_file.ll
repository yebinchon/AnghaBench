; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_dbg_file.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_pe_module.c_pe_load_dbg_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }
%struct.module = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Processing DBG file %s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't find .DBG file %s (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.process*, %struct.module*, i8*, i32)* @pe_load_dbg_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pe_load_dbg_file(%struct.process* %0, %struct.module* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.process*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.process* %0, %struct.process** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  store i64 %22, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @debugstr_a(i8* %24)
  %26 = call i32 @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.process*, %struct.process** %5, align 8
  %28 = load %struct.module*, %struct.module** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.module*, %struct.module** %6, align 8
  %32 = getelementptr inbounds %struct.module, %struct.module* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i64 @path_find_symbol_file(%struct.process* %27, %struct.module* %28, i8* %29, i32* null, i32 %30, i32 0, i8* %21, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %4
  %37 = load i32, i32* @GENERIC_READ, align 4
  %38 = load i32, i32* @FILE_SHARE_READ, align 4
  %39 = load i32, i32* @OPEN_EXISTING, align 4
  %40 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %41 = call i64 @CreateFileA(i8* %21, i32 %37, i32 %38, i32* null, i32 %39, i32 %40, i32* null)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %36
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @PAGE_READONLY, align 4
  %47 = call i64 @CreateFileMappingW(i64 %45, i32* null, i32 %46, i32 0, i32 0, i32* null)
  store i64 %47, i64* %12, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %44
  %50 = load i64, i64* %12, align 8
  %51 = load i32, i32* @FILE_MAP_READ, align 4
  %52 = call i32* @MapViewOfFile(i64 %50, i32 %51, i32 0, i32 0, i32 0)
  store i32* %52, i32** %13, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = load i32*, i32** %13, align 8
  %56 = bitcast i32* %55 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %15, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 1
  %59 = bitcast %struct.TYPE_4__* %58 to i32*
  store i32* %59, i32** %16, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  store i32* %72, i32** %17, align 8
  %73 = load %struct.process*, %struct.process** %5, align 8
  %74 = load %struct.module*, %struct.module** %6, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = udiv i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = call i32 @pe_load_debug_directory(%struct.process* %73, %struct.module* %74, i32* %75, i32* %76, i32 %79, i32* %80, i32 %86)
  store i32 %87, i32* %14, align 4
  br label %93

88:                                               ; preds = %49, %44, %36, %4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @debugstr_a(i8* %89)
  %91 = call i32 @debugstr_a(i8* %21)
  %92 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %54
  %94 = load i32*, i32** %13, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @UnmapViewOfFile(i32* %97)
  br label %99

99:                                               ; preds = %96, %93
  %100 = load i64, i64* %12, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @CloseHandle(i64 %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @CloseHandle(i64 %110)
  br label %112

112:                                              ; preds = %109, %105
  %113 = load i32, i32* %14, align 4
  %114 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %114)
  ret i32 %113
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_a(i8*) #2

declare dso_local i64 @path_find_symbol_file(%struct.process*, %struct.module*, i8*, i32*, i32, i32, i8*, i32*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #2

declare dso_local i32* @MapViewOfFile(i64, i32, i32, i32, i32) #2

declare dso_local i32 @pe_load_debug_directory(%struct.process*, %struct.module*, i32*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ERR(i8*, i32, i32) #2

declare dso_local i32 @UnmapViewOfFile(i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

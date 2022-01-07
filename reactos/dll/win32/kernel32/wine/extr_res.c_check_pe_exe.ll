; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_check_pe_exe.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/kernel32/wine/extr_res.c_check_pe_exe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }

@FALSE = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@FILE_MAP_READ = common dso_local global i32 0, align 4
@IMAGE_NT_OPTIONAL_HDR64_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"resources: %08x %08x\0A\00", align 1
@IMAGE_DIRECTORY_ENTRY_RESOURCE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*)* @check_pe_exe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pe_exe(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @GetFileSize(i64 %15, i32* null)
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* %3, align 8
  %18 = load i32, i32* @PAGE_READONLY, align 4
  %19 = call i64 @CreateFileMappingW(i64 %17, i32* null, i32 %18, i32 0, i32 0, i32* null)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  br label %79

23:                                               ; preds = %2
  %24 = load i64, i64* %10, align 8
  %25 = load i32, i32* @FILE_MAP_READ, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @MapViewOfFile(i64 %24, i32 %25, i32 0, i32 0, i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %79

31:                                               ; preds = %23
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @get_nt_header(i8* %32, i32 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %79

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = bitcast %struct.TYPE_9__* %40 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %6, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 0
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IMAGE_NT_OPTIONAL_HDR64_MAGIC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %39
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 0
  store %struct.TYPE_10__* %58, %struct.TYPE_10__** %8, align 8
  br label %59

59:                                               ; preds = %53, %39
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = load i64, i64* @IMAGE_DIRECTORY_ENTRY_RESOURCE, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %69)
  %71 = load i8*, i8** %13, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32* @get_section_header(i8* %71, i32 %72, i32* %12)
  store i32* %73, i32** %7, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %59
  br label %79

77:                                               ; preds = %59
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %76, %38, %30, %22
  %80 = load i8*, i8** %13, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @UnmapViewOfFile(i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @CloseHandle(i64 %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %9, align 4
  ret i32 %92
}

declare dso_local i32 @GetFileSize(i64, i32*) #1

declare dso_local i64 @CreateFileMappingW(i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i8* @MapViewOfFile(i64, i32, i32, i32, i32) #1

declare dso_local i64 @get_nt_header(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32* @get_section_header(i8*, i32, i32*) #1

declare dso_local i32 @UnmapViewOfFile(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

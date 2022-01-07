; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_read_file_to_bstr.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/schtasks/extr_schtasks.c_read_file_to_bstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Could not open file\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Empty file\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Read filed\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @read_file_to_bstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_file_to_bstr(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* @GENERIC_READ, align 4
  %14 = load i32, i32* @FILE_SHARE_READ, align 4
  %15 = load i32, i32* @OPEN_EXISTING, align 4
  %16 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %17 = call i64 @CreateFileW(i32* %12, i32 %13, i32 %14, i32* null, i32 %15, i32 %16, i32* null)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %105

23:                                               ; preds = %1
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @GetFileSizeEx(i64 %24, %struct.TYPE_3__* %4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %23
  %32 = call i32 @FIXME(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @CloseHandle(i64 %33)
  store i32* null, i32** %2, align 8
  br label %105

35:                                               ; preds = %27
  %36 = call i32 (...) @GetProcessHeap()
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @HeapAlloc(i32 %36, i32 0, i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ReadFile(i64 %43, i8* %44, i32 %46, i32* %5, i32* null)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @CloseHandle(i64 %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = call i32 @FIXME(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (...) @GetProcessHeap()
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @HeapFree(i32 %55, i32 0, i8* %56)
  store i32* null, i32** %2, align 8
  br label %105

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 255
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 254
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = udiv i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32* @SysAllocStringLen(i32* %76, i32 %81)
  store i32* %82, i32** %10, align 8
  br label %100

83:                                               ; preds = %67, %61, %58
  %84 = load i32, i32* @CP_ACP, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @MultiByteToWideChar(i32 %84, i32 0, i8* %85, i32 %86, i32* null, i32 0)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32* @SysAllocStringLen(i32* null, i32 %88)
  store i32* %89, i32** %10, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load i32, i32* @CP_ACP, align 4
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @MultiByteToWideChar(i32 %93, i32 0, i8* %94, i32 %95, i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %83
  br label %100

100:                                              ; preds = %99, %73
  %101 = call i32 (...) @GetProcessHeap()
  %102 = load i8*, i8** %7, align 8
  %103 = call i32 @HeapFree(i32 %101, i32 0, i8* %102)
  %104 = load i32*, i32** %10, align 8
  store i32* %104, i32** %2, align 8
  br label %105

105:                                              ; preds = %100, %53, %31, %21
  %106 = load i32*, i32** %2, align 8
  ret i32* %106
}

declare dso_local i64 @CreateFileW(i32*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @GetFileSizeEx(i64, %struct.TYPE_3__*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ReadFile(i64, i8*, i32, i32*, i32*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32* @SysAllocStringLen(i32*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

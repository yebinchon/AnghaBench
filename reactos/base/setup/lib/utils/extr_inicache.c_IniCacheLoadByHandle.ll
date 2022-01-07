; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheLoadByHandle.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheLoadByHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@FileStandardInformation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"NtQueryInformationFile() failed (Status %lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"File size: %lu\0A\00", align 1
@ProcessHeap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RtlAllocateHeap() failed\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"NtReadFile() failed (Status %lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"IniCacheLoadFromMemory() failed (Status %lx)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IniCacheLoadByHandle(i32** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32**, i32*** %5, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FileStandardInformation, align 4
  %17 = call i32 @NtQueryInformationFile(i32 %15, i32* %9, %struct.TYPE_10__* %10, i32 4, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @NT_SUCCESS(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DPRINT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %76

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @DPRINT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ProcessHeap, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i64 @RtlAllocateHeap(i32 %32, i32 0, i32 %34)
  %36 = inttoptr i64 %35 to i64*
  store i64* %36, i64** %11, align 8
  %37 = load i64*, i64** %11, align 8
  %38 = icmp eq i64* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %41, i32* %4, align 4
  br label %76

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i64*, i64** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @NtReadFile(i32 %44, i32* null, i32* null, i32* null, i32* %9, i64* %45, i32 %46, %struct.TYPE_9__* %13, i32* null)
  store i32 %47, i32* %8, align 4
  %48 = load i64*, i64** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @NT_SUCCESS(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %71

58:                                               ; preds = %42
  %59 = load i32**, i32*** %5, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @IniCacheLoadFromMemory(i32** %59, i64* %60, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @NT_SUCCESS(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = call i32 (i8*, ...) @DPRINT1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %58
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* @ProcessHeap, align 4
  %73 = load i64*, i64** %11, align 8
  %74 = call i32 @RtlFreeHeap(i32 %72, i32 0, i64* %73)
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %71, %39, %21
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @NtQueryInformationFile(i32, i32*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i64 @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @DPRINT1(i8*, ...) #1

declare dso_local i32 @NtReadFile(i32, i32*, i32*, i32*, i32*, i64*, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @IniCacheLoadFromMemory(i32**, i64*, i32, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

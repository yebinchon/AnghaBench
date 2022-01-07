; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_winldr.c_WinLdrLoadDeviceDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_winldr.c_WinLdrLoadDeviceDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%wZ\00", align 1
@ANSI_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"DriverPath: '%s', DllName: '%s', LPB\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%wZ\00", align 1
@LoaderBootDriver = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"PeLdrAllocateDataTableEntry() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"PeLdrScanImportDescriptorTable() failed for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32, %struct.TYPE_6__**)* @WinLdrLoadDeviceDriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WinLdrLoadDeviceDriver(i32 %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_6__** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__**, align 8
  %12 = alloca [1024 x i32], align 16
  %13 = alloca [1024 x i32], align 16
  %14 = alloca [1024 x i32], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__** %4, %struct.TYPE_6__*** %11, align 8
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %19 = load i32*, i32** %9, align 8
  %20 = ptrtoint i32* %19 to i32
  %21 = call i32 (i32*, i32, i8*, i32, ...) @RtlStringCbPrintfA(i32* %18, i32 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %23 = call i32* @strrchr(i32* %22, i8 signext 92)
  store i32* %23, i32** %15, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %28 = load i32*, i32** %15, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = call i32 @RtlStringCbCopyA(i32* %27, i32 4096, i32* %29)
  %31 = load i32, i32* @ANSI_NULL, align 4
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  br label %40

34:                                               ; preds = %5
  %35 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %36 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %37 = call i32 @RtlStringCbCopyA(i32* %35, i32 4096, i32* %36)
  %38 = load i32, i32* @ANSI_NULL, align 4
  %39 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  br label %40

40:                                               ; preds = %34, %26
  %41 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %42 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %41, i32* %42)
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %47 = call i64 @PeLdrCheckForLoadedDll(i32 %44, i32* %45, %struct.TYPE_6__** %46)
  store i64 %47, i64* %16, align 8
  %48 = load i64, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %6, align 8
  br label %100

52:                                               ; preds = %40
  %53 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %54 = load i32, i32* %8, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 (i32*, i32, i8*, i32, ...) @RtlStringCbPrintfA(i32* %53, i32 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32* %55)
  %57 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %58 = load i32, i32* @LoaderBootDriver, align 4
  %59 = call i64 @PeLdrLoadImage(i32* %57, i32 %58, i32** %17)
  store i64 %59, i64* %16, align 8
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %52
  %63 = load i64, i64* @FALSE, align 8
  store i64 %63, i64* %6, align 8
  br label %100

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %67 = getelementptr inbounds [1024 x i32], [1024 x i32]* %14, i64 0, i64 0
  %68 = load i32*, i32** %17, align 8
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %70 = call i64 @PeLdrAllocateDataTableEntry(i32 %65, i32* %66, i32* %67, i32* %68, %struct.TYPE_6__** %69)
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %64
  %74 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %6, align 8
  br label %100

76:                                               ; preds = %64
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %84 = load i32, i32* %8, align 4
  %85 = getelementptr inbounds [1024 x i32], [1024 x i32]* %13, i64 0, i64 0
  %86 = call i32 (i32*, i32, i8*, i32, ...) @RtlStringCbPrintfA(i32* %83, i32 4096, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32* %85)
  %87 = load i32, i32* %7, align 4
  %88 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %89 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %11, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = call i64 @PeLdrScanImportDescriptorTable(i32 %87, i32* %88, %struct.TYPE_6__* %90)
  store i64 %91, i64* %16, align 8
  %92 = load i64, i64* %16, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %76
  %95 = getelementptr inbounds [1024 x i32], [1024 x i32]* %12, i64 0, i64 0
  %96 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32* %95)
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %6, align 8
  br label %100

98:                                               ; preds = %76
  %99 = load i64, i64* @TRUE, align 8
  store i64 %99, i64* %6, align 8
  br label %100

100:                                              ; preds = %98, %94, %73, %62, %50
  %101 = load i64, i64* %6, align 8
  ret i64 %101
}

declare dso_local i32 @RtlStringCbPrintfA(i32*, i32, i8*, i32, ...) #1

declare dso_local i32* @strrchr(i32*, i8 signext) #1

declare dso_local i32 @RtlStringCbCopyA(i32*, i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i32*, i32*) #1

declare dso_local i64 @PeLdrCheckForLoadedDll(i32, i32*, %struct.TYPE_6__**) #1

declare dso_local i64 @PeLdrLoadImage(i32*, i32, i32**) #1

declare dso_local i64 @PeLdrAllocateDataTableEntry(i32, i32*, i32*, i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @PeLdrScanImportDescriptorTable(i32, i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_winldr.c_LoadAndBootWindowsCommon.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/ntldr/extr_winldr.c_LoadAndBootWindowsCommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"LoadAndBootWindowsCommon()\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Detecting hardware...\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error loading NTOS core.\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Loading boot drivers...\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Boot drivers loading %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"successful\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@LoaderPagesSpanned = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [62 x i8] c"Hello from paged mode, KiSystemStartup %p, LoaderBlockVA %p!\0A\00", align 1
@KI_USER_SHARED_DATA = common dso_local global i64 0, align 8
@MM_PAGE_SIZE = common dso_local global i32 0, align 4
@ESUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LoadAndBootWindowsCommon(i32 %0, %struct.TYPE_19__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i32 (%struct.TYPE_19__*)*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @strstr(i64 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i64 %23, i64* %16, align 8
  %24 = call i32 (...) @UiDrawBackdrop()
  %25 = call i32 @UiDrawProgressBarCenter(i32 20, i32 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %26 = call i32 (...) @MachHwDetect()
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i64 @LoadWindowsCore(i32 %29, %struct.TYPE_19__* %30, i64 %31, i64 %32, %struct.TYPE_20__** %14)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %5
  %37 = call i32 @UiMessageBox(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @ENOEXEC, align 4
  store i32 %38, i32* %6, align 4
  br label %91

39:                                               ; preds = %5
  %40 = call i32 (...) @UiDrawBackdrop()
  %41 = call i32 @UiDrawProgressBarCenter(i32 100, i32 100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i64 @WinLdrLoadBootDrivers(%struct.TYPE_19__* %42, i64 %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0)
  %49 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %48)
  %50 = call i32 (...) @IniCleanup()
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @WinLdrInitializePhase1(%struct.TYPE_19__* %51, i64 %52, i64 %53, i64 %54, i32 %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32 (%struct.TYPE_19__*)*
  store i32 (%struct.TYPE_19__*)* %60, i32 (%struct.TYPE_19__*)** %15, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = call %struct.TYPE_19__* @PaToVa(%struct.TYPE_19__* %61)
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %12, align 8
  %63 = call i32 (...) @MachPrepareForReactOS()
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = call i32 @WinLdrSetupMachineDependent(%struct.TYPE_19__* %64)
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = call i32 @WinLdrSetupMemoryLayout(%struct.TYPE_19__* %66)
  %68 = call i32 (...) @WinLdrSetProcessorContext()
  %69 = load i32, i32* @LoaderPagesSpanned, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %15, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %76 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 (%struct.TYPE_19__*)* %74, %struct.TYPE_19__* %75)
  %77 = load i64, i64* @KI_USER_SHARED_DATA, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @MM_PAGE_SIZE, align 4
  %80 = call i32 @RtlZeroMemory(i32 %78, i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %82 = call i32 @WinLdrpDumpMemoryDescriptors(%struct.TYPE_19__* %81)
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %84 = call i32 @WinLdrpDumpBootDriver(%struct.TYPE_19__* %83)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %86 = call i32 @WinLdrpDumpArcDisks(%struct.TYPE_19__* %85)
  %87 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %15, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %89 = call i32 %87(%struct.TYPE_19__* %88)
  %90 = load i32, i32* @ESUCCESS, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %39, %36
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @strstr(i64, i8*) #1

declare dso_local i32 @UiDrawBackdrop(...) #1

declare dso_local i32 @UiDrawProgressBarCenter(i32, i32, i8*) #1

declare dso_local i32 @MachHwDetect(...) #1

declare dso_local i64 @LoadWindowsCore(i32, %struct.TYPE_19__*, i64, i64, %struct.TYPE_20__**) #1

declare dso_local i32 @UiMessageBox(i8*) #1

declare dso_local i64 @WinLdrLoadBootDrivers(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @IniCleanup(...) #1

declare dso_local i32 @WinLdrInitializePhase1(%struct.TYPE_19__*, i64, i64, i64, i32) #1

declare dso_local %struct.TYPE_19__* @PaToVa(%struct.TYPE_19__*) #1

declare dso_local i32 @MachPrepareForReactOS(...) #1

declare dso_local i32 @WinLdrSetupMachineDependent(%struct.TYPE_19__*) #1

declare dso_local i32 @WinLdrSetupMemoryLayout(%struct.TYPE_19__*) #1

declare dso_local i32 @WinLdrSetProcessorContext(...) #1

declare dso_local i32 @RtlZeroMemory(i32, i32) #1

declare dso_local i32 @WinLdrpDumpMemoryDescriptors(%struct.TYPE_19__*) #1

declare dso_local i32 @WinLdrpDumpBootDriver(%struct.TYPE_19__*) #1

declare dso_local i32 @WinLdrpDumpArcDisks(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

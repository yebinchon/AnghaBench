; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmInitPageLookupTable.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/mm/extr_meminit.c_MmInitPageLookupTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"MmInitPageLookupTable()\0A\00", align 1
@MmLowestPhysicalPage = common dso_local global i32 0, align 4
@LoaderFirmwarePermanent = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Marking pages 0x%lx-0x%lx as type %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Ignoring pages 0x%lx-0x%lx (%s)\0A\00", align 1
@MM_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"Marking the page lookup table pages as reserved StartPage: 0x%x PageCount: 0x%x\0A\00", align 1
@LoaderFirmwareTemporary = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MmInitPageLookupTable(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %6, align 8
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @MmLowestPhysicalPage, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LoaderFirmwarePermanent, align 4
  %14 = call i32 @MmMarkPagesInLookupTable(i64 %10, i32 %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %72, %2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = call %struct.TYPE_4__* @ArcGetMemoryDescriptor(%struct.TYPE_4__* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %6, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %19
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @MmGetSystemMemoryMapTypeString(i32 %42)
  %44 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %39, i32 %43)
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @MmMarkPagesInLookupTable(i64 %45, i32 %48, i32 %51, i32 %54)
  br label %72

56:                                               ; preds = %19
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MmGetSystemMemoryMapTypeString(i32 %69)
  %71 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %56, %29
  br label %15

73:                                               ; preds = %15
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @MmGetPageNumberFromAddress(i64 %74)
  store i32 %75, i32* %7, align 4
  %76 = load i64, i64* %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @MM_PAGE_SIZE, align 4
  %82 = call i64 @ROUND_UP(i32 %80, i32 %81)
  %83 = add nsw i64 %76, %82
  %84 = call i32 @MmGetPageNumberFromAddress(i64 %83)
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i64, i64* %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @LoaderFirmwareTemporary, align 4
  %94 = call i32 @MmMarkPagesInLookupTable(i64 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @MmMarkPagesInLookupTable(i64, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @ArcGetMemoryDescriptor(%struct.TYPE_4__*) #1

declare dso_local i32 @MmGetSystemMemoryMapTypeString(i32) #1

declare dso_local i32 @MmGetPageNumberFromAddress(i64) #1

declare dso_local i64 @ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_metafile.c_METAFILE_WriteHeader.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/gdiplus/extr_metafile.c_METAFILE_WriteHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@MetafileTypeEmfPlusOnly = common dso_local global i64 0, align 8
@MetafileTypeEmfPlusDual = common dso_local global i64 0, align 8
@Ok = common dso_local global i32 0, align 4
@EmfPlusRecordTypeHeader = common dso_local global i32 0, align 4
@VERSION_MAGIC2 = common dso_local global i32 0, align 4
@TECHNOLOGY = common dso_local global i32 0, align 4
@DT_RASDISPLAY = common dso_local global i64 0, align 8
@LOGPIXELSX = common dso_local global i32 0, align 4
@LOGPIXELSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @METAFILE_WriteHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @METAFILE_WriteHeader(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MetafileTypeEmfPlusOnly, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MetafileTypeEmfPlusDual, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %74

19:                                               ; preds = %13, %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = bitcast %struct.TYPE_9__** %7 to i8**
  %22 = call i32 @METAFILE_AllocateRecord(%struct.TYPE_8__* %20, i32 40, i8** %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @Ok, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %76

28:                                               ; preds = %19
  %29 = load i32, i32* @EmfPlusRecordTypeHeader, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MetafileTypeEmfPlusDual, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %46

42:                                               ; preds = %28
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* @VERSION_MAGIC2, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @TECHNOLOGY, align 4
  %52 = call i64 @GetDeviceCaps(i32 %50, i32 %51)
  %53 = load i64, i64* @DT_RASDISPLAY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  br label %61

58:                                               ; preds = %46
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @LOGPIXELSX, align 4
  %64 = call i64 @GetDeviceCaps(i32 %62, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @LOGPIXELSY, align 4
  %69 = call i64 @GetDeviceCaps(i32 %67, i32 %68)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = call i32 @METAFILE_WriteRecords(%struct.TYPE_8__* %72)
  br label %74

74:                                               ; preds = %61, %13
  %75 = load i32, i32* @Ok, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %26
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @METAFILE_AllocateRecord(%struct.TYPE_8__*, i32, i8**) #1

declare dso_local i64 @GetDeviceCaps(i32, i32) #1

declare dso_local i32 @METAFILE_WriteRecords(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

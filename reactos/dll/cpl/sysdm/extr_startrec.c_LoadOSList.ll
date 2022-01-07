; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_LoadOSList.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/sysdm/extr_startrec.c_LoadOSList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i32] [i32 92, i32 102, i32 114, i32 101, i32 101, i32 108, i32 100, i32 114, i32 46, i32 105, i32 110, i32 105, i32 0], align 4
@INF_STYLE_OLDNT = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 92, i32 98, i32 111, i32 111, i32 116, i32 46, i32 105, i32 110, i32 105, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @LoadOSList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadOSList(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %9 = call i64 @GetSystemDrive(i32** %7)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %3, align 4
  br label %92

14:                                               ; preds = %2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @wcscpy(i32 %17, i32* %18)
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wcscat(i32 %22, i8* bitcast ([13 x i32]* @.str to i8*))
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @PathFileExistsW(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %14
  %30 = call i32 (...) @GetProcessHeap()
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @HeapFree(i32 %30, i32 0, i32* %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @INF_STYLE_OLDNT, align 4
  %37 = call i64 @SetupOpenInfFileW(i32 %35, i32* null, i32 %36, i32* null)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @LoadFreeldrSettings(i64 %42, i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @SetupCloseInfFile(i64 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %3, align 4
  br label %92

50:                                               ; preds = %29
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %14
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @wcscpy(i32 %55, i32* %56)
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @wcscat(i32 %60, i8* bitcast ([10 x i32]* @.str.1 to i8*))
  %62 = call i32 (...) @GetProcessHeap()
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @HeapFree(i32 %62, i32 0, i32* %63)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @PathFileExistsW(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %52
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @INF_STYLE_OLDNT, align 4
  %75 = call i64 @SetupOpenInfFileW(i32 %73, i32* null, i32 %74, i32* null)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @LoadBootSettings(i64 %80, i32 %81)
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @SetupCloseInfFile(i64 %83)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i32 2, i32* %86, align 4
  %87 = load i32, i32* @TRUE, align 4
  store i32 %87, i32* %3, align 4
  br label %92

88:                                               ; preds = %70
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %3, align 4
  br label %92

90:                                               ; preds = %52
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %88, %79, %50, %41, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @GetSystemDrive(i32**) #1

declare dso_local i32 @wcscpy(i32, i32*) #1

declare dso_local i32 @wcscat(i32, i8*) #1

declare dso_local i64 @PathFileExistsW(i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @SetupOpenInfFileW(i32, i32*, i32, i32*) #1

declare dso_local i32 @LoadFreeldrSettings(i64, i32) #1

declare dso_local i32 @SetupCloseInfFile(i64) #1

declare dso_local i32 @LoadBootSettings(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

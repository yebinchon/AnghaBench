; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___RtlImageDirectoryEntryToData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_compat.c___RtlImageDirectoryEntryToData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @__RtlImageDirectoryEntryToData(i32* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = and i32 %18, -2
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %6, align 8
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %16, %4
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.TYPE_8__* @RtlImageNtHeader(i32* %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %10, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %5, align 8
  br label %84

29:                                               ; preds = %23
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @SWAPD(i32 %34)
  %36 = icmp uge i64 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32* null, i32** %5, align 8
  br label %84

38:                                               ; preds = %29
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @SWAPD(i32 %46)
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32* null, i32** %5, align 8
  br label %84

51:                                               ; preds = %38
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @SWAPD(i32 %59)
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %51
  %65 = load i64, i64* %11, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @SWAPD(i32 %69)
  %71 = icmp slt i64 %65, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %64, %51
  %73 = load i32*, i32** %6, align 8
  %74 = ptrtoint i32* %73 to i32
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %11, align 8
  %77 = add nsw i64 %75, %76
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %5, align 8
  br label %84

79:                                               ; preds = %64
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i32* @RtlImageRvaToVa(%struct.TYPE_8__* %80, i32* %81, i64 %82, i32* null)
  store i32* %83, i32** %5, align 8
  br label %84

84:                                               ; preds = %79, %72, %50, %37, %28
  %85 = load i32*, i32** %5, align 8
  ret i32* %85
}

declare dso_local %struct.TYPE_8__* @RtlImageNtHeader(i32*) #1

declare dso_local i64 @SWAPD(i32) #1

declare dso_local i32* @RtlImageRvaToVa(%struct.TYPE_8__*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

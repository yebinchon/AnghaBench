; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_GetKeywords.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_GetKeywords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"|KWBTREE\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"|KWDATA\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"corrupted help file: kwbtree present but kwdata absent\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @HLPFILE_GetKeywords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HLPFILE_GetKeywords(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = call i32 @HLPFILE_FindSubFile(%struct.TYPE_4__* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32** %4, i32** %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %81

12:                                               ; preds = %1
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = ptrtoint i32* %13 to i64
  %16 = ptrtoint i32* %14 to i64
  %17 = sub i64 %15, %16
  %18 = sdiv exact i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = call i32 (...) @GetProcessHeap()
  %21 = load i32, i32* %6, align 4
  %22 = call i8* @HeapAlloc(i32 %20, i32 0, i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %12
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %2, align 4
  br label %81

31:                                               ; preds = %12
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @memcpy(i8* %34, i32* %35, i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = call i32 @HLPFILE_FindSubFile(%struct.TYPE_4__* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32** %4, i32** %5)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %31
  %42 = call i32 @WINE_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 (...) @GetProcessHeap()
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @HeapFree(i32 %43, i32 0, i8* %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %2, align 4
  br label %81

49:                                               ; preds = %31
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = ptrtoint i32* %50 to i64
  %53 = ptrtoint i32* %51 to i64
  %54 = sub i64 %52, %53
  %55 = sdiv exact i64 %54, 4
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  %57 = call i32 (...) @GetProcessHeap()
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @HeapAlloc(i32 %57, i32 0, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %49
  %67 = call i32 (...) @GetProcessHeap()
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @HeapFree(i32 %67, i32 0, i8* %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %2, align 4
  br label %81

73:                                               ; preds = %49
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @memcpy(i8* %76, i32* %77, i32 %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %73, %66, %41, %29, %10
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @HLPFILE_FindSubFile(%struct.TYPE_4__*, i8*, i32**, i32**) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @WINE_ERR(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

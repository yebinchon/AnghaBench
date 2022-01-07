; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_PageByHash.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/winhlp32/extr_hlpfile.c_HLPFILE_PageByHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [10 x i8] c"<%s>[%x]\0A\00", align 1
@comp_PageByHash = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Page of hash %x not found in file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HLPFILE_PageByHash(%struct.TYPE_5__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %70

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @HLPFILE_Contents(%struct.TYPE_5__* %16, i32* %17)
  store i32* %18, i32** %4, align 8
  br label %70

19:                                               ; preds = %12
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @debugstr_a(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @WINE_TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 16
  br i1 %29, label %30, label %47

30:                                               ; preds = %19
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32* null, i32** %4, align 8
  br label %70

37:                                               ; preds = %30
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = call i32* @HLPFILE_PageByOffset(%struct.TYPE_5__* %38, i32 %44, i32* %45)
  store i32* %46, i32** %4, align 8
  br label %70

47:                                               ; preds = %19
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @LongToPtr(i64 %51)
  %53 = load i32, i32* @comp_PageByHash, align 4
  %54 = call i32* @HLPFILE_BPTreeSearch(i32 %50, i32 %52, i32 %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %47
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @debugstr_a(i32 %61)
  %63 = call i32 @WINE_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %58, i32 %62)
  store i32* null, i32** %4, align 8
  br label %70

64:                                               ; preds = %47
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @GET_UINT(i32* %66, i32 4)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32* @HLPFILE_PageByOffset(%struct.TYPE_5__* %65, i32 %67, i32* %68)
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %64, %57, %37, %36, %15, %11
  %71 = load i32*, i32** %4, align 8
  ret i32* %71
}

declare dso_local i32* @HLPFILE_Contents(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @WINE_TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32* @HLPFILE_PageByOffset(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32* @HLPFILE_BPTreeSearch(i32, i32, i32) #1

declare dso_local i32 @LongToPtr(i64) #1

declare dso_local i32 @WINE_ERR(i8*, i64, i32) #1

declare dso_local i32 @GET_UINT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

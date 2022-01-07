; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_read.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pipe.c_kull_m_pipe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i32] [i32 82, i32 101, i32 97, i32 100, i32 70, i32 105, i32 108, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pipe_read(i32 %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32**, i32*** %5, align 8
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %60, %3
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 2048
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @LPTR, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @LocalAlloc(i32 %26, i32 %27)
  %29 = inttoptr i64 %28 to i32*
  %30 = load i32**, i32*** %5, align 8
  store i32* %29, i32** %30, align 8
  %31 = icmp ne i32* %29, null
  br i1 %31, label %32, label %59

32:                                               ; preds = %23
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @RtlCopyMemory(i32* %37, i32* %38, i32 %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @LocalFree(i32* %41)
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %10, align 8
  br label %44

44:                                               ; preds = %35, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = call i32 @ReadFile(i32 %45, i32* %50, i32 2048, i32* %8, i32* null)
  store i32 %51, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32*, i32** %6, align 8
  store i32 %56, i32* %57, align 4
  br label %64

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %23
  br label %60

60:                                               ; preds = %59
  %61 = call i64 (...) @GetLastError()
  %62 = load i64, i64* @ERROR_MORE_DATA, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %15, label %64

64:                                               ; preds = %60, %53
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %64
  %68 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([9 x i32]* @.str to i8*))
  %69 = load i32**, i32*** %5, align 8
  %70 = load i32*, i32** %69, align 8
  %71 = call i64 @LocalFree(i32* %70)
  %72 = inttoptr i64 %71 to i32*
  %73 = load i32**, i32*** %5, align 8
  store i32* %72, i32** %73, align 8
  %74 = load i32*, i32** %6, align 8
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #1

declare dso_local i64 @LocalFree(i32*) #1

declare dso_local i32 @ReadFile(i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_getAbsolutePathOf.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_getAbsolutePathOf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_file_getAbsolutePathOf(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @LPTR, align 4
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = call i64 @LocalAlloc(i32 %8, i32 %12)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32**, i32*** %4, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @PathIsRelative(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = call i64 @kull_m_file_getCurrentDirectory(i32** %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32**, i32*** %4, align 8
  %24 = load i32*, i32** %23, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32* @PathCombine(i32* %24, i32* %25, i32 %26)
  %28 = icmp ne i32* %27, null
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %5, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @LocalFree(i32* %30)
  br label %32

32:                                               ; preds = %22, %19
  br label %38

33:                                               ; preds = %2
  %34 = load i32**, i32*** %4, align 8
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @PathCanonicalize(i32* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32**, i32*** %4, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @LocalFree(i32* %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @PathIsRelative(i32) #1

declare dso_local i64 @kull_m_file_getCurrentDirectory(i32**) #1

declare dso_local i32* @PathCombine(i32*, i32*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i32 @PathCanonicalize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

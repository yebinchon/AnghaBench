; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_getCurrentDirectory.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_getCurrentDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_file_getCurrentDirectory(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %3, align 4
  %6 = call i32 @GetCurrentDirectory(i32 0, i32* null)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @LPTR, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = call i64 @LocalAlloc(i32 %7, i32 %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32**, i32*** %2, align 8
  store i32* %13, i32** %14, align 8
  %15 = icmp ne i32* %13, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = load i32**, i32*** %2, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @GetCurrentDirectory(i32 %20, i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br label %27

27:                                               ; preds = %19, %16
  %28 = phi i1 [ false, %16 ], [ %26, %19 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %3, align 4
  br i1 %28, label %34, label %30

30:                                               ; preds = %27
  %31 = load i32**, i32*** %2, align 8
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @LocalFree(i32* %32)
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @GetCurrentDirectory(i32, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

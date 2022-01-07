; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_fullPath.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_file.c_kull_m_file_fullPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kull_m_file_fullPath(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @ExpandEnvironmentStrings(i64 %8, i32* null, i32 0)
  store i32 %9, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i32, i32* @LPTR, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = trunc i64 %15 to i32
  %17 = call i64 @LocalAlloc(i32 %12, i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %3, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = load i64, i64* %2, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ExpandEnvironmentStrings(i64 %22, i32* %23, i32 %24)
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32*, i32** %3, align 8
  %29 = call i64 @LocalFree(i32* %28)
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %27, %20
  br label %32

32:                                               ; preds = %31, %11
  br label %33

33:                                               ; preds = %32, %7
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @ExpandEnvironmentStrings(i64, i32*, i32) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_unicode_to_ansi.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_string.c_kull_m_string_unicode_to_ansi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@WC_COMPOSITECHECK = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kull_m_string_unicode_to_ansi(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i8* null, i8** %4, align 8
  %5 = load i32, i32* @CP_ACP, align 4
  %6 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @WideCharToMultiByte(i32 %5, i32 %6, i32* %7, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32, i32* @LPTR, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @LocalAlloc(i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CP_ACP, align 4
  %19 = load i32, i32* @WC_COMPOSITECHECK, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @WideCharToMultiByte(i32 %18, i32 %19, i32* %20, i32 -1, i8* %21, i32 %22, i32* null, i32* null)
  %24 = icmp ne i32 %17, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @LocalFree(i8* %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %4, align 8
  br label %29

29:                                               ; preds = %25, %16
  br label %30

30:                                               ; preds = %29, %10
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i8*, i8** %4, align 8
  ret i8* %32
}

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i64 @LocalAlloc(i32, i32) #1

declare dso_local i64 @LocalFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

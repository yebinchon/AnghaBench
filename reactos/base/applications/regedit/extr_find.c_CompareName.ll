; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_CompareName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_find.c_CompareName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s_dwFlags = common dso_local global i32 0, align 4
@RSF_WHOLESTRING = common dso_local global i32 0, align 4
@RSF_MATCHCASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @CompareName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompareName(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @s_dwFlags, align 4
  %7 = load i32, i32* @RSF_WHOLESTRING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @s_dwFlags, align 4
  %12 = load i32, i32* @RSF_MATCHCASE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @wcscmp(i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %10
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @_wcsicmp(i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %2
  %28 = load i32, i32* @s_dwFlags, align 4
  %29 = load i32, i32* @RSF_MATCHCASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @wcsstr(i32 %33, i32 %34)
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @lstrstri(i32 %39, i32 %40)
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %32, %21, %15
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @wcscmp(i32, i32) #1

declare dso_local i64 @_wcsicmp(i32, i32) #1

declare dso_local i32* @wcsstr(i32, i32) #1

declare dso_local i32* @lstrstri(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

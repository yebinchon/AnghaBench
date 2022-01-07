; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_DuplicateStringWEx.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/msconfig_new/extr_stringutils.c_DuplicateStringWEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DuplicateStringWEx(i32 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @wcslen(i32 %12)
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @min(i32 %13, i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 %17, 4
  %19 = call i64 @MemAlloc(i32 0, i64 %18)
  %20 = inttoptr i64 %19 to i32*
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  store i32* null, i32** %3, align 8
  br label %35

24:                                               ; preds = %11
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, 1
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @StringCchCopyNW(i32* %25, i64 %27, i32 %28, i64 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 0, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %35

35:                                               ; preds = %24, %23, %10
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i64 @MemAlloc(i32, i64) #1

declare dso_local i32 @StringCchCopyNW(i32*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

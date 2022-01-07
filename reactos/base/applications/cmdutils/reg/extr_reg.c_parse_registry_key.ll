; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_parse_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_reg.c_parse_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@STRING_INVALID_SYSTEM_KEY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_registry_key(i64* %0, i32* %1, i64** %2, i64** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i64**, align 8
  store i64* %0, i64** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i64** %3, i64*** %9, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = call i32 @sane_path(i64* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %5, align 4
  br label %54

15:                                               ; preds = %4
  %16 = load i64*, i64** %6, align 8
  %17 = call i64* @strchrW(i64* %16, i8 signext 92)
  %18 = load i64**, i64*** %8, align 8
  store i64* %17, i64** %18, align 8
  %19 = load i64**, i64*** %8, align 8
  %20 = load i64*, i64** %19, align 8
  %21 = icmp ne i64* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i64**, i64*** %8, align 8
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i32 1
  store i64* %25, i64** %23, align 8
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i64*, i64** %6, align 8
  %28 = call i32 @path_get_rootkey(i64* %27)
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %26
  %34 = load i64**, i64*** %8, align 8
  %35 = load i64*, i64** %34, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i64**, i64*** %8, align 8
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 -1
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @STRING_INVALID_SYSTEM_KEY, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = call i32 @output_message(i32 %42, i64* %43)
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %26
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i64**, i64*** %8, align 8
  %50 = load i64*, i64** %49, align 8
  %51 = call i64* @get_long_key(i32 %48, i64* %50)
  %52 = load i64**, i64*** %9, align 8
  store i64* %51, i64** %52, align 8
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %41, %13
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @sane_path(i64*) #1

declare dso_local i64* @strchrW(i64*, i8 signext) #1

declare dso_local i32 @path_get_rootkey(i64*) #1

declare dso_local i32 @output_message(i32, i64*) #1

declare dso_local i64* @get_long_key(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

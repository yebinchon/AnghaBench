; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-windows.c_get_code_page_for_font.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font-windows.c_get_code_page_for_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TT_MAC_LANGID_ANY = common dso_local global i32 0, align 4
@iso_code_count = common dso_local global i32 0, align 4
@iso_codes = common dso_local global i32* null, align 8
@ms_code_count = common dso_local global i32 0, align 4
@ms_codes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_code_page_for_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_code_page_for_font(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %45 [
    i32 131, label %10
    i32 129, label %11
    i32 130, label %23
    i32 128, label %34
  ]

10:                                               ; preds = %3
  store i32 1201, i32* %4, align 4
  br label %46

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @get_mac_code(i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TT_MAC_LANGID_ANY, align 4
  %20 = call i32 @get_mac_code(i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %46

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @iso_code_count, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32*, i32** @iso_codes, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %46

33:                                               ; preds = %23
  br label %45

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @ms_code_count, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** @ms_codes, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %3, %44, %33
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %38, %27, %21, %10
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @get_mac_code(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

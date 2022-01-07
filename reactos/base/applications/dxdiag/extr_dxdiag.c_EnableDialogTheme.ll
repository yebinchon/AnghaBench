; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_dxdiag.c_EnableDialogTheme.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/dxdiag/extr_dxdiag.c_EnableDialogTheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"uxtheme.dll\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"EnableThemeDialogTexture\00", align 1
@ETDT_ENABLETAB = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EnableDialogTheme(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32 (i32, i32)*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @GetProcAddress(i64 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %12 = inttoptr i64 %11 to i32 (i32, i32)*
  store i32 (i32, i32)* %12, i32 (i32, i32)** %5, align 8
  %13 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %14 = icmp ne i32 (i32, i32)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ETDT_ENABLETAB, align 4
  %19 = call i32 %16(i32 %17, i32 %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @FreeLibrary(i64 %20)
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %9
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @FreeLibrary(i64 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %23, %15
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @FreeLibrary(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

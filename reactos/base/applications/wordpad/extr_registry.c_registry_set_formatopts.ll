; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_set_formatopts.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/wordpad/extr_registry.c_registry_set_formatopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@var_barstate0 = common dso_local global i32 0, align 4
@REG_DWORD = common dso_local global i32 0, align 4
@var_wrap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @registry_set_formatopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @registry_set_formatopts(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i64 @registry_get_handle(i32* %9, i32* %10, i32 %11)
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @var_barstate0, align 4
  %18 = load i32, i32* @REG_DWORD, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 @RegSetValueExW(i32 %16, i32 %17, i32 0, i32 %18, i32 %23, i32 4)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @var_wrap, align 4
  %27 = load i32, i32* @REG_DWORD, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = ptrtoint i32* %31 to i32
  %33 = call i32 @RegSetValueExW(i32 %25, i32 %26, i32 0, i32 %27, i32 %32, i32 4)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @RegCloseKey(i32 %34)
  br label %36

36:                                               ; preds = %15, %4
  ret void
}

declare dso_local i64 @registry_get_handle(i32*, i32*, i32) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

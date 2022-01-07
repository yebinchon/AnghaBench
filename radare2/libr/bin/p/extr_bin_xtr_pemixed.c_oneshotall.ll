; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_pemixed.c_oneshotall.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_bin_xtr_pemixed.c_oneshotall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUB_BIN_DOS = common dso_local global i32 0, align 4
@r_bin_xtrdata_free = common dso_local global i32 0, align 4
@SUB_BIN_NATIVE = common dso_local global i32 0, align 4
@SUB_BIN_NET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32)* @oneshotall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @oneshotall(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SUB_BIN_DOS, align 4
  %14 = call i32* @oneshot(i32* %10, i32* %11, i32 %12, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load i32, i32* @r_bin_xtrdata_free, align 4
  %20 = call i32* @r_list_newf(i32 %19)
  store i32* %20, i32** %9, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @r_list_append(i32* %21, i32* %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @SUB_BIN_NATIVE, align 4
  %28 = call i32* @oneshot(i32* %24, i32* %25, i32 %26, i32 %27)
  store i32* %28, i32** %8, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32*, i32** %9, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @r_list_append(i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %30, %18
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SUB_BIN_NET, align 4
  %39 = call i32* @oneshot(i32* %35, i32* %36, i32 %37, i32 %38)
  store i32* %39, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @r_list_append(i32* %42, i32* %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i32*, i32** %9, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %45, %17
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32* @oneshot(i32*, i32*, i32, i32) #1

declare dso_local i32* @r_list_newf(i32) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_isolated_shell_name.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_misc1.c_get_isolated_shell_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_sh = common dso_local global i64* null, align 8
@NUL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64* @get_isolated_shell_name() #0 {
  %1 = alloca i64*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = load i64*, i64** @p_sh, align 8
  %5 = call i64* @skiptowhite(i64* %4)
  store i64* %5, i64** %1, align 8
  %6 = load i64*, i64** %1, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NUL, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i64*, i64** @p_sh, align 8
  %12 = call i64* @gettail(i64* %11)
  %13 = call i64* @vim_strsave(i64* %12)
  store i64* %13, i64** %1, align 8
  br label %43

14:                                               ; preds = %0
  %15 = load i64*, i64** @p_sh, align 8
  store i64* %15, i64** %2, align 8
  %16 = load i64*, i64** @p_sh, align 8
  store i64* %16, i64** %3, align 8
  br label %17

17:                                               ; preds = %30, %14
  %18 = load i64*, i64** %3, align 8
  %19 = load i64*, i64** %1, align 8
  %20 = icmp ult i64* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load i64*, i64** %3, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @vim_ispathsep(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64*, i64** %3, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 1
  store i64* %28, i64** %2, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %29
  %31 = load i64*, i64** %3, align 8
  %32 = call i32 @mb_ptr_adv(i64* %31)
  br label %17

33:                                               ; preds = %17
  %34 = load i64*, i64** %2, align 8
  %35 = load i64*, i64** %1, align 8
  %36 = load i64*, i64** %2, align 8
  %37 = ptrtoint i64* %35 to i64
  %38 = ptrtoint i64* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i64* @vim_strnsave(i64* %34, i32 %41)
  store i64* %42, i64** %1, align 8
  br label %43

43:                                               ; preds = %33, %10
  %44 = load i64*, i64** %1, align 8
  ret i64* %44
}

declare dso_local i64* @skiptowhite(i64*) #1

declare dso_local i64* @vim_strsave(i64*) #1

declare dso_local i64* @gettail(i64*) #1

declare dso_local i64 @vim_ispathsep(i64) #1

declare dso_local i32 @mb_ptr_adv(i64*) #1

declare dso_local i64* @vim_strnsave(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

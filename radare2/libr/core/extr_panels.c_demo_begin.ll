; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_demo_begin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_panels.c_demo_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @demo_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_begin(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i8* @r_cons_canvas_to_string(i32* %11)
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @r_str_ansi_filter(i8* %16, i32* null, i32* null, i32 -1)
  %18 = call i32 @r_cons_get_size(i32* %7)
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %47, %15
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 40
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = sitofp i32 %23 to double
  %25 = load i32, i32* %7, align 4
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 4.000000e+01
  %28 = fmul double %24, %27
  %29 = fptosi double %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i8* @r_str_scale(i8* %30, i32 %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = call i32 (...) @r_cons_clear00()
  %35 = load i32, i32* %7, align 4
  %36 = sdiv i32 %35, 2
  %37 = load i32, i32* %9, align 4
  %38 = sdiv i32 %37, 2
  %39 = sub nsw i32 %36, %38
  %40 = call i32 @r_cons_gotoxy(i32 0, i32 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @r_cons_strcat(i8* %41)
  %43 = call i32 (...) @r_cons_flush()
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  %46 = call i32 @r_sys_usleep(i32 3000)
  br label %47

47:                                               ; preds = %22
  %48 = load i32, i32* %6, align 4
  %49 = sdiv i32 %48, 30
  %50 = add nsw i32 1, %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @free(i8* %54)
  br label %56

56:                                               ; preds = %53, %2
  ret void
}

declare dso_local i8* @r_cons_canvas_to_string(i32*) #1

declare dso_local i32 @r_str_ansi_filter(i8*, i32*, i32*, i32) #1

declare dso_local i32 @r_cons_get_size(i32*) #1

declare dso_local i8* @r_str_scale(i8*, i32, i32) #1

declare dso_local i32 @r_cons_clear00(...) #1

declare dso_local i32 @r_cons_gotoxy(i32, i32) #1

declare dso_local i32 @r_cons_strcat(i8*) #1

declare dso_local i32 @r_cons_flush(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @r_sys_usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

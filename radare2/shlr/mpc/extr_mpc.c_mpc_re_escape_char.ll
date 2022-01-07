; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_re_escape_char.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_re_escape_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mpcf_snd = common dso_local global i32 0, align 4
@mpcf_ctor_str = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8)* @mpc_re_escape_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mpc_re_escape_char(i8 signext %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  switch i32 %5, label %65 [
    i32 97, label %6
    i32 102, label %8
    i32 110, label %10
    i32 114, label %12
    i32 116, label %14
    i32 118, label %16
    i32 98, label %18
    i32 66, label %25
    i32 65, label %30
    i32 90, label %37
    i32 100, label %44
    i32 68, label %46
    i32 115, label %51
    i32 83, label %53
    i32 119, label %58
    i32 87, label %60
  ]

6:                                                ; preds = %1
  %7 = call i32* @mpc_char(i8 signext 7)
  store i32* %7, i32** %2, align 8
  br label %66

8:                                                ; preds = %1
  %9 = call i32* @mpc_char(i8 signext 12)
  store i32* %9, i32** %2, align 8
  br label %66

10:                                               ; preds = %1
  %11 = call i32* @mpc_char(i8 signext 10)
  store i32* %11, i32** %2, align 8
  br label %66

12:                                               ; preds = %1
  %13 = call i32* @mpc_char(i8 signext 13)
  store i32* %13, i32** %2, align 8
  br label %66

14:                                               ; preds = %1
  %15 = call i32* @mpc_char(i8 signext 9)
  store i32* %15, i32** %2, align 8
  br label %66

16:                                               ; preds = %1
  %17 = call i32* @mpc_char(i8 signext 11)
  store i32* %17, i32** %2, align 8
  br label %66

18:                                               ; preds = %1
  %19 = load i32, i32* @mpcf_snd, align 4
  %20 = call i32* (...) @mpc_boundary()
  %21 = load i32, i32* @mpcf_ctor_str, align 4
  %22 = call i32 @mpc_lift(i32 %21)
  %23 = load i32, i32* @free, align 4
  %24 = call i32* @mpc_and(i32 2, i32 %19, i32* %20, i32 %22, i32 %23)
  store i32* %24, i32** %2, align 8
  br label %66

25:                                               ; preds = %1
  %26 = call i32* (...) @mpc_boundary()
  %27 = load i32, i32* @free, align 4
  %28 = load i32, i32* @mpcf_ctor_str, align 4
  %29 = call i32* @mpc_not_lift(i32* %26, i32 %27, i32 %28)
  store i32* %29, i32** %2, align 8
  br label %66

30:                                               ; preds = %1
  %31 = load i32, i32* @mpcf_snd, align 4
  %32 = call i32* (...) @mpc_soi()
  %33 = load i32, i32* @mpcf_ctor_str, align 4
  %34 = call i32 @mpc_lift(i32 %33)
  %35 = load i32, i32* @free, align 4
  %36 = call i32* @mpc_and(i32 2, i32 %31, i32* %32, i32 %34, i32 %35)
  store i32* %36, i32** %2, align 8
  br label %66

37:                                               ; preds = %1
  %38 = load i32, i32* @mpcf_snd, align 4
  %39 = call i32* (...) @mpc_eoi()
  %40 = load i32, i32* @mpcf_ctor_str, align 4
  %41 = call i32 @mpc_lift(i32 %40)
  %42 = load i32, i32* @free, align 4
  %43 = call i32* @mpc_and(i32 2, i32 %38, i32* %39, i32 %41, i32 %42)
  store i32* %43, i32** %2, align 8
  br label %66

44:                                               ; preds = %1
  %45 = call i32* (...) @mpc_digit()
  store i32* %45, i32** %2, align 8
  br label %66

46:                                               ; preds = %1
  %47 = call i32* (...) @mpc_digit()
  %48 = load i32, i32* @free, align 4
  %49 = load i32, i32* @mpcf_ctor_str, align 4
  %50 = call i32* @mpc_not_lift(i32* %47, i32 %48, i32 %49)
  store i32* %50, i32** %2, align 8
  br label %66

51:                                               ; preds = %1
  %52 = call i32* (...) @mpc_whitespace()
  store i32* %52, i32** %2, align 8
  br label %66

53:                                               ; preds = %1
  %54 = call i32* (...) @mpc_whitespace()
  %55 = load i32, i32* @free, align 4
  %56 = load i32, i32* @mpcf_ctor_str, align 4
  %57 = call i32* @mpc_not_lift(i32* %54, i32 %55, i32 %56)
  store i32* %57, i32** %2, align 8
  br label %66

58:                                               ; preds = %1
  %59 = call i32* (...) @mpc_alphanum()
  store i32* %59, i32** %2, align 8
  br label %66

60:                                               ; preds = %1
  %61 = call i32* (...) @mpc_alphanum()
  %62 = load i32, i32* @free, align 4
  %63 = load i32, i32* @mpcf_ctor_str, align 4
  %64 = call i32* @mpc_not_lift(i32* %61, i32 %62, i32 %63)
  store i32* %64, i32** %2, align 8
  br label %66

65:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %66

66:                                               ; preds = %65, %60, %58, %53, %51, %46, %44, %37, %30, %25, %18, %16, %14, %12, %10, %8, %6
  %67 = load i32*, i32** %2, align 8
  ret i32* %67
}

declare dso_local i32* @mpc_char(i8 signext) #1

declare dso_local i32* @mpc_and(i32, i32, i32*, i32, i32) #1

declare dso_local i32* @mpc_boundary(...) #1

declare dso_local i32 @mpc_lift(i32) #1

declare dso_local i32* @mpc_not_lift(i32*, i32, i32) #1

declare dso_local i32* @mpc_soi(...) #1

declare dso_local i32* @mpc_eoi(...) #1

declare dso_local i32* @mpc_digit(...) #1

declare dso_local i32* @mpc_whitespace(...) #1

declare dso_local i32* @mpc_alphanum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

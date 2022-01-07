; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_jsstr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsstr_cmp(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @jsstr_length(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @jsstr_length(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32* @jsstr_try_flat(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  %24 = call i32 @jsstr_cmp_str(i32* %19, i32* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %9, align 4
  br label %34

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ -1, %33 ]
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = call i32* @jsstr_try_flat(i32* %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @min(i32 %44, i32 %45)
  %47 = call i32 @jsstr_cmp_str(i32* %42, i32* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %9, align 4
  %56 = sub nsw i32 0, %55
  br label %58

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 1, %57 ]
  store i32 %59, i32* %3, align 4
  br label %66

60:                                               ; preds = %36
  %61 = load i32*, i32** %4, align 8
  %62 = call i32 @jsstr_as_rope(i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @jsstr_as_rope(i32* %63)
  %65 = call i32 @ropes_cmp(i32 %62, i32 %64)
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %58, %34
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @jsstr_length(i32*) #1

declare dso_local i32* @jsstr_try_flat(i32*) #1

declare dso_local i32 @jsstr_cmp_str(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ropes_cmp(i32, i32) #1

declare dso_local i32 @jsstr_as_rope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

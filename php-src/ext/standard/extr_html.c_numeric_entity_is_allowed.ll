; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_numeric_entity_is_allowed.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_numeric_entity_is_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @numeric_entity_is_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numeric_entity_is_allowed(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %53 [
    i32 131, label %7
    i32 130, label %11
    i32 129, label %49
    i32 128, label %49
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp ule i32 %8, 1114111
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %3, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp uge i32 %12, 32
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp ule i32 %15, 126
  br i1 %16, label %46, label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %4, align 4
  %19 = icmp uge i32 %18, 9
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = icmp ule i32 %21, 12
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 11
  br i1 %25, label %46, label %26

26:                                               ; preds = %23, %20, %17
  %27 = load i32, i32* %4, align 4
  %28 = icmp uge i32 %27, 160
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = icmp ule i32 %30, 1114111
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 65535
  %35 = icmp ult i32 %34, 65534
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp ult i32 %37, 64976
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp ugt i32 %40, 65007
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ true, %36 ], [ %41, %39 ]
  br label %44

44:                                               ; preds = %42, %32, %29, %26
  %45 = phi i1 [ false, %32 ], [ false, %29 ], [ false, %26 ], [ %43, %42 ]
  br label %46

46:                                               ; preds = %44, %23, %14
  %47 = phi i1 [ true, %23 ], [ true, %14 ], [ %45, %44 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %2, %2
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @unicode_cp_is_allowed(i32 %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %49, %46, %7
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @unicode_cp_is_allowed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

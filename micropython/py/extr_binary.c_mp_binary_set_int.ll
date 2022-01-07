; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_set_int.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_binary.c_mp_binary_set_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_ENDIANNESS_LITTLE = common dso_local global i64 0, align 8
@MP_ENDIANNESS_BIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_binary_set_int(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @MP_ENDIANNESS_LITTLE, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @memcpy(i32* %16, i32* %8, i64 %17)
  br label %54

19:                                               ; preds = %12, %4
  %20 = load i64, i64* @MP_ENDIANNESS_BIG, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %8, i64 4
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @memcpy(i32* %26, i32* %30, i64 %31)
  br label %53

33:                                               ; preds = %22, %19
  %34 = load i64, i64* @MP_ENDIANNESS_LITTLE, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i32, i32* %8, i64 %37
  store i32* %38, i32** %9, align 8
  br label %41

39:                                               ; preds = %33
  %40 = getelementptr inbounds i32, i32* %8, i64 4
  store i32* %40, i32** %9, align 8
  br label %41

41:                                               ; preds = %39, %36
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %5, align 8
  %45 = icmp ne i64 %43, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 -1
  store i32* %48, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %42

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %25
  br label %54

54:                                               ; preds = %53, %15
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

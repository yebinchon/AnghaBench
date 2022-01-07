; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_get_utf8.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/snowball/libstemmer/extr_utilities.c_get_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @get_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_utf8(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %96

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 192
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  store i32 1, i32* %5, align 4
  br label %96

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 63
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 224
  br i1 %42, label %47, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %33
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 31
  %50 = shl i32 %49, 6
  %51 = load i32, i32* %11, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32 2, i32* %5, align 4
  br label %96

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 63
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 240
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64, %54
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 15
  %71 = shl i32 %70, 12
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 %72, 6
  %74 = or i32 %71, %73
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %74, %75
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  store i32 3, i32* %5, align 4
  br label %96

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 14
  %81 = shl i32 %80, 18
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 12
  %84 = or i32 %81, %83
  %85 = load i32, i32* %12, align 4
  %86 = shl i32 %85, 6
  %87 = or i32 %84, %86
  %88 = load i32*, i32** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 63
  %94 = or i32 %87, %93
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  store i32 4, i32* %5, align 4
  br label %96

96:                                               ; preds = %78, %68, %47, %30, %16
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

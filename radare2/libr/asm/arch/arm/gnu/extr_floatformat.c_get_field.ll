; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_get_field.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/gnu/extr_floatformat.c_get_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floatformat_little = common dso_local global i32 0, align 4
@FLOATFORMAT_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i32, i32)* @get_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_field(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @floatformat_little, align 4
  %22 = icmp eq i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 -1
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %26, %27
  %29 = sub i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @floatformat_little, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %36 = udiv i32 %34, %35
  store i32 %36, i32* %12, align 4
  br label %44

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub i32 %38, %39
  %41 = sub i32 %40, 1
  %42 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %43 = udiv i32 %41, %42
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %47 = urem i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add i32 %48, %49
  %51 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %88, %44
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i32, i32* %13, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %13, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = shl i32 1, %65
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %19, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %15, align 4
  %72 = shl i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = load i64, i64* %11, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %11, align 8
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %15, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @FLOATFORMAT_CHAR_BIT, align 4
  %87 = call i32 @min(i32 %85, i32 %86)
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %53
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %53, label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %11, align 8
  ret i64 %92
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

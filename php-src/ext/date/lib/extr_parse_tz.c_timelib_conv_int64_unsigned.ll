; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_tz.c_timelib_conv_int64_unsigned.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_tz.c_timelib_conv_int64_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @timelib_conv_int64_unsigned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timelib_conv_int64_unsigned(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 255
  %5 = shl i32 %4, 56
  %6 = load i32, i32* %2, align 4
  %7 = and i32 %6, 65280
  %8 = shl i32 %7, 40
  %9 = add nsw i32 %5, %8
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, 16711680
  %12 = shl i32 %11, 24
  %13 = add nsw i32 %9, %12
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, -16777216
  %16 = shl i32 %15, 8
  %17 = add i32 %13, %16
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 1095216660480
  %22 = ashr i64 %21, 8
  %23 = add nsw i64 %18, %22
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 280375465082880
  %27 = ashr i64 %26, 24
  %28 = add nsw i64 %23, %27
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = and i64 %30, 71776119061217280
  %32 = ashr i64 %31, 40
  %33 = add nsw i64 %28, %32
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = and i64 %35, -72057594037927936
  %37 = lshr i64 %36, 56
  %38 = add i64 %33, %37
  %39 = trunc i64 %38 to i32
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

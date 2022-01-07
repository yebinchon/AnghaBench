; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_read_multiple_bytes.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/extr_flirt.c_read_multiple_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @read_multiple_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_multiple_bytes(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @read_byte(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 128
  %9 = icmp ne i32 %8, 128
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 192
  %15 = icmp ne i32 %14, 192
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 127
  %19 = shl i32 %18, 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @read_byte(i32* %20)
  %22 = add nsw i32 %19, %21
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 224
  %26 = icmp ne i32 %25, 224
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 63
  %30 = shl i32 %29, 24
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @read_byte(i32* %31)
  %33 = shl i32 %32, 16
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @read_short(i32* %35)
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %23
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @read_word(i32* %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %27, %16, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @read_byte(i32*) #1

declare dso_local i64 @read_short(i32*) #1

declare dso_local i32 @read_word(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

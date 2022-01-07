; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_r_asm_pseudo_byte.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_r_asm_pseudo_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @r_asm_pseudo_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_asm_pseudo_byte(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @r_str_replace_char(i8* %11, i8 signext 44, i8 signext 32)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @r_str_word_count(i8* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @r_str_word_set0(i8* %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32* @malloc(i32 %17)
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @r_str_word_get0(i8* %28, i32 %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @r_num_math(i32* null, i8* %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @r_asm_op_set_buf(i32* %43, i32* %44, i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %42, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @r_str_word_count(i8*) #1

declare dso_local i32 @r_str_word_set0(i8*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i64 @r_num_math(i32*, i8*) #1

declare dso_local i32 @r_asm_op_set_buf(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

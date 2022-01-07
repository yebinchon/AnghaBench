; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_r_asm_pseudo_incbin.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_r_asm_pseudo_incbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @r_asm_pseudo_incbin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_asm_pseudo_incbin(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @r_str_replace_char(i8* %9, i8 signext 44, i8 signext 32)
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @r_str_word_set0(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @r_str_word_get0(i8* %13, i32 1)
  %15 = call i64 @r_num_math(i32* null, i32 %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @r_str_word_get0(i8* %17, i32 2)
  %19 = call i64 @r_num_math(i32* null, i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @r_file_slurp(i8* %21, i32* %5)
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 0, %42 ], [ %44, %43 ]
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @r_buf_free(i32 %52)
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = call i32 @r_buf_new_with_string(i8* %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @free(i8* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @r_str_replace_char(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @r_str_word_set0(i8*) #1

declare dso_local i64 @r_num_math(i32*, i32) #1

declare dso_local i32 @r_str_word_get0(i8*, i32) #1

declare dso_local i8* @r_file_slurp(i8*, i32*) #1

declare dso_local i32 @r_buf_free(i32) #1

declare dso_local i32 @r_buf_new_with_string(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

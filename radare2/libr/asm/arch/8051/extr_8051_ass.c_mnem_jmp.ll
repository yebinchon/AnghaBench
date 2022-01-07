; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_jmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_jmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"@a+dptr\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[a+dptr]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i32**)* @mnem_jmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnem_jmp(i8** %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @str_iwhitecasecmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @str_iwhitecasecmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %3
  %22 = load i32**, i32*** %7, align 8
  %23 = call i32 @single_byte_instr(i32 115, i32** %22)
  store i32 %23, i32* %4, align 4
  br label %64

24:                                               ; preds = %15
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @to_address(i8* %27, i64* %8)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %64

31:                                               ; preds = %24
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %9, align 8
  br label %43

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %8, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* %9, align 8
  %45 = icmp slt i64 %44, 256
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = call i32 @mnem_sjmp(i8** %47, i64 %48, i32** %49)
  store i32 %50, i32* %4, align 4
  br label %64

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %52, 2303
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8**, i8*** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i32**, i32*** %7, align 8
  %58 = call i32 @mnem_ajmp(i8** %55, i64 %56, i32** %57)
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %51
  %60 = load i8**, i8*** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i32**, i32*** %7, align 8
  %63 = call i32 @mnem_ljmp(i8** %60, i64 %61, i32** %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %54, %46, %30, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @str_iwhitecasecmp(i8*, i8*) #1

declare dso_local i32 @single_byte_instr(i32, i32**) #1

declare dso_local i32 @to_address(i8*, i64*) #1

declare dso_local i32 @mnem_sjmp(i8**, i64, i32**) #1

declare dso_local i32 @mnem_ajmp(i8**, i64, i32**) #1

declare dso_local i32 @mnem_ljmp(i8**, i64, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

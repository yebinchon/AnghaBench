; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_subb.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_mnem_subb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, i32**)* @mnem_subb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnem_subb(i8** %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @r_str_casecmp(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

14:                                               ; preds = %3
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @is_indirect_reg(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i32**, i32*** %7, align 8
  %25 = call i32 @singlearg_register(i32 150, i8* %23, i32** %24)
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %14
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 35
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32**, i32*** %7, align 8
  %39 = call i32 @singlearg_immediate(i32 148, i8* %37, i32** %38)
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @is_reg(i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32**, i32*** %7, align 8
  %51 = call i32 @singlearg_register(i32 152, i8* %49, i32** %50)
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %40
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32**, i32*** %7, align 8
  %57 = call i32 @singlearg_direct(i32 149, i8* %55, i32** %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %52, %46, %34, %20, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i64 @r_str_casecmp(i8*, i8*) #1

declare dso_local i64 @is_indirect_reg(i8*) #1

declare dso_local i32 @singlearg_register(i32, i8*, i32**) #1

declare dso_local i32 @singlearg_immediate(i32, i8*, i32**) #1

declare dso_local i64 @is_reg(i8*) #1

declare dso_local i32 @singlearg_direct(i32, i8*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

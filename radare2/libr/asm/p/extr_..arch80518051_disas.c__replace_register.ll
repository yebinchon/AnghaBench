; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..arch80518051_disas.c__replace_register.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..arch80518051_disas.c__replace_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_DIRECT = common dso_local global i64 0, align 8
@_8051_regs = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [8 x i8] c" 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@A_BIT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x.\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64)* @_replace_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_replace_register(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @A_DIRECT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load i8**, i8*** @_8051_regs, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i8*, i8** %13, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %20 = load i64, i64* %6, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %24 = load i8**, i8*** @_8051_regs, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %32 = call i8* @r_str_replace(i8* %29, i8* %30, i8* %31, i32 0)
  store i8* %32, i8** %4, align 8
  br label %33

33:                                               ; preds = %18, %12
  br label %63

34:                                               ; preds = %3
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @A_BIT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @arg_bit(i64 %39)
  store i64 %40, i64* %6, align 8
  %41 = load i8**, i8*** @_8051_regs, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %61

46:                                               ; preds = %38
  %47 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %48 = load i64, i64* %6, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %52 = load i8**, i8*** @_8051_regs, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0
  %60 = call i8* @r_str_replace(i8* %57, i8* %58, i8* %59, i32 0)
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %46, %38
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %33
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i8* @r_str_replace(i8*, i8*, i8*, i32) #1

declare dso_local i64 @arg_bit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

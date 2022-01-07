; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/gb/extr_gbasm.c_gb_parse_arith1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/gb/extr_gbasm.c_gb_parse_arith1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@str_op = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"[hl]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32)* @gb_parse_arith1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_parse_arith1(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %84

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  store i8* %28, i8** %14, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @strlen(i8* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i8*, i8** %14, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @r_str_replace_in(i8* %31, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @r_str_replace_in(i8* %34, i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %37 = load i32, i32* @str_op, align 4
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @r_str_do_until_token(i32 %37, i8* %38, i8 signext 32)
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @gb_reg_idx(i8 signext %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, -1
  br i1 %48, label %49, label %55

49:                                               ; preds = %20
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %83

55:                                               ; preds = %20
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 6
  store i32 %67, i32* %65, align 4
  br label %82

68:                                               ; preds = %55
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = getelementptr inbounds i8, i8* %75, i64 -1
  %77 = call i32 @r_num_get(i32* null, i8* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = and i32 %78, 255
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %79, i32* %81, align 4
  store i32 2, i32* %6, align 4
  br label %84

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %49
  store i32 1, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %68, %19
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_str_replace_in(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @r_str_do_until_token(i32, i8*, i8 signext) #1

declare dso_local i32 @gb_reg_idx(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @r_num_get(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

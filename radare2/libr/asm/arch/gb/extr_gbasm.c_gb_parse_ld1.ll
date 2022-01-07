; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/gb/extr_gbasm.c_gb_parse_ld1.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/gb/extr_gbasm.c_gb_parse_ld1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@str_op = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"[hl],\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @gb_parse_ld1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_parse_ld1(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = call i32 @r_str_replace_in(i8* %9, i32 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load i32, i32* @str_op, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @r_str_do_until_token(i32 %19, i8* %20, i8 signext 0)
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 4
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 44
  br i1 %26, label %27, label %53

27:                                               ; preds = %18
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 3
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @gb_reg_idx(i8 signext %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %72

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 8
  %38 = add nsw i32 64, %37
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %38, i32* %40, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 5
  %43 = load i8, i8* %42, align 1
  %44 = call i32 @gb_reg_idx(i8 signext %43)
  store i32 %44, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %72

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %71

53:                                               ; preds = %18
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 3
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @gb_reg_idx(i8 signext %61)
  store i32 %62, i32* %8, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %72

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = or i32 112, %66
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %53
  br label %71

71:                                               ; preds = %70, %47
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %64, %46, %34, %17
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @r_str_replace_in(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_str_do_until_token(i32, i8*, i8 signext) #1

declare dso_local i32 @gb_reg_idx(i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

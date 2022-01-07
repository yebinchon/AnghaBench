; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px.c_parse_cipher_name.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px.c_parse_cipher_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@PXE_BAD_OPTION = common dso_local global i32 0, align 4
@PXE_BAD_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @parse_cipher_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cipher_name(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8**, i8*** %6, align 8
  store i8* %11, i8** %12, align 8
  %13 = load i8**, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  store i8 0, i8* %19, align 1
  br label %21

21:                                               ; preds = %18, %3
  br label %22

22:                                               ; preds = %57, %36, %21
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load i8*, i8** %8, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  store i8 0, i8* %30, align 1
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %10, align 8
  store i8* %37, i8** %8, align 8
  br label %22

38:                                               ; preds = %32
  %39 = load i8*, i8** %8, align 8
  %40 = call i8* @strchr(i8* %39, i8 signext 58)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 0, i8* %44, align 1
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = load i8**, i8*** %7, align 8
  store i8* %50, i8** %51, align 8
  br label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @PXE_BAD_OPTION, align 4
  store i32 %53, i32* %4, align 4
  br label %60

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %38
  %56 = load i32, i32* @PXE_BAD_FORMAT, align 4
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %54
  %58 = load i8*, i8** %10, align 8
  store i8* %58, i8** %8, align 8
  br label %22

59:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %55, %52
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

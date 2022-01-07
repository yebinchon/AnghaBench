; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_convert_from_escape_literal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_cf-lexer.c_cf_convert_from_escape_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**)* @cf_convert_from_escape_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf_convert_from_escape_literal(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %6, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %59 [
    i32 39, label %15
    i32 34, label %18
    i32 63, label %21
    i32 92, label %24
    i32 48, label %27
    i32 97, label %30
    i32 98, label %33
    i32 102, label %36
    i32 110, label %39
    i32 114, label %42
    i32 116, label %45
    i32 118, label %48
    i32 88, label %51
    i32 120, label %51
  ]

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  store i8 39, i8* %16, align 1
  br label %73

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  store i8 34, i8* %19, align 1
  br label %73

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  store i8 63, i8* %22, align 1
  br label %73

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  store i8 92, i8* %25, align 1
  br label %73

27:                                               ; preds = %2
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i8 0, i8* %28, align 1
  br label %73

30:                                               ; preds = %2
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %5, align 8
  store i8 7, i8* %31, align 1
  br label %73

33:                                               ; preds = %2
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  store i8 8, i8* %34, align 1
  br label %73

36:                                               ; preds = %2
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %5, align 8
  store i8 12, i8* %37, align 1
  br label %73

39:                                               ; preds = %2
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %5, align 8
  store i8 10, i8* %40, align 1
  br label %73

42:                                               ; preds = %2
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 13, i8* %43, align 1
  br label %73

45:                                               ; preds = %2
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 9, i8* %46, align 1
  br label %73

48:                                               ; preds = %2
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  store i8 11, i8* %49, align 1
  br label %73

51:                                               ; preds = %2, %2
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @strtoul(i8* %52, i32* null, i32 16)
  %54 = trunc i64 %53 to i8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 %54, i8* %55, align 1
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %6, align 8
  br label %73

59:                                               ; preds = %2
  %60 = load i8*, i8** %6, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @isdigit(i8 signext %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strtoul(i8* %65, i32* null, i32 8)
  %67 = trunc i64 %66 to i8
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  store i8 %67, i8* %68, align 1
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %64, %59
  br label %73

73:                                               ; preds = %72, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15
  %74 = load i8*, i8** %5, align 8
  %75 = load i8**, i8*** %3, align 8
  store i8* %74, i8** %75, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8**, i8*** %4, align 8
  store i8* %76, i8** %77, align 8
  ret void
}

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

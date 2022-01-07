; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_workshop.c_append_selection.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_workshop.c_append_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@NUL = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32*, i32*)* @append_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @append_selection(i32 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ml_get(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %20, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %26, %28
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i64 @realloc(i8* %25, i32 %31)
  %33 = inttoptr i64 %32 to i8*
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* @NUL, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = load i32, i32* @BUFSIZ, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i8*, i8** %11, align 8
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %40, %24
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load i8*, i8** %6, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @strcat(i8* %63, i8* %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  %73 = load i32, i32* %71, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8 10, i8* %75, align 1
  br label %76

76:                                               ; preds = %58, %50
  %77 = load i8*, i8** %6, align 8
  ret i8* %77
}

declare dso_local i64 @ml_get(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

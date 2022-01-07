; ModuleID = '/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/base/shell/cmd/extr_misc.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Cannot allocate memory for q!\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot reallocate memory for arg!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_entry(i32* %0, i32*** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %5, align 8
  store i32*** %1, i32**** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @_tcslen(i32 %10)
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32* @cmd_alloc(i32 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @_tcscpy(i32* %23, i32 %24)
  %26 = load i32***, i32**** %6, align 8
  %27 = load i32**, i32*** %26, align 8
  store i32** %27, i32*** %9, align 8
  %28 = load i32**, i32*** %9, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = call i32** @cmd_realloc(i32** %28, i32 %34)
  %36 = load i32***, i32**** %6, align 8
  store i32** %35, i32*** %36, align 8
  %37 = load i32***, i32**** %6, align 8
  %38 = load i32**, i32*** %37, align 8
  %39 = icmp ne i32** %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %22
  %41 = call i32 @WARN(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32***, i32**** %6, align 8
  store i32** %42, i32*** %43, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @cmd_free(i32* %44)
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %4, align 4
  br label %63

47:                                               ; preds = %22
  %48 = load i32*, i32** %8, align 8
  %49 = load i32***, i32**** %6, align 8
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %50, i64 %53
  store i32* %48, i32** %54, align 8
  %55 = load i32***, i32**** %6, align 8
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %56, i64 %60
  store i32* null, i32** %61, align 8
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %47, %40, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32* @cmd_alloc(i32) #1

declare dso_local i32 @_tcslen(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @_tcscpy(i32*, i32) #1

declare dso_local i32** @cmd_realloc(i32**, i32) #1

declare dso_local i32 @cmd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_untransformRelOptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_reloptions.c_untransformRelOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NIL = common dso_local global i32* null, align 8
@TEXTOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @untransformRelOptions(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32*, i32** @NIL, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DatumGetPointer(i32 %13)
  %15 = call i32 @PointerIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  store i32* %18, i32** %2, align 8
  br label %59

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32* @DatumGetArrayTypeP(i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @TEXTOID, align 4
  %24 = call i32 @deconstruct_array(i32* %22, i32 %23, i32 -1, i32 0, i8 signext 105, i32** %6, i32* null, i32* %7)
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %54, %19
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  store i32* null, i32** %11, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @TextDatumGetCString(i32 %34)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 61)
  store i8* %37, i8** %10, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  store i8 0, i8* %41, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @pstrdup(i8* %43)
  %45 = call i64 @makeString(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %11, align 8
  br label %47

47:                                               ; preds = %40, %29
  %48 = load i32*, i32** %4, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @pstrdup(i8* %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @makeDefElem(i32 %50, i32* %51, i32 -1)
  %53 = call i32* @lappend(i32* %48, i32 %52)
  store i32* %53, i32** %4, align 8
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32*, i32** %4, align 8
  store i32* %58, i32** %2, align 8
  br label %59

59:                                               ; preds = %57, %17
  %60 = load i32*, i32** %2, align 8
  ret i32* %60
}

declare dso_local i32 @PointerIsValid(i32) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i32) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32*, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @makeString(i32) #1

declare dso_local i32 @pstrdup(i8*) #1

declare dso_local i32* @lappend(i32*, i32) #1

declare dso_local i32 @makeDefElem(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

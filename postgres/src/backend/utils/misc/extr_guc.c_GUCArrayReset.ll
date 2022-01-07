; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GUCArrayReset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_GUCArrayReset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXTOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GUCArrayReset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %62

14:                                               ; preds = %1
  %15 = call i64 (...) @superuser()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %62

18:                                               ; preds = %14
  store i32* null, i32** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %57, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = call i32* @ARR_DIMS(i32* %21)
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %20, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %19
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @array_ref(i32* %27, i32 1, i32* %5, i32 -1, i32 -1, i32 0, i8 signext 105, i32* %10)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %57

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @TextDatumGetCString(i32 %33)
  store i8* %34, i8** %8, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 61)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  store i8 0, i8* %37, align 1
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @validate_option_array_item(i8* %38, i32* null, i32 1)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %57

42:                                               ; preds = %32
  %43 = load i32*, i32** %4, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32* @array_set(i32* %46, i32 1, i32* %6, i32 %47, i32 0, i32 -1, i32 -1, i32 0, i8 signext 105)
  store i32* %48, i32** %4, align 8
  br label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @TEXTOID, align 4
  %51 = call i32* @construct_array(i32* %7, i32 1, i32 %50, i32 -1, i32 0, i8 signext 105)
  store i32* %51, i32** %4, align 8
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @pfree(i8* %55)
  br label %57

57:                                               ; preds = %52, %41, %31
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %19

60:                                               ; preds = %19
  %61 = load i32*, i32** %4, align 8
  store i32* %61, i32** %2, align 8
  br label %62

62:                                               ; preds = %60, %17, %13
  %63 = load i32*, i32** %2, align 8
  ret i32* %63
}

declare dso_local i64 @superuser(...) #1

declare dso_local i32* @ARR_DIMS(i32*) #1

declare dso_local i32 @array_ref(i32*, i32, i32*, i32, i32, i32, i8 signext, i32*) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @validate_option_array_item(i8*, i32*, i32) #1

declare dso_local i32* @array_set(i32*, i32, i32*, i32, i32, i32, i32, i32, i8 signext) #1

declare dso_local i32* @construct_array(i32*, i32, i32, i32, i32, i8 signext) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_boolean.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_to_boolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unimplemented for variant %s\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_boolean(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @jsval_type(i32 %6)
  switch i32 %7, label %52 [
    i32 129, label %8
    i32 133, label %8
    i32 131, label %12
    i32 130, label %19
    i32 132, label %27
    i32 134, label %41
    i32 128, label %46
  ]

8:                                                ; preds = %2, %2
  %9 = load i32, i32* @FALSE, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @S_OK, align 4
  store i32 %11, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @get_object(i32 %13)
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @S_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @get_string(i32 %20)
  %22 = call i32 @jsstr_length(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @S_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %55

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @get_number(i32 %28)
  %30 = call i32 @isnan(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @get_number(i32 %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @S_OK, align 4
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %2
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @get_bool(i32 %42)
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @S_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @get_variant(i32 %47)
  %49 = call i32 @debugstr_variant(i32 %48)
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %2
  %53 = call i32 @assert(i32 0)
  %54 = load i32, i32* @E_FAIL, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %46, %41, %36, %19, %12, %8
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i32* @get_object(i32) #1

declare dso_local i32 @jsstr_length(i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @isnan(i32) #1

declare dso_local i32 @get_number(i32) #1

declare dso_local i32 @get_bool(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_variant(i32) #1

declare dso_local i32 @get_variant(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

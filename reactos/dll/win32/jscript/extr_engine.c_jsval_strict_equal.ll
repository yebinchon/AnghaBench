; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_jsval_strict_equal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_jsval_strict_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"VARIANT not implemented\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsval_strict_equal(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @jsval_type(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @jsval_type(i32 %13)
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @is_null_instance(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @is_null_instance(i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* @FALSE, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @S_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %75

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %73 [
    i32 129, label %31
    i32 133, label %31
    i32 131, label %34
    i32 130, label %41
    i32 132, label %48
    i32 134, label %56
    i32 128, label %70
  ]

31:                                               ; preds = %29, %29
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  br label %73

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @get_object(i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @get_object(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @disp_cmp(i32 %36, i32 %38, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %75

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @get_string(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @get_string(i32 %44)
  %46 = call i32 @jsstr_eq(i32 %43, i32 %45)
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %73

48:                                               ; preds = %29
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @get_number(i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @get_number(i32 %51)
  %53 = icmp eq i32 %50, %52
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %73

56:                                               ; preds = %29
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @get_bool(i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @get_bool(i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = icmp eq i32 %61, %66
  %68 = zext i1 %67 to i32
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  br label %73

70:                                               ; preds = %29
  %71 = call i32 @FIXME(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %29, %56, %48, %41, %31
  %74 = load i32, i32* @S_OK, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %70, %34, %27
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @is_null_instance(i32) #1

declare dso_local i32 @disp_cmp(i32, i32, i32*) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsstr_eq(i32, i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @get_number(i32) #1

declare dso_local i32 @get_bool(i32) #1

declare dso_local i32 @FIXME(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

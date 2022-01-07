; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_init_strings.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_init_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_strings.NaNW = internal constant [4 x i8] c"NaN\00", align 1
@init_strings.undefinedW = internal constant [10 x i8] c"undefined\00", align 1
@empty_str = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@nan_str = common dso_local global i8* null, align 8
@undefined_str = common dso_local global i8* null, align 8
@null_bstr_str = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_strings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = call i8* @jsstr_alloc_buf(i32 0, i8** %2)
  store i8* %3, i8** @empty_str, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %1, align 4
  br label %24

7:                                                ; preds = %0
  %8 = call i8* @jsstr_alloc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @init_strings.NaNW, i64 0, i64 0))
  store i8* %8, i8** @nan_str, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %1, align 4
  br label %24

12:                                               ; preds = %7
  %13 = call i8* @jsstr_alloc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @init_strings.undefinedW, i64 0, i64 0))
  store i8* %13, i8** @undefined_str, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %1, align 4
  br label %24

17:                                               ; preds = %12
  %18 = call i8* @jsstr_alloc_buf(i32 0, i8** %2)
  store i8* %18, i8** @null_bstr_str, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %20, %15, %10, %5
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i8* @jsstr_alloc_buf(i32, i8**) #1

declare dso_local i8* @jsstr_alloc(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

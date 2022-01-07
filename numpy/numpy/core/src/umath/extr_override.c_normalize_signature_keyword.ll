; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_override.c_normalize_signature_keyword.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/umath/extr_override.c_normalize_signature_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"sig\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"signature\00", align 1
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot specify both 'sig' and 'signature'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @normalize_signature_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @normalize_signature_keyword(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32* @PyDict_GetItemString(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @PyDict_GetItemString(i32* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @PyExc_TypeError, align 4
  %15 = call i32 @PyErr_SetString(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %23

16:                                               ; preds = %9
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @PyDict_SetItemString(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @PyDict_DelItemString(i32* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32* @PyDict_GetItemString(i32*, i8*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @PyDict_SetItemString(i32*, i8*, i32*) #1

declare dso_local i32 @PyDict_DelItemString(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

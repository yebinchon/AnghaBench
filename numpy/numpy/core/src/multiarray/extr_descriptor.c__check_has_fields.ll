; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__check_has_fields.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_descriptor.c__check_has_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PyExc_KeyError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"There are no fields in dtype %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @_check_has_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_check_has_fields(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @PyDataType_HASFIELDS(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32* @arraydescr_str(i32* %9)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 -1, i32* %2, align 4
  br label %22

14:                                               ; preds = %8
  %15 = load i32, i32* @PyExc_KeyError, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @PyBytes_AsString(i32* %16)
  %18 = call i32 @PyErr_Format(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @Py_DECREF(i32* %19)
  store i32 -1, i32* %2, align 4
  br label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %14, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @PyDataType_HASFIELDS(i32*) #1

declare dso_local i32* @arraydescr_str(i32*) #1

declare dso_local i32 @PyErr_Format(i32, i8*, i32) #1

declare dso_local i32 @PyBytes_AsString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_get_sqlerrcode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_elog.c_PLy_get_sqlerrcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sqlstate\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @PLy_get_sqlerrcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_get_sqlerrcode(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @PyObject_GetAttrString(i32* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %43

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @PyString_AsString(i32* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strspn(i8* %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 4
  %37 = load i8, i8* %36, align 1
  %38 = call i32 @MAKE_SQLSTATE(i8 signext %25, i8 signext %28, i8 signext %31, i8 signext %34, i8 signext %37)
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %22, %18, %12
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @Py_DECREF(i32* %41)
  br label %43

43:                                               ; preds = %40, %11
  ret void
}

declare dso_local i32* @PyObject_GetAttrString(i32*, i8*) #1

declare dso_local i8* @PyString_AsString(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @MAKE_SQLSTATE(i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @Py_DECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

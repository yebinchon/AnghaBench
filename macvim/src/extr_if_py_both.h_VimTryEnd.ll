; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_VimTryEnd.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_if_py_both.h_VimTryEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@trylevel = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@did_emsg = common dso_local global i8* null, align 8
@got_int = common dso_local global i8* null, align 8
@did_throw = common dso_local global i64 0, align 8
@PyExc_KeyboardInterrupt = common dso_local global i32 0, align 4
@msg_list = common dso_local global i32** null, align 8
@ET_ERROR = common dso_local global i32 0, align 4
@current_exception = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @VimTryEnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VimTryEnd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @trylevel, align 4
  %5 = add nsw i32 %4, -1
  store i32 %5, i32* @trylevel, align 4
  %6 = load i8*, i8** @FALSE, align 8
  store i8* %6, i8** @did_emsg, align 8
  %7 = load i8*, i8** @got_int, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %0
  %10 = load i64, i64* @did_throw, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (...) @discard_current_exception()
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i8*, i8** @FALSE, align 8
  store i8* %15, i8** @got_int, align 8
  %16 = load i32, i32* @PyExc_KeyboardInterrupt, align 4
  %17 = call i32 @PyErr_SetNone(i32 %16)
  store i32 -1, i32* %1, align 4
  br label %65

18:                                               ; preds = %0
  %19 = load i32**, i32*** @msg_list, align 8
  %20 = icmp ne i32** %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i32**, i32*** @msg_list, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %45

25:                                               ; preds = %21
  %26 = load i32**, i32*** @msg_list, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @ET_ERROR, align 4
  %29 = call i32* @get_exception_string(i32* %27, i32 %28, i32* null, i32* %2)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (...) @PyErr_NoMemory()
  store i32 -1, i32* %1, align 4
  br label %65

34:                                               ; preds = %25
  %35 = load i32*, i32** %3, align 8
  %36 = bitcast i32* %35 to i8*
  %37 = call i32 @PyErr_SetVim(i8* %36)
  %38 = call i32 (...) @free_global_msglist()
  %39 = load i32, i32* %2, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @vim_free(i32* %42)
  br label %44

44:                                               ; preds = %41, %34
  store i32 -1, i32* %1, align 4
  br label %65

45:                                               ; preds = %21, %18
  %46 = load i64, i64* @did_throw, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = call i64 (...) @PyErr_Occurred()
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 -1, i32 0
  store i32 %52, i32* %1, align 4
  br label %65

53:                                               ; preds = %45
  %54 = call i64 (...) @PyErr_Occurred()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (...) @discard_current_exception()
  store i32 -1, i32* %1, align 4
  br label %65

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_exception, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @PyErr_SetVim(i8* %62)
  %64 = call i32 (...) @discard_current_exception()
  store i32 -1, i32* %1, align 4
  br label %65

65:                                               ; preds = %58, %56, %48, %44, %32, %14
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @discard_current_exception(...) #1

declare dso_local i32 @PyErr_SetNone(i32) #1

declare dso_local i32* @get_exception_string(i32*, i32, i32*, i32*) #1

declare dso_local i32 @PyErr_NoMemory(...) #1

declare dso_local i32 @PyErr_SetVim(i8*) #1

declare dso_local i32 @free_global_msglist(...) #1

declare dso_local i32 @vim_free(i32*) #1

declare dso_local i64 @PyErr_Occurred(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

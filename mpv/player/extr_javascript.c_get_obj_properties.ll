; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_javascript.c_get_obj_properties.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_javascript.c_get_obj_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***, i32*, i32)* @get_obj_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_obj_properties(i8* %0, i8*** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @js_pushiterator(i32* %11, i32 %12, i32 1)
  %14 = load i8*, i8** %5, align 8
  %15 = call i8** @talloc_new(i8* %14)
  %16 = load i8***, i8**** %6, align 8
  store i8** %15, i8*** %16, align 8
  br label %17

17:                                               ; preds = %21, %4
  %18 = load i32*, i32** %7, align 8
  %19 = call i8* @js_nextiterator(i32* %18, i32 -1)
  store i8* %19, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i8***, i8**** %6, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @talloc_strdup(i8* %26, i8* %27)
  %29 = call i32 @MP_TARRAY_APPEND(i8* %22, i8** %24, i32 %25, i32 %28)
  br label %17

30:                                               ; preds = %17
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @js_pop(i32* %31, i32 1)
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @js_pushiterator(i32*, i32, i32) #1

declare dso_local i8** @talloc_new(i8*) #1

declare dso_local i8* @js_nextiterator(i32*, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(i8*, i8**, i32, i32) #1

declare dso_local i32 @talloc_strdup(i8*, i8*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

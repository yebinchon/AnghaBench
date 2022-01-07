; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_equal.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_equal(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %48

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @json_typeof(i32* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @json_typeof(i32* %15)
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %48

19:                                               ; preds = %12
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %48

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @json_typeof(i32* %25)
  switch i32 %26, label %47 [
    i32 130, label %27
    i32 132, label %31
    i32 128, label %35
    i32 131, label %39
    i32 129, label %43
  ]

27:                                               ; preds = %24
  %28 = load i32*, i32** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @json_object_equal(i32* %28, i32* %29)
  store i32 %30, i32* %3, align 4
  br label %48

31:                                               ; preds = %24
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @json_array_equal(i32* %32, i32* %33)
  store i32 %34, i32* %3, align 4
  br label %48

35:                                               ; preds = %24
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @json_string_equal(i32* %36, i32* %37)
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %24
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @json_integer_equal(i32* %40, i32* %41)
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %24
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @json_real_equal(i32* %44, i32* %45)
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %43, %39, %35, %31, %27, %23, %18, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @json_typeof(i32*) #1

declare dso_local i32 @json_object_equal(i32*, i32*) #1

declare dso_local i32 @json_array_equal(i32*, i32*) #1

declare dso_local i32 @json_string_equal(i32*, i32*) #1

declare dso_local i32 @json_integer_equal(i32*, i32*) #1

declare dso_local i32 @json_real_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

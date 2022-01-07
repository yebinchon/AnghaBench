; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @json_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = icmp ne i32* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %28

7:                                                ; preds = %1
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @json_typeof(i32* %8)
  switch i32 %9, label %27 [
    i32 131, label %10
    i32 135, label %13
    i32 129, label %16
    i32 133, label %19
    i32 130, label %22
    i32 128, label %25
    i32 134, label %25
    i32 132, label %25
  ]

10:                                               ; preds = %7
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @json_object_copy(i32* %11)
  store i32* %12, i32** %2, align 8
  br label %28

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = call i32* @json_array_copy(i32* %14)
  store i32* %15, i32** %2, align 8
  br label %28

16:                                               ; preds = %7
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @json_string_copy(i32* %17)
  store i32* %18, i32** %2, align 8
  br label %28

19:                                               ; preds = %7
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @json_integer_copy(i32* %20)
  store i32* %21, i32** %2, align 8
  br label %28

22:                                               ; preds = %7
  %23 = load i32*, i32** %3, align 8
  %24 = call i32* @json_real_copy(i32* %23)
  store i32* %24, i32** %2, align 8
  br label %28

25:                                               ; preds = %7, %7, %7
  %26 = load i32*, i32** %3, align 8
  store i32* %26, i32** %2, align 8
  br label %28

27:                                               ; preds = %7
  store i32* null, i32** %2, align 8
  br label %28

28:                                               ; preds = %27, %25, %22, %19, %16, %13, %10, %6
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

declare dso_local i32 @json_typeof(i32*) #1

declare dso_local i32* @json_object_copy(i32*) #1

declare dso_local i32* @json_array_copy(i32*) #1

declare dso_local i32* @json_string_copy(i32*) #1

declare dso_local i32* @json_integer_copy(i32*) #1

declare dso_local i32* @json_real_copy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

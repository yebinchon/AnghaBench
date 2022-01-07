; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_delete.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_delete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @json_typeof(i32* %7)
  switch i32 %8, label %29 [
    i32 130, label %9
    i32 132, label %13
    i32 128, label %17
    i32 131, label %21
    i32 129, label %25
  ]

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @json_to_object(i32* %10)
  %12 = call i32 @json_delete_object(i32 %11)
  br label %30

13:                                               ; preds = %6
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @json_to_array(i32* %14)
  %16 = call i32 @json_delete_array(i32 %15)
  br label %30

17:                                               ; preds = %6
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @json_to_string(i32* %18)
  %20 = call i32 @json_delete_string(i32 %19)
  br label %30

21:                                               ; preds = %6
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @json_to_integer(i32* %22)
  %24 = call i32 @json_delete_integer(i32 %23)
  br label %30

25:                                               ; preds = %6
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @json_to_real(i32* %26)
  %28 = call i32 @json_delete_real(i32 %27)
  br label %30

29:                                               ; preds = %6
  br label %30

30:                                               ; preds = %5, %29, %25, %21, %17, %13, %9
  ret void
}

declare dso_local i32 @json_typeof(i32*) #1

declare dso_local i32 @json_delete_object(i32) #1

declare dso_local i32 @json_to_object(i32*) #1

declare dso_local i32 @json_delete_array(i32) #1

declare dso_local i32 @json_to_array(i32*) #1

declare dso_local i32 @json_delete_string(i32) #1

declare dso_local i32 @json_to_string(i32*) #1

declare dso_local i32 @json_delete_integer(i32) #1

declare dso_local i32 @json_to_integer(i32*) #1

declare dso_local i32 @json_delete_real(i32) #1

declare dso_local i32 @json_to_real(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

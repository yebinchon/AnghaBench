; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_array_deep_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_array_deep_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @json_array_deep_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @json_array_deep_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %6 = call i32* (...) @json_array()
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %28

10:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i64, i64* %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @json_array_size(i32* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @json_array_get(i32* %18, i64 %19)
  %21 = call i32 @json_deep_copy(i32 %20)
  %22 = call i32 @json_array_append_new(i32* %17, i32 %21)
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %5, align 8
  br label %11

26:                                               ; preds = %11
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %2, align 8
  br label %28

28:                                               ; preds = %26, %9
  %29 = load i32*, i32** %2, align 8
  ret i32* %29
}

declare dso_local i32* @json_array(...) #1

declare dso_local i64 @json_array_size(i32*) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_deep_copy(i32) #1

declare dso_local i32 @json_array_get(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

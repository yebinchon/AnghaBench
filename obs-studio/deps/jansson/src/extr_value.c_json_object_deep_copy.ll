; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_object_deep_copy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_value.c_json_object_deep_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @json_object_deep_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @json_object_deep_copy(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = call i32* (...) @json_object()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @json_object_iter(i32* %13)
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %18, %12
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @json_object_iter_key(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32* @json_object_iter_value(i8* %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @json_deep_copy(i32* %25)
  %27 = call i32 @json_object_set_new_nocheck(i32* %23, i8* %24, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i8* @json_object_iter_next(i32* %28, i8* %29)
  store i8* %30, i8** %5, align 8
  br label %15

31:                                               ; preds = %15
  %32 = load i32*, i32** %4, align 8
  store i32* %32, i32** %2, align 8
  br label %33

33:                                               ; preds = %31, %11
  %34 = load i32*, i32** %2, align 8
  ret i32* %34
}

declare dso_local i32* @json_object(...) #1

declare dso_local i8* @json_object_iter(i32*) #1

declare dso_local i8* @json_object_iter_key(i8*) #1

declare dso_local i32* @json_object_iter_value(i8*) #1

declare dso_local i32 @json_object_set_new_nocheck(i32*, i8*, i32) #1

declare dso_local i32 @json_deep_copy(i32*) #1

declare dso_local i8* @json_object_iter_next(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

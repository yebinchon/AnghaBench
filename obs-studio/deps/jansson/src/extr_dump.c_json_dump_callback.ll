; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_dump.c_json_dump_callback.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/src/extr_dump.c_json_dump_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_ENCODE_ANY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_dump_callback(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @JSON_ENCODE_ANY, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @json_is_array(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @json_is_object(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  store i32 -1, i32* %5, align 4
  br label %30

23:                                               ; preds = %18, %14
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @do_dump(i32* %25, i64 %26, i32 0, i32 %27, i8* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @json_is_array(i32*) #1

declare dso_local i32 @json_is_object(i32*) #1

declare dso_local i32 @do_dump(i32*, i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

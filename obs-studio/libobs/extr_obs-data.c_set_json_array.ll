; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_set_json_array.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_set_json_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @set_json_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_json_array(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = call i32* (...) @json_array()
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @obs_data_item_get_array(i32* %14)
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i64 @obs_data_array_count(i32* %16)
  store i64 %17, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %33, %3
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32* @obs_data_array_item(i32* %23, i64 %24)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32* @obs_data_to_json(i32* %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @json_array_append_new(i32* %28, i32* %29)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @obs_data_release(i32* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %18

36:                                               ; preds = %18
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @json_object_set_new(i32* %37, i8* %38, i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @obs_data_array_release(i32* %41)
  ret void
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32* @obs_data_item_get_array(i32*) #1

declare dso_local i64 @obs_data_array_count(i32*) #1

declare dso_local i32* @obs_data_array_item(i32*, i64) #1

declare dso_local i32* @obs_data_to_json(i32*) #1

declare dso_local i32 @json_array_append_new(i32*, i32*) #1

declare dso_local i32 @obs_data_release(i32*) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32*) #1

declare dso_local i32 @obs_data_array_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

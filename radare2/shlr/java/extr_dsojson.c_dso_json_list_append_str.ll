; ModuleID = '/home/carl/AnghaBench/radare2/shlr/java/extr_dsojson.c_dso_json_list_append_str.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/java/extr_dsojson.c_dso_json_list_append_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSO_JSON_LIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso_json_list_append_str(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i64 @get_type(i32* %8)
  %10 = load i64, i64* @DSO_JSON_LIST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call i32* @dso_json_str_new_from_str(i8* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @dso_json_list_append(i32* %15, i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @dso_json_obj_del(i32* %21)
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %23
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @get_type(i32*) #1

declare dso_local i32* @dso_json_str_new_from_str(i8*) #1

declare dso_local i32 @dso_json_list_append(i32*, i32*) #1

declare dso_local i32 @dso_json_obj_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

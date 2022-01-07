; ModuleID = '/home/carl/AnghaBench/radare2/shlr/java/extr_dsojson.c_dso_json_dict_insert_key_obj.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/java/extr_dsojson.c_dso_json_dict_insert_key_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSO_JSON_STR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dso_json_dict_insert_key_obj(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @dso_json_get_list(i32* %12)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %72

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i64 @get_type(i32* %18)
  %20 = load i64, i64* @DSO_JSON_STR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %72

23:                                               ; preds = %17
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32* (...) @dso_json_null_new()
  store i32* %27, i32** %7, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32*, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @dso_json_dict_contains_key_obj(i32* %35, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @dso_json_dict_entry_new_from_key_obj_val_obj(i32* %40, i32* %41)
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @r_list_append(i32* %43, i32* %44)
  store i32 1, i32* %8, align 4
  br label %70

46:                                               ; preds = %34, %31, %28
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load i32*, i32** %6, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32*, i32** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @dso_json_dict_remove_key_obj(i32* %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32* @dso_json_dict_entry_new_from_key_obj_val_obj(i32* %58, i32* %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @r_list_append(i32* %61, i32* %62)
  store i32 1, i32* %8, align 4
  br label %69

64:                                               ; preds = %52, %49, %46
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @dso_json_obj_del(i32* %65)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @dso_json_dict_free(i32* %67)
  br label %69

69:                                               ; preds = %64, %57
  br label %70

70:                                               ; preds = %69, %39
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %22, %16
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32* @dso_json_get_list(i32*) #1

declare dso_local i64 @get_type(i32*) #1

declare dso_local i32* @dso_json_null_new(...) #1

declare dso_local i32 @dso_json_dict_contains_key_obj(i32*, i32*) #1

declare dso_local i32* @dso_json_dict_entry_new_from_key_obj_val_obj(i32*, i32*) #1

declare dso_local i32 @r_list_append(i32*, i32*) #1

declare dso_local i32 @dso_json_dict_remove_key_obj(i32*, i32*) #1

declare dso_local i32 @dso_json_obj_del(i32*) #1

declare dso_local i32 @dso_json_dict_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

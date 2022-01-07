; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_add_json_item.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_add_json_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @obs_data_add_json_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obs_data_add_json_item(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32*, i32** %6, align 8
  %8 = call i64 @json_is_object(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @obs_data_add_json_object(i32* %11, i8* %12, i32* %13)
  br label %76

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @json_is_array(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @obs_data_add_json_array(i32* %20, i8* %21, i32* %22)
  br label %75

24:                                               ; preds = %15
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @json_is_string(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @json_string_value(i32* %31)
  %33 = call i32 @obs_data_set_string(i32* %29, i8* %30, i32 %32)
  br label %74

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @json_is_integer(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @json_integer_value(i32* %41)
  %43 = call i32 @obs_data_set_int(i32* %39, i8* %40, i32 %42)
  br label %73

44:                                               ; preds = %34
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @json_is_real(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32*, i32** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @json_real_value(i32* %51)
  %53 = call i32 @obs_data_set_double(i32* %49, i8* %50, i32 %52)
  br label %72

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @json_is_true(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @obs_data_set_bool(i32* %59, i8* %60, i32 1)
  br label %71

62:                                               ; preds = %54
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @json_is_false(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32*, i32** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @obs_data_set_bool(i32* %67, i8* %68, i32 0)
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72, %38
  br label %74

74:                                               ; preds = %73, %28
  br label %75

75:                                               ; preds = %74, %19
  br label %76

76:                                               ; preds = %75, %10
  ret void
}

declare dso_local i64 @json_is_object(i32*) #1

declare dso_local i32 @obs_data_add_json_object(i32*, i8*, i32*) #1

declare dso_local i64 @json_is_array(i32*) #1

declare dso_local i32 @obs_data_add_json_array(i32*, i8*, i32*) #1

declare dso_local i64 @json_is_string(i32*) #1

declare dso_local i32 @obs_data_set_string(i32*, i8*, i32) #1

declare dso_local i32 @json_string_value(i32*) #1

declare dso_local i64 @json_is_integer(i32*) #1

declare dso_local i32 @obs_data_set_int(i32*, i8*, i32) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i64 @json_is_real(i32*) #1

declare dso_local i32 @obs_data_set_double(i32*, i8*, i32) #1

declare dso_local i32 @json_real_value(i32*) #1

declare dso_local i64 @json_is_true(i32*) #1

declare dso_local i32 @obs_data_set_bool(i32*, i8*, i32) #1

declare dso_local i64 @json_is_false(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

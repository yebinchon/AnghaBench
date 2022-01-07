; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_to_json.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-data.c_obs_data_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBS_DATA_STRING = common dso_local global i32 0, align 4
@OBS_DATA_NUMBER = common dso_local global i32 0, align 4
@OBS_DATA_BOOLEAN = common dso_local global i32 0, align 4
@OBS_DATA_OBJECT = common dso_local global i32 0, align 4
@OBS_DATA_ARRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @obs_data_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @obs_data_to_json(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i32* (...) @json_object()
  store i32* %7, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @obs_data_first(i32* %8)
  store i32* %9, i32** %4, align 8
  br label %10

10:                                               ; preds = %72, %1
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %74

13:                                               ; preds = %10
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @obs_data_item_gettype(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i8* @get_item_name(i32* %16)
  store i8* %17, i8** %6, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @obs_data_item_has_user_value(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  br label %72

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @OBS_DATA_STRING, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %3, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @set_json_string(i32* %27, i8* %28, i32* %29)
  br label %71

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @OBS_DATA_NUMBER, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @set_json_number(i32* %36, i8* %37, i32* %38)
  br label %70

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @OBS_DATA_BOOLEAN, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32*, i32** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @set_json_bool(i32* %45, i8* %46, i32* %47)
  br label %69

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @OBS_DATA_OBJECT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @set_json_obj(i32* %54, i8* %55, i32* %56)
  br label %68

58:                                               ; preds = %49
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @OBS_DATA_ARRAY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %3, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @set_json_array(i32* %63, i8* %64, i32* %65)
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %53
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %69, %35
  br label %71

71:                                               ; preds = %70, %26
  br label %72

72:                                               ; preds = %71, %21
  %73 = call i32 @obs_data_item_next(i32** %4)
  br label %10

74:                                               ; preds = %10
  %75 = load i32*, i32** %3, align 8
  ret i32* %75
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @obs_data_first(i32*) #1

declare dso_local i32 @obs_data_item_gettype(i32*) #1

declare dso_local i8* @get_item_name(i32*) #1

declare dso_local i32 @obs_data_item_has_user_value(i32*) #1

declare dso_local i32 @set_json_string(i32*, i8*, i32*) #1

declare dso_local i32 @set_json_number(i32*, i8*, i32*) #1

declare dso_local i32 @set_json_bool(i32*, i8*, i32*) #1

declare dso_local i32 @set_json_obj(i32*, i8*, i32*) #1

declare dso_local i32 @set_json_array(i32*, i8*, i32*) #1

declare dso_local i32 @obs_data_item_next(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

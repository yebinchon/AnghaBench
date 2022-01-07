; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_load_cached_os_font_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/text-freetype2/extr_find-font.c_load_cached_os_font_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serializer = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"font_data.bin\00", align 1
@font_cache_ver = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_cached_os_font_list() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.serializer, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = call i8* @obs_module_config_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @file_input_serializer_init(%struct.serializer* %5, i8* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @bfree(i8* %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %40

16:                                               ; preds = %0
  %17 = call i32 @read_data(%struct.serializer* %5, i64* %6, i32 8)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @font_cache_ver, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %7, align 4
  br label %37

25:                                               ; preds = %20
  %26 = call i32 @s_read(%struct.serializer* %5, i64* %3, i32 8)
  store i32 %26, i32* %7, align 4
  %27 = call i64 (...) @get_font_checksum()
  store i64 %27, i64* %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %25
  store i32 0, i32* %7, align 4
  br label %37

35:                                               ; preds = %30
  %36 = call i32 @load_cached_font_list(%struct.serializer* %5)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %34, %24
  %38 = call i32 @file_input_serializer_free(%struct.serializer* %5)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %37, %15
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i8* @obs_module_config_path(i8*) #1

declare dso_local i32 @file_input_serializer_init(%struct.serializer*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

declare dso_local i32 @read_data(%struct.serializer*, i64*, i32) #1

declare dso_local i32 @s_read(%struct.serializer*, i64*, i32) #1

declare dso_local i64 @get_font_checksum(...) #1

declare dso_local i32 @load_cached_font_list(%struct.serializer*) #1

declare dso_local i32 @file_input_serializer_free(%struct.serializer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

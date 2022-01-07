; ModuleID = '/home/carl/AnghaBench/php-src/ext/enchant/extr_enchant.c_php_enchant_list_dicts_fn.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/enchant/extr_enchant.c_php_enchant_list_dicts_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"lang_tag\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"provider_name\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"provider_desc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"provider_file\00", align 1
@IS_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @php_enchant_list_dicts_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_enchant_list_dicts_fn(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = call i32 @array_init(i32* %12)
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @add_assoc_string(i32* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @add_assoc_string(i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @add_assoc_string(i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @add_assoc_string(i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load i32*, i32** %11, align 8
  %25 = call i64 @Z_TYPE_P(i32* %24)
  %26 = load i64, i64* @IS_ARRAY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @array_init(i32* %29)
  br label %31

31:                                               ; preds = %28, %5
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @add_next_index_zval(i32* %32, i32* %12)
  ret void
}

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_assoc_string(i32*, i8*, i8*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @add_next_index_zval(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

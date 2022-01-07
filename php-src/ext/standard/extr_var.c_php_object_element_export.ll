; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_object_element_export.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_var.c_php_object_element_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"'\\\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i32, i32*)* @php_object_element_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_object_element_export(i32* %0, i64 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 2
  %18 = call i32 @buffer_append_spaces(i32* %15, i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %5
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @zend_unmangle_property_name_ex(i32* %22, i8** %11, i8** %12, i64* %13)
  %24 = load i8*, i8** %12, align 8
  %25 = load i64, i64* %13, align 8
  %26 = call i32* @php_addcslashes_str(i8* %24, i64 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @smart_str_appendc(i32* %27, i8 signext 39)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @smart_str_append(i32* %29, i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @smart_str_appendc(i32* %32, i8 signext 39)
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @zend_string_release_ex(i32* %34, i32 0)
  br label %41

36:                                               ; preds = %5
  %37 = load i32*, i32** %10, align 8
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @smart_str_append_long(i32* %37, i32 %39)
  br label %41

41:                                               ; preds = %36, %21
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @smart_str_appendl(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 2
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @php_var_export_ex(i32* %44, i32 %46, i32* %47)
  %49 = load i32*, i32** %10, align 8
  %50 = call i32 @smart_str_appendc(i32* %49, i8 signext 44)
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @smart_str_appendc(i32* %51, i8 signext 10)
  ret void
}

declare dso_local i32 @buffer_append_spaces(i32*, i32) #1

declare dso_local i32 @zend_unmangle_property_name_ex(i32*, i8**, i8**, i64*) #1

declare dso_local i32* @php_addcslashes_str(i8*, i64, i8*, i32) #1

declare dso_local i32 @smart_str_appendc(i32*, i8 signext) #1

declare dso_local i32 @smart_str_append(i32*, i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @smart_str_append_long(i32*, i32) #1

declare dso_local i32 @smart_str_appendl(i32*, i8*, i32) #1

declare dso_local i32 @php_var_export_ex(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

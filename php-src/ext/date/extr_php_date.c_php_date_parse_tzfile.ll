; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_php_date_parse_tzfile.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/extr_php_date.c_php_date_parse_tzfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tzcache = common dso_local global i32 0, align 4
@_php_date_tzinfo_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @php_date_parse_tzfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @php_date_parse_tzfile(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @tzcache, align 4
  %9 = call i32 @DATEG(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @tzcache, align 4
  %13 = call i32 @DATEG(i32 %12)
  %14 = call i32 @ALLOC_HASHTABLE(i32 %13)
  %15 = load i32, i32* @tzcache, align 4
  %16 = call i32 @DATEG(i32 %15)
  %17 = load i32, i32* @_php_date_tzinfo_dtor, align 4
  %18 = call i32 @zend_hash_init(i32 %16, i32 4, i32* null, i32 %17, i32 0)
  br label %19

19:                                               ; preds = %11, %2
  %20 = load i32, i32* @tzcache, align 4
  %21 = call i32 @DATEG(i32 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i32* @zend_hash_str_find_ptr(i32 %21, i8* %22, i32 %24)
  store i32* %25, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %3, align 8
  br label %45

29:                                               ; preds = %19
  %30 = load i8*, i8** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @timelib_parse_tzfile(i8* %30, i32* %31, i32* %7)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load i32, i32* @tzcache, align 4
  %37 = call i32 @DATEG(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @zend_hash_str_add_ptr(i32 %37, i8* %38, i32 %40, i32* %41)
  br label %43

43:                                               ; preds = %35, %29
  %44 = load i32*, i32** %6, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %43, %27
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @DATEG(i32) #1

declare dso_local i32 @ALLOC_HASHTABLE(i32) #1

declare dso_local i32 @zend_hash_init(i32, i32, i32*, i32, i32) #1

declare dso_local i32* @zend_hash_str_find_ptr(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @timelib_parse_tzfile(i8*, i32*, i32*) #1

declare dso_local i32 @zend_hash_str_add_ptr(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

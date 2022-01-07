; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_constants.c_zend_get_halt_offset_constant.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_constants.c_zend_get_halt_offset_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zend_get_halt_offset_constant.haltoff = internal constant [25 x i8] c"__COMPILER_HALT_OFFSET__\00", align 16
@current_execute_data = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"__COMPILER_HALT_OFFSET__\00", align 1
@zend_constants = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @zend_get_halt_offset_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @zend_get_halt_offset_constant(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @current_execute_data, align 4
  %11 = call i32 @EG(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @memcmp(i8* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 24)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  %22 = call i8* (...) @zend_get_executed_filename()
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32* @zend_mangle_property_name(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @zend_get_halt_offset_constant.haltoff, i64 0, i64 0), i32 24, i8* %25, i64 %26, i32 0)
  store i32* %27, i32** %8, align 8
  %28 = load i32, i32* @zend_constants, align 4
  %29 = call i32 @EG(i32 %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32* @zend_hash_find_ptr(i32 %29, i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @zend_string_efree(i32* %32)
  %34 = load i32*, i32** %6, align 8
  store i32* %34, i32** %3, align 8
  br label %36

35:                                               ; preds = %17, %14
  store i32* null, i32** %3, align 8
  br label %36

36:                                               ; preds = %35, %21, %13
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32 @EG(i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @zend_get_executed_filename(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @zend_mangle_property_name(i8*, i32, i8*, i64, i32) #1

declare dso_local i32* @zend_hash_find_ptr(i32, i32*) #1

declare dso_local i32 @zend_string_efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

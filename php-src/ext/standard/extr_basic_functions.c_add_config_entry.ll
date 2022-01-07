; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_basic_functions.c_add_config_entry.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_basic_functions.c_add_config_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_STRING = common dso_local global i64 0, align 8
@GC_PERSISTENT = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @add_config_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_config_entry(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i64 @Z_TYPE_P(i32* %11)
  %13 = load i64, i64* @IS_STRING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %54

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @Z_STR_P(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i32 @ZSTR_IS_INTERNED(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @GC_FLAGS(i32* %22)
  %24 = load i32, i32* @GC_PERSISTENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @zend_string_addref(i32* %28)
  br label %36

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @ZSTR_VAL(i32* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @ZSTR_LEN(i32* %33)
  %35 = call i32* @zend_string_init(i32 %32, i32 %34, i32 0)
  store i32* %35, i32** %9, align 8
  br label %36

36:                                               ; preds = %30, %27
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ZSTR_VAL(i32* %42)
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @ZSTR_LEN(i32* %44)
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @add_assoc_str_ex(i32* %41, i32 %43, i32 %45, i32* %46)
  br label %53

48:                                               ; preds = %37
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @add_index_str(i32* %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %48, %40
  br label %69

54:                                               ; preds = %4
  %55 = load i32*, i32** %7, align 8
  %56 = call i64 @Z_TYPE_P(i32* %55)
  %57 = load i64, i64* @IS_ARRAY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = call i32 @array_init(i32* %10)
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @Z_ARRVAL_P(i32* %61)
  %63 = call i32 @add_config_entries(i32 %62, i32* %10)
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @Z_ARRVAL_P(i32* %64)
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @zend_hash_update(i32 %65, i32* %66, i32* %10)
  br label %68

68:                                               ; preds = %59, %54
  br label %69

69:                                               ; preds = %68, %53
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32 @ZSTR_IS_INTERNED(i32*) #1

declare dso_local i32 @GC_FLAGS(i32*) #1

declare dso_local i32 @zend_string_addref(i32*) #1

declare dso_local i32* @zend_string_init(i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @add_assoc_str_ex(i32*, i32, i32, i32*) #1

declare dso_local i32 @add_index_str(i32*, i32, i32*) #1

declare dso_local i32 @array_init(i32*) #1

declare dso_local i32 @add_config_entries(i32, i32*) #1

declare dso_local i32 @Z_ARRVAL_P(i32*) #1

declare dso_local i32 @zend_hash_update(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

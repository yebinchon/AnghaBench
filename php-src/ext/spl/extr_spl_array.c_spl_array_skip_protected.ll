; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_skip_protected.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_array.c_spl_array_skip_protected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_KEY_IS_STRING = common dso_local global i64 0, align 8
@IS_INDIRECT = common dso_local global i64 0, align 8
@IS_UNDEF = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @spl_array_skip_protected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_array_skip_protected(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @spl_array_is_object(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @spl_array_get_pos_ptr(i32* %14, i32* %15)
  store i32* %16, i32** %9, align 8
  br label %17

17:                                               ; preds = %69, %13
  %18 = load i32*, i32** %5, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @zend_hash_get_current_key_ex(i32* %18, i32** %6, i32* %7, i32* %19)
  %21 = load i64, i64* @HASH_KEY_IS_STRING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32* @zend_hash_get_current_data_ex(i32* %24, i32* %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %23
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @Z_TYPE_P(i32* %30)
  %32 = load i64, i64* @IS_INDIRECT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @Z_INDIRECT_P(i32* %35)
  store i32* %36, i32** %8, align 8
  %37 = call i64 @Z_TYPE_P(i32* %36)
  %38 = load i64, i64* @IS_UNDEF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %54

41:                                               ; preds = %34, %29, %23
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @ZSTR_LEN(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = call i64* @ZSTR_VAL(i32* %46)
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %41
  %52 = load i32, i32* @SUCCESS, align 4
  store i32 %52, i32* %3, align 4
  br label %73

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %40
  br label %57

55:                                               ; preds = %17
  %56 = load i32, i32* @SUCCESS, align 4
  store i32 %56, i32* %3, align 4
  br label %73

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @zend_hash_has_more_elements_ex(i32* %58, i32* %59)
  %61 = load i32, i32* @SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @FAILURE, align 4
  store i32 %64, i32* %3, align 4
  br label %73

65:                                               ; preds = %57
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @zend_hash_move_forward_ex(i32* %66, i32* %67)
  br label %69

69:                                               ; preds = %65
  br i1 true, label %17, label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70, %2
  %72 = load i32, i32* @FAILURE, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %63, %55, %51
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @spl_array_is_object(i32*) #1

declare dso_local i32* @spl_array_get_pos_ptr(i32*, i32*) #1

declare dso_local i64 @zend_hash_get_current_key_ex(i32*, i32**, i32*, i32*) #1

declare dso_local i32* @zend_hash_get_current_data_ex(i32*, i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32* @Z_INDIRECT_P(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i64* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_hash_has_more_elements_ex(i32*, i32*) #1

declare dso_local i32 @zend_hash_move_forward_ex(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

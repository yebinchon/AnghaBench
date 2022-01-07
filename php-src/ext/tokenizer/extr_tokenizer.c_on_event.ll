; ModuleID = '/home/carl/AnghaBench/php-src/ext/tokenizer/extr_tokenizer.c_on_event.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/tokenizer/extr_tokenizer.c_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@END = common dso_local global i32 0, align 4
@yy_leng = common dso_local global i32 0, align 4
@T_CLOSE_TAG = common dso_local global i32 0, align 4
@T_ECHO = common dso_local global i32 0, align 4
@T_OPEN_TAG_WITH_ECHO = common dso_local global i32 0, align 4
@yy_text = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i32 0, align 4
@yy_cursor = common dso_local global i32 0, align 4
@yy_limit = common dso_local global i32 0, align 4
@T_INLINE_HTML = common dso_local global i32 0, align 4
@zend_lineno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_event(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %92 [
    i32 128, label %15
    i32 130, label %50
    i32 129, label %72
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @END, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %92

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 59
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @yy_leng, align 4
  %25 = call i32 @LANG_SCNG(i32 %24)
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @T_CLOSE_TAG, align 4
  store i32 %28, i32* %6, align 4
  br label %41

29:                                               ; preds = %23, %20
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @T_ECHO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* @yy_leng, align 4
  %35 = call i32 @LANG_SCNG(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @T_OPEN_TAG_WITH_ECHO, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %33, %29
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @yy_text, align 4
  %45 = call i32 @LANG_SCNG(i32 %44)
  %46 = load i32, i32* @yy_leng, align 4
  %47 = call i32 @LANG_SCNG(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @add_token(i32* %42, i32 %43, i32 %45, i32 %47, i32 %48)
  br label %92

50:                                               ; preds = %4
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @Z_ARRVAL_P(i32* %51)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @zend_hash_num_elements(i32* %54)
  %56 = sub nsw i32 %55, 1
  %57 = call i32* @zend_hash_index_find(i32* %53, i32 %56)
  store i32* %57, i32** %11, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %50
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @Z_TYPE_P(i32* %61)
  %63 = load i32, i32* @IS_ARRAY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load i32*, i32** %11, align 8
  %67 = call i32* @Z_ARRVAL_P(i32* %66)
  %68 = call i32* @zend_hash_index_find(i32* %67, i32 0)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ZVAL_LONG(i32* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %60, %50
  br label %92

72:                                               ; preds = %4
  %73 = load i32, i32* @yy_cursor, align 4
  %74 = call i32 @LANG_SCNG(i32 %73)
  %75 = load i32, i32* @yy_limit, align 4
  %76 = call i32 @LANG_SCNG(i32 %75)
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* @T_INLINE_HTML, align 4
  %81 = load i32, i32* @yy_cursor, align 4
  %82 = call i32 @LANG_SCNG(i32 %81)
  %83 = load i32, i32* @yy_limit, align 4
  %84 = call i32 @LANG_SCNG(i32 %83)
  %85 = load i32, i32* @yy_cursor, align 4
  %86 = call i32 @LANG_SCNG(i32 %85)
  %87 = sub nsw i32 %84, %86
  %88 = load i32, i32* @zend_lineno, align 4
  %89 = call i32 @CG(i32 %88)
  %90 = call i32 @add_token(i32* %79, i32 %80, i32 %82, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %78, %72
  br label %92

92:                                               ; preds = %4, %91, %71, %41, %19
  ret void
}

declare dso_local i32 @LANG_SCNG(i32) #1

declare dso_local i32 @add_token(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @Z_ARRVAL_P(i32*) #1

declare dso_local i32* @zend_hash_index_find(i32*, i32) #1

declare dso_local i32 @zend_hash_num_elements(i32*) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @CG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_next.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i32* }
%struct.macro_level = type { i32 }

@parse_flags = common dso_local global i32 0, align 4
@PARSE_FLAG_SPACES = common dso_local global i32 0, align 4
@macro_ptr = common dso_local global i32* null, align 8
@tok = common dso_local global i64 0, align 8
@TOK_IDENT = common dso_local global i64 0, align 8
@PARSE_FLAG_PREPROCESS = common dso_local global i32 0, align 4
@macro_ptr_allocated = common dso_local global i32* null, align 8
@unget_buffer_enabled = common dso_local global i64 0, align 8
@unget_saved_macro_ptr = common dso_local global i32* null, align 8
@TOK_NOSUBST = common dso_local global i64 0, align 8
@TOK_PPNUM = common dso_local global i64 0, align 8
@PARSE_FLAG_TOK_NUM = common dso_local global i32 0, align 4
@tokc = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__, align 8
  %4 = alloca %struct.macro_level*, align 8
  br label %5

5:                                                ; preds = %61, %56, %36, %0
  %6 = load i32, i32* @parse_flags, align 4
  %7 = load i32, i32* @PARSE_FLAG_SPACES, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = call i32 (...) @next_nomacro_spc()
  br label %14

12:                                               ; preds = %5
  %13 = call i32 (...) @next_nomacro()
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32*, i32** @macro_ptr, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %14
  %18 = load i64, i64* @tok, align 8
  %19 = load i64, i64* @TOK_IDENT, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32, i32* @parse_flags, align 4
  %23 = load i32, i32* @PARSE_FLAG_PREPROCESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i64, i64* @tok, align 8
  %28 = call i32* @define_find(i64 %27)
  store i32* %28, i32** %2, align 8
  %29 = load i32*, i32** %2, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = call i32 @tok_str_new(%struct.TYPE_8__* %3)
  store i32* null, i32** %1, align 8
  store %struct.macro_level* null, %struct.macro_level** %4, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @macro_subst_tok(%struct.TYPE_8__* %3, i32** %1, i32* %33, %struct.macro_level** %4)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = call i32 @tok_str_add(%struct.TYPE_8__* %3, i32 0)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** @macro_ptr, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** @macro_ptr_allocated, align 8
  br label %5

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %26
  br label %44

44:                                               ; preds = %43, %21, %17
  br label %64

45:                                               ; preds = %14
  %46 = load i64, i64* @tok, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load i64, i64* @unget_buffer_enabled, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32*, i32** @unget_saved_macro_ptr, align 8
  store i32* %52, i32** @macro_ptr, align 8
  store i64 0, i64* @unget_buffer_enabled, align 8
  br label %56

53:                                               ; preds = %48
  %54 = load i32*, i32** @macro_ptr_allocated, align 8
  %55 = call i32 @tok_str_free(i32* %54)
  store i32* null, i32** @macro_ptr_allocated, align 8
  store i32* null, i32** @macro_ptr, align 8
  br label %56

56:                                               ; preds = %53, %51
  br label %5

57:                                               ; preds = %45
  %58 = load i64, i64* @tok, align 8
  %59 = load i64, i64* @TOK_NOSUBST, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %5

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %44
  %65 = load i64, i64* @tok, align 8
  %66 = load i64, i64* @TOK_PPNUM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i32, i32* @parse_flags, align 4
  %70 = load i32, i32* @PARSE_FLAG_TOK_NUM, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tokc, i32 0, i32 0), align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @parse_number(i8* %77)
  br label %79

79:                                               ; preds = %73, %68, %64
  ret void
}

declare dso_local i32 @next_nomacro_spc(...) #1

declare dso_local i32 @next_nomacro(...) #1

declare dso_local i32* @define_find(i64) #1

declare dso_local i32 @tok_str_new(%struct.TYPE_8__*) #1

declare dso_local i64 @macro_subst_tok(%struct.TYPE_8__*, i32**, i32*, %struct.macro_level**) #1

declare dso_local i32 @tok_str_add(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @tok_str_free(i32*) #1

declare dso_local i32 @parse_number(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

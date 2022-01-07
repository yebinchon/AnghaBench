; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_macro_subst.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_macro_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_level = type { i32*, %struct.macro_level* }

@TOK_NOSUBST = common dso_local global i32 0, align 4
@macro_ptr = common dso_local global i32* null, align 8
@tok = common dso_local global i32 0, align 4
@parse_flags = common dso_local global i32 0, align 4
@PARSE_FLAG_SPACES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32**, i32*, %struct.macro_level**)* @macro_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macro_subst(i32* %0, i32** %1, i32* %2, %struct.macro_level** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.macro_level**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.macro_level, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.macro_level** %3, %struct.macro_level*** %8, align 8
  %18 = load i32*, i32** %7, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32* @macro_twosharps(i32* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** %10, align 8
  store i32* %24, i32** %11, align 8
  br label %25

25:                                               ; preds = %23, %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %120, %25
  %27 = call i64 (...) @tcc_nerr()
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %121

29:                                               ; preds = %26
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %121

33:                                               ; preds = %29
  %34 = call i32 @TOK_GET(i32* %12, i32** %11, i32* %15)
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %121

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @TOK_NOSUBST, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @TOK_NOSUBST, align 4
  %45 = call i32 @tok_str_add2(i32* %43, i32 %44, i32* null)
  %46 = call i32 @TOK_GET(i32* %12, i32** %11, i32* %15)
  br label %105

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = call i32* @define_find(i32 %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %104

52:                                               ; preds = %47
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i64 @sym_find2(i32* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* @TOK_NOSUBST, align 4
  %61 = call i32 @tok_str_add2(i32* %59, i32 %60, i32* null)
  br label %105

62:                                               ; preds = %52
  %63 = load i32*, i32** @macro_ptr, align 8
  %64 = getelementptr inbounds %struct.macro_level, %struct.macro_level* %16, i32 0, i32 0
  store i32* %63, i32** %64, align 8
  %65 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  %66 = icmp ne %struct.macro_level** %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  %69 = load %struct.macro_level*, %struct.macro_level** %68, align 8
  %70 = getelementptr inbounds %struct.macro_level, %struct.macro_level* %16, i32 0, i32 1
  store %struct.macro_level* %69, %struct.macro_level** %70, align 8
  %71 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  store %struct.macro_level* %16, %struct.macro_level** %71, align 8
  br label %72

72:                                               ; preds = %67, %62
  %73 = load i32*, i32** %11, align 8
  store i32* %73, i32** @macro_ptr, align 8
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* @tok, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = load i32**, i32*** %6, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  %79 = call i32 @macro_subst_tok(i32* %75, i32** %76, i32* %77, %struct.macro_level** %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** @macro_ptr, align 8
  store i32* %80, i32** %11, align 8
  %81 = getelementptr inbounds %struct.macro_level, %struct.macro_level* %16, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** @macro_ptr, align 8
  %83 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  %84 = icmp ne %struct.macro_level** %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %72
  %86 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  %87 = load %struct.macro_level*, %struct.macro_level** %86, align 8
  %88 = icmp eq %struct.macro_level* %87, %16
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.macro_level, %struct.macro_level* %16, i32 0, i32 1
  %91 = load %struct.macro_level*, %struct.macro_level** %90, align 8
  %92 = load %struct.macro_level**, %struct.macro_level*** %8, align 8
  store %struct.macro_level* %91, %struct.macro_level** %92, align 8
  br label %93

93:                                               ; preds = %89, %85, %72
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %105

97:                                               ; preds = %93
  %98 = load i32, i32* @parse_flags, align 4
  %99 = load i32, i32* @PARSE_FLAG_SPACES, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 1, i32* %17, align 4
  br label %103

103:                                              ; preds = %102, %97
  br label %120

104:                                              ; preds = %47
  br label %105

105:                                              ; preds = %104, %96, %58, %42
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @tok_str_add(i32* %109, i8 signext 32)
  store i32 1, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @check_space(i32 %112, i32* %14)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32*, i32** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @tok_str_add2(i32* %116, i32 %117, i32* %15)
  br label %119

119:                                              ; preds = %115, %111
  br label %120

120:                                              ; preds = %119, %103
  br label %26

121:                                              ; preds = %37, %32, %26
  %122 = load i32*, i32** %10, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @tok_str_free(i32* %125)
  br label %127

127:                                              ; preds = %124, %121
  ret void
}

declare dso_local i32* @macro_twosharps(i32*) #1

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @TOK_GET(i32*, i32**, i32*) #1

declare dso_local i32 @tok_str_add2(i32*, i32, i32*) #1

declare dso_local i32* @define_find(i32) #1

declare dso_local i64 @sym_find2(i32*, i32) #1

declare dso_local i32 @macro_subst_tok(i32*, i32**, i32*, %struct.macro_level**) #1

declare dso_local i32 @tok_str_add(i32*, i8 signext) #1

declare dso_local i32 @check_space(i32, i32*) #1

declare dso_local i32 @tok_str_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

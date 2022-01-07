; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_macro_twosharps.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_macro_twosharps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, i64 }

@TOK_TWOSHARPS = common dso_local global i32 0, align 4
@tok = common dso_local global i32 0, align 4
@tokc = common dso_local global i32 0, align 4
@TOK_NOSUBST = common dso_local global i32 0, align 4
@tcc_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c":paste:\00", align 1
@file = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"pasting \22%.*s\22 and \22%s\22 does not give a valid preprocessing token\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @macro_twosharps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @macro_twosharps(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  store i32* %12, i32** %4, align 8
  br label %13

13:                                               ; preds = %23, %1
  %14 = call i32 @TOK_GET(i32* %5, i32** %4, i32* %10)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @TOK_TWOSHARPS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %24

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %143

23:                                               ; preds = %19
  br label %13

24:                                               ; preds = %18
  store i32 -1, i32* %9, align 4
  %25 = call i32 @tok_str_new(%struct.TYPE_11__* %6)
  %26 = load i32*, i32** %3, align 8
  store i32* %26, i32** %4, align 8
  br label %27

27:                                               ; preds = %136, %36, %24
  %28 = call i32 @TOK_GET(i32* @tok, i32** %4, i32* @tokc)
  %29 = load i32, i32* @tok, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %139

32:                                               ; preds = %27
  %33 = load i32, i32* @tok, align 4
  %34 = load i32, i32* @TOK_TWOSHARPS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %27

37:                                               ; preds = %32
  %38 = load i32, i32* @tok, align 4
  %39 = load i32, i32* @TOK_NOSUBST, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %41, %37
  br label %48

48:                                               ; preds = %130, %47
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TOK_TWOSHARPS, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %131

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %67, %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @TOK_NOSUBST, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %4, align 8
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  br label %63

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %130

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @TOK_TWOSHARPS, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %130

78:                                               ; preds = %74
  %79 = call i32 @TOK_GET(i32* %5, i32** %4, i32* %11)
  %80 = call i32 @cstr_new(%struct.TYPE_12__* %7)
  %81 = load i32, i32* @tok, align 4
  %82 = call i32 @get_tok_str(i32 %81, i32* @tokc)
  %83 = call i32 @cstr_cat(%struct.TYPE_12__* %7, i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @get_tok_str(i32 %86, i32* %11)
  %88 = call i32 @cstr_cat(%struct.TYPE_12__* %7, i32 %87)
  %89 = call i32 @cstr_ccat(%struct.TYPE_12__* %7, i8 signext 0)
  %90 = load i32, i32* @tcc_state, align 4
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @tcc_open_bf(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @file, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @memcpy(i32 %96, i64 %98, i32 %100)
  br label %102

102:                                              ; preds = %113, %78
  %103 = call i64 (...) @tcc_nerr()
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = call i32 (...) @next_nomacro1()
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** @file, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 0, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %127

113:                                              ; preds = %105
  %114 = load i32, i32* @tok, align 4
  %115 = call i32 @tok_str_add2(%struct.TYPE_11__* %6, i32 %114, i32* @tokc)
  %116 = load i32, i32* %8, align 4
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i8*
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = call i32 @tcc_warning(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %116, i8* %119, i8* %125)
  br label %102

127:                                              ; preds = %112, %102
  %128 = call i32 (...) @tcc_close()
  %129 = call i32 @cstr_free(%struct.TYPE_12__* %7)
  br label %130

130:                                              ; preds = %127, %74, %71
  br label %48

131:                                              ; preds = %48
  %132 = load i32, i32* @tok, align 4
  %133 = load i32, i32* @TOK_NOSUBST, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i32 -1, i32* %9, align 4
  br label %136

136:                                              ; preds = %135, %131
  %137 = load i32, i32* @tok, align 4
  %138 = call i32 @tok_str_add2(%struct.TYPE_11__* %6, i32 %137, i32* @tokc)
  br label %27

139:                                              ; preds = %31
  %140 = call i32 @tok_str_add(%struct.TYPE_11__* %6, i32 0)
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %2, align 8
  br label %143

143:                                              ; preds = %139, %22
  %144 = load i32*, i32** %2, align 8
  ret i32* %144
}

declare dso_local i32 @TOK_GET(i32*, i32**, i32*) #1

declare dso_local i32 @tok_str_new(%struct.TYPE_11__*) #1

declare dso_local i32 @cstr_new(%struct.TYPE_12__*) #1

declare dso_local i32 @cstr_cat(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @get_tok_str(i32, i32*) #1

declare dso_local i32 @cstr_ccat(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @tcc_open_bf(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @next_nomacro1(...) #1

declare dso_local i32 @tok_str_add2(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @tcc_warning(i8*, i32, i8*, i8*) #1

declare dso_local i32 @tcc_close(...) #1

declare dso_local i32 @cstr_free(%struct.TYPE_12__*) #1

declare dso_local i32 @tok_str_add(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

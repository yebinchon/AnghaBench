; ModuleID = '/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_macro_arg_subst.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/tcc/extr_tccpp.c_macro_arg_subst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, i8* }

@TOK_STR = common dso_local global i32 0, align 4
@TOK_IDENT = common dso_local global i32 0, align 4
@TOK_TWOSHARPS = common dso_local global i32 0, align 4
@gnu_ext = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_24__**, i32*, %struct.TYPE_24__*)* @macro_arg_subst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @macro_arg_subst(%struct.TYPE_24__** %0, i32* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_24__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_25__, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca %struct.TYPE_26__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_24__** %0, %struct.TYPE_24__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %6, align 8
  %16 = call i32 @tok_str_new(%struct.TYPE_23__* %13)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %160, %3
  %18 = call i64 (...) @tcc_nerr()
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %162

20:                                               ; preds = %17
  %21 = call i32 @TOK_GET(i32* %8, i32** %5, %struct.TYPE_25__* %12)
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %162

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %72

28:                                               ; preds = %25
  %29 = call i32 @TOK_GET(i32* %8, i32** %5, %struct.TYPE_25__* %12)
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %162

33:                                               ; preds = %28
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.TYPE_24__* @sym_find2(%struct.TYPE_24__* %34, i32 %35)
  store %struct.TYPE_24__* %36, %struct.TYPE_24__** %11, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %38 = icmp ne %struct.TYPE_24__* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = call i32 @cstr_new(%struct.TYPE_26__* %14)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %10, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %57, %39
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = call i32 @TOK_GET(i32* %8, i32** %10, %struct.TYPE_25__* %12)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @check_space(i32 %50, i32* %9)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @get_tok_str(i32 %54, %struct.TYPE_25__* %12)
  %56 = call i32 @cstr_cat(%struct.TYPE_26__* %14, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %44

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, %59
  store i32 %62, i32* %60, align 8
  %63 = call i32 @cstr_ccat(%struct.TYPE_26__* %14, i8 signext 0)
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %64, align 8
  %65 = load i32, i32* @TOK_STR, align 4
  %66 = call i32 @tok_str_add2(%struct.TYPE_23__* %13, i32 %65, %struct.TYPE_25__* %12)
  %67 = call i32 @cstr_free(%struct.TYPE_26__* %14)
  br label %71

68:                                               ; preds = %33
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @tok_str_add2(%struct.TYPE_23__* %13, i32 %69, %struct.TYPE_25__* %12)
  br label %71

71:                                               ; preds = %68, %58
  br label %160

72:                                               ; preds = %25
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @TOK_IDENT, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %156

76:                                               ; preds = %72
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call %struct.TYPE_24__* @sym_find2(%struct.TYPE_24__* %77, i32 %78)
  store %struct.TYPE_24__* %79, %struct.TYPE_24__** %11, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %81 = icmp ne %struct.TYPE_24__* %80, null
  br i1 %81, label %82, label %152

82:                                               ; preds = %76
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  store i32* %85, i32** %10, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TOK_TWOSHARPS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @TOK_TWOSHARPS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %147

94:                                               ; preds = %90, %82
  %95 = load i64, i64* @gnu_ext, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %135

97:                                               ; preds = %94
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @TOK_TWOSHARPS, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %135

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sge i32 %109, 2
  br i1 %110, label %111, label %135

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 44
  br i1 %121, label %122, label %135

122:                                              ; preds = %111
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 2
  store i32 %129, i32* %127, align 8
  br label %134

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 8
  br label %136

134:                                              ; preds = %126
  br label %146

135:                                              ; preds = %111, %107, %103, %97, %94
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %142, %136
  %138 = call i32 @TOK_GET(i32* %15, i32** %10, %struct.TYPE_25__* %12)
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %137
  br label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %15, align 4
  %144 = call i32 @tok_str_add2(%struct.TYPE_23__* %13, i32 %143, %struct.TYPE_25__* %12)
  br label %137

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %134
  br label %151

147:                                              ; preds = %90
  %148 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %4, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @macro_subst(%struct.TYPE_23__* %13, %struct.TYPE_24__** %148, i32* %149, i32* null)
  br label %151

151:                                              ; preds = %147, %146
  br label %155

152:                                              ; preds = %76
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @tok_str_add(%struct.TYPE_23__* %13, i32 %153)
  br label %155

155:                                              ; preds = %152, %151
  br label %159

156:                                              ; preds = %72
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @tok_str_add2(%struct.TYPE_23__* %13, i32 %157, %struct.TYPE_25__* %12)
  br label %159

159:                                              ; preds = %156, %155
  br label %160

160:                                              ; preds = %159, %71
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %7, align 4
  br label %17

162:                                              ; preds = %32, %24, %17
  %163 = call i32 @tok_str_add(%struct.TYPE_23__* %13, i32 0)
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = bitcast i8* %165 to i32*
  ret i32* %166
}

declare dso_local i32 @tok_str_new(%struct.TYPE_23__*) #1

declare dso_local i64 @tcc_nerr(...) #1

declare dso_local i32 @TOK_GET(i32*, i32**, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @sym_find2(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @cstr_new(%struct.TYPE_26__*) #1

declare dso_local i32 @check_space(i32, i32*) #1

declare dso_local i32 @cstr_cat(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @get_tok_str(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @cstr_ccat(%struct.TYPE_26__*, i8 signext) #1

declare dso_local i32 @tok_str_add2(%struct.TYPE_23__*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @cstr_free(%struct.TYPE_26__*) #1

declare dso_local i32 @macro_subst(%struct.TYPE_23__*, %struct.TYPE_24__**, i32*, i32*) #1

declare dso_local i32 @tok_str_add(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

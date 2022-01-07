; ModuleID = '/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_strpos_utf16.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/intl/grapheme/extr_grapheme_util.c_grapheme_strpos_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@U_BRK_SAFECLONE_BUFFERSIZE = common dso_local global i32 0, align 4
@U_ZERO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error converting input string to UTF-16\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Error converting needle string to UTF-16\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failed to get iterator\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to set up iterator\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error creating search object\00", align 1
@UCOL_STRENGTH = common dso_local global i32 0, align 4
@UCOL_SECONDARY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Error setting collation strength\00", align 1
@U_ILLEGAL_ARGUMENT_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Invalid search offset\00", align 1
@USEARCH_DONE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"Error looking up string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @grapheme_strpos_utf16(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %23, align 4
  %30 = load i32, i32* @U_BRK_SAFECLONE_BUFFERSIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %24, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %25, align 8
  store i32* null, i32** %26, align 8
  store i32* null, i32** %28, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %8
  %37 = load i32*, i32** %14, align 8
  store i32 -1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %8
  %39 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %39, i32* %27, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @intl_convert_utf8_to_utf16(i32** %17, i32* %19, i8* %40, i64 %41, i32* %27)
  %43 = load i32, i32* %27, align 4
  %44 = call i32 @STRPOS_CHECK_STATUS(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %45, i32* %27, align 4
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %12, align 8
  %48 = call i32 @intl_convert_utf8_to_utf16(i32** %18, i32* %20, i8* %46, i64 %47, i32* %27)
  %49 = load i32, i32* %27, align 4
  %50 = call i32 @STRPOS_CHECK_STATUS(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %51, i32* %27, align 4
  %52 = call i32* @grapheme_get_break_iterator(i8* %33, i32* %27)
  store i32* %52, i32** %26, align 8
  %53 = load i32, i32* %27, align 4
  %54 = call i32 @STRPOS_CHECK_STATUS(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %55, i32* %27, align 4
  %56 = load i32*, i32** %26, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = load i32, i32* %19, align 4
  %59 = call i32 @ubrk_setText(i32* %56, i32* %57, i32 %58, i32* %27)
  %60 = load i32, i32* %27, align 4
  %61 = call i32 @STRPOS_CHECK_STATUS(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %62, i32* %27, align 4
  %63 = load i32*, i32** %18, align 8
  %64 = load i32, i32* %20, align 4
  %65 = load i32*, i32** %17, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i32*, i32** %26, align 8
  %68 = call i32* @usearch_open(i32* %63, i32 %64, i32* %65, i32 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32* %67, i32* %27)
  store i32* %68, i32** %28, align 8
  %69 = load i32, i32* %27, align 4
  %70 = call i32 @STRPOS_CHECK_STATUS(i32 %69, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %38
  %74 = load i32*, i32** %28, align 8
  %75 = call i32* @usearch_getCollator(i32* %74)
  store i32* %75, i32** %29, align 8
  %76 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %76, i32* %27, align 4
  %77 = load i32*, i32** %29, align 8
  %78 = load i32, i32* @UCOL_STRENGTH, align 4
  %79 = load i32, i32* @UCOL_SECONDARY, align 4
  %80 = call i32 @ucol_setAttribute(i32* %77, i32 %78, i32 %79, i32* %27)
  %81 = load i32, i32* %27, align 4
  %82 = call i32 @STRPOS_CHECK_STATUS(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i32*, i32** %28, align 8
  %84 = call i32 @usearch_reset(i32* %83)
  br label %85

85:                                               ; preds = %73, %38
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load i32*, i32** %26, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @grapheme_get_haystack_offset(i32* %89, i32 %90)
  store i32 %91, i32* %23, align 4
  %92 = load i32, i32* %23, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @U_ILLEGAL_ARGUMENT_ERROR, align 4
  store i32 %95, i32* %27, align 4
  %96 = load i32, i32* %27, align 4
  %97 = call i32 @STRPOS_CHECK_STATUS(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* @U_ZERO_ERROR, align 4
  store i32 %99, i32* %27, align 4
  %100 = load i32*, i32** %28, align 8
  %101 = load i32, i32* %23, align 4
  %102 = call i32 @usearch_setOffset(i32* %100, i32 %101, i32* %27)
  %103 = load i32, i32* %27, align 4
  %104 = call i32 @STRPOS_CHECK_STATUS(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %98, %85
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load i32*, i32** %28, align 8
  %110 = call i32 @usearch_last(i32* %109, i32* %27)
  store i32 %110, i32* %21, align 4
  %111 = load i32, i32* %21, align 4
  %112 = load i32, i32* %23, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* @USEARCH_DONE, align 4
  store i32 %115, i32* %21, align 4
  br label %116

116:                                              ; preds = %114, %108
  br label %120

117:                                              ; preds = %105
  %118 = load i32*, i32** %28, align 8
  %119 = call i32 @usearch_next(i32* %118, i32* %27)
  store i32 %119, i32* %21, align 4
  br label %120

120:                                              ; preds = %117, %116
  %121 = load i32, i32* %27, align 4
  %122 = call i32 @STRPOS_CHECK_STATUS(i32 %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32, i32* %21, align 4
  %124 = load i32, i32* @USEARCH_DONE, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %142

126:                                              ; preds = %120
  %127 = load i32*, i32** %26, align 8
  %128 = load i32, i32* %21, align 4
  %129 = call i64 @ubrk_isBoundary(i32* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load i32*, i32** %26, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = load i32, i32* %21, align 4
  %135 = call i32 @grapheme_count_graphemes(i32* %132, i32* %133, i32 %134)
  store i32 %135, i32* %22, align 4
  %136 = load i32*, i32** %14, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load i32, i32* %21, align 4
  %140 = load i32*, i32** %14, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %131
  br label %143

142:                                              ; preds = %126, %120
  store i32 -1, i32* %22, align 4
  br label %143

143:                                              ; preds = %142, %141
  %144 = load i32*, i32** %17, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @efree(i32* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32*, i32** %18, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32*, i32** %18, align 8
  %154 = call i32 @efree(i32* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32*, i32** %26, align 8
  %157 = call i32 @ubrk_close(i32* %156)
  %158 = load i32*, i32** %28, align 8
  %159 = call i32 @usearch_close(i32* %158)
  %160 = load i32, i32* %22, align 4
  %161 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %161)
  ret i32 %160
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @intl_convert_utf8_to_utf16(i32**, i32*, i8*, i64, i32*) #2

declare dso_local i32 @STRPOS_CHECK_STATUS(i32, i8*) #2

declare dso_local i32* @grapheme_get_break_iterator(i8*, i32*) #2

declare dso_local i32 @ubrk_setText(i32*, i32*, i32, i32*) #2

declare dso_local i32* @usearch_open(i32*, i32, i32*, i32, i8*, i32*, i32*) #2

declare dso_local i32* @usearch_getCollator(i32*) #2

declare dso_local i32 @ucol_setAttribute(i32*, i32, i32, i32*) #2

declare dso_local i32 @usearch_reset(i32*) #2

declare dso_local i32 @grapheme_get_haystack_offset(i32*, i32) #2

declare dso_local i32 @usearch_setOffset(i32*, i32, i32*) #2

declare dso_local i32 @usearch_last(i32*, i32*) #2

declare dso_local i32 @usearch_next(i32*, i32*) #2

declare dso_local i64 @ubrk_isBoundary(i32*, i32) #2

declare dso_local i32 @grapheme_count_graphemes(i32*, i32*, i32) #2

declare dso_local i32 @efree(i32*) #2

declare dso_local i32 @ubrk_close(i32*) #2

declare dso_local i32 @usearch_close(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

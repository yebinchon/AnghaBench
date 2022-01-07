; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_utils.c_phpdbg_short_zval_print.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_utils.c_phpdbg_short_zval_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@ZEND_LONG_FMT = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%.*G\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"\\\22\0A\09\00\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\22%.*s\22%c\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Rsrc #%d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"array(%d)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%.*s%c\00", align 1
@ZEND_AST_CONSTANT = common dso_local global i32 0, align 4
@ZEND_AST_CONSTANT_CLASS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"<constant>\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"<ast>\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"unknown type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @phpdbg_short_zval_print(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @Z_TYPE_P(i32* %12)
  switch i32 %13, label %174 [
    i32 128, label %14
    i32 133, label %16
    i32 135, label %18
    i32 129, label %20
    i32 134, label %22
    i32 136, label %27
    i32 130, label %67
    i32 131, label %120
    i32 138, label %124
    i32 132, label %129
    i32 137, label %155
  ]

14:                                               ; preds = %2
  %15 = call i8* @estrdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %5, align 8
  br label %178

16:                                               ; preds = %2
  %17 = call i8* @estrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  br label %178

18:                                               ; preds = %2
  %19 = call i8* @estrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %5, align 8
  br label %178

20:                                               ; preds = %2
  %21 = call i8* @estrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  br label %178

22:                                               ; preds = %2
  %23 = load i8*, i8** @ZEND_LONG_FMT, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @Z_LVAL_P(i32* %24)
  %26 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* %23, i32 %25)
  br label %178

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @Z_DVAL_P(i32* %28)
  %30 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 14, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @Z_DVAL_P(i32* %31)
  %33 = call i32 @zend_finite(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strchr(i8* %36, i8 signext 46)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strlen(i8* %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %44 = add i64 %42, %43
  %45 = add i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @emalloc(i32 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @memcpy(i8* %48, i8* %49, i64 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 46, i8* %54, align 1
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8 48, i8* %58, align 1
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 2
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = call i32 @efree(i8* %63)
  %65 = load i8*, i8** %7, align 8
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %39, %35, %27
  br label %178

67:                                               ; preds = %2
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @Z_STR_P(i32* %68)
  %70 = call i32* @php_addcslashes(i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  store i32* %70, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %91, %67
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @ZSTR_LEN(i32* %73)
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32*, i32** %9, align 8
  %78 = call i32* @ZSTR_VAL(i32* %77)
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 32
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load i32*, i32** %9, align 8
  %86 = call i32* @ZSTR_VAL(i32* %85)
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 32, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %76
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %71

94:                                               ; preds = %71
  %95 = load i32*, i32** %9, align 8
  %96 = call i32 @ZSTR_LEN(i32* %95)
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 2
  %99 = icmp sle i32 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @ZSTR_LEN(i32* %101)
  br label %106

103:                                              ; preds = %94
  %104 = load i32, i32* %4, align 4
  %105 = sub nsw i32 %104, 3
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i32 [ %102, %100 ], [ %105, %103 ]
  %108 = load i32*, i32** %9, align 8
  %109 = call i32* @ZSTR_VAL(i32* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @ZSTR_LEN(i32* %110)
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %112, 2
  %114 = icmp sle i32 %111, %113
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 0, i32 43
  %117 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32* %109, i32 %116)
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @zend_string_release(i32* %118)
  br label %178

120:                                              ; preds = %2
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @Z_RES_HANDLE_P(i32* %121)
  %123 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  br label %178

124:                                              ; preds = %2
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @Z_ARR_P(i32* %125)
  %127 = call i32 @zend_hash_num_elements(i32 %126)
  %128 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  br label %178

129:                                              ; preds = %2
  %130 = load i32*, i32** %3, align 8
  %131 = call %struct.TYPE_5__* @Z_OBJCE_P(i32* %130)
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %10, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = call i32 @ZSTR_LEN(i32* %134)
  %136 = load i32, i32* %4, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load i32*, i32** %10, align 8
  %140 = call i32 @ZSTR_LEN(i32* %139)
  br label %144

141:                                              ; preds = %129
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 %142, 1
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi i32 [ %140, %138 ], [ %143, %141 ]
  %146 = load i32*, i32** %10, align 8
  %147 = call i32* @ZSTR_VAL(i32* %146)
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @ZSTR_LEN(i32* %148)
  %150 = load i32, i32* %4, align 4
  %151 = icmp sle i32 %149, %150
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 0, i32 43
  %154 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %145, i32* %147, i32 %153)
  br label %178

155:                                              ; preds = %2
  %156 = load i32*, i32** %3, align 8
  %157 = call %struct.TYPE_4__* @Z_ASTVAL_P(i32* %156)
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %11, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ZEND_AST_CONSTANT, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %155
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ZEND_AST_CONSTANT_CLASS, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %163, %155
  %170 = call i8* @estrdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  store i8* %170, i8** %5, align 8
  br label %173

171:                                              ; preds = %163
  %172 = call i8* @estrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  store i8* %172, i8** %5, align 8
  br label %173

173:                                              ; preds = %171, %169
  br label %178

174:                                              ; preds = %2
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @Z_TYPE_P(i32* %175)
  %177 = call i32 (i8**, i32, i8*, i32, ...) @spprintf(i8** %5, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %176)
  br label %178

178:                                              ; preds = %174, %173, %144, %124, %120, %106, %66, %22, %20, %18, %16, %14
  %179 = load i8*, i8** %5, align 8
  ret i8* %179
}

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @spprintf(i8**, i32, i8*, i32, ...) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @Z_DVAL_P(i32*) #1

declare dso_local i32 @zend_finite(i32) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32* @php_addcslashes(i32, i8*, i32) #1

declare dso_local i32 @Z_STR_P(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32 @Z_RES_HANDLE_P(i32*) #1

declare dso_local i32 @zend_hash_num_elements(i32) #1

declare dso_local i32 @Z_ARR_P(i32*) #1

declare dso_local %struct.TYPE_5__* @Z_OBJCE_P(i32*) #1

declare dso_local %struct.TYPE_4__* @Z_ASTVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

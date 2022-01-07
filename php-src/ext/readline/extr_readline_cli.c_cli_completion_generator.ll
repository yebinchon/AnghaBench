; ModuleID = '/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_completion_generator.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/readline/extr_readline_cli.c_cli_completion_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32 }

@cli_completion_state = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@function_table = common dso_local global i32 0, align 4
@zend_constants = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s::%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @cli_completion_generator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cli_completion_generator(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* @cli_completion_state, align 4
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i8* @cli_completion_generator_var(i8* %28, i64 %29, i32* @cli_completion_state)
  store i8* %30, i8** %6, align 8
  br label %167

31:                                               ; preds = %21
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i8* @cli_completion_generator_ini(i8* %38, i64 %39, i32* @cli_completion_state)
  store i8* %40, i8** %6, align 8
  br label %166

41:                                               ; preds = %31
  store i32* null, i32** %10, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strstr(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32* @zend_string_alloc(i64 %52, i32 0)
  store i32* %53, i32** %10, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i8* @ZSTR_VAL(i32* %54)
  %56 = load i8*, i8** %4, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @zend_str_tolower_copy(i8* %55, i8* %56, i64 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = call %struct.TYPE_3__* @zend_lookup_class(i32* %59)
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %11, align 8
  %61 = icmp eq %struct.TYPE_3__* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %46
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @zend_string_release_ex(i32* %63, i32 0)
  store i8* null, i8** %3, align 8
  br label %169

65:                                               ; preds = %46
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %68, 2
  %70 = load i64, i64* %12, align 8
  %71 = sub i64 %69, %70
  %72 = call i8* @zend_str_tolower_dup(i8* %67, i64 %71)
  store i8* %72, i8** %8, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 2
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %7, align 8
  br label %81

77:                                               ; preds = %41
  %78 = load i8*, i8** %4, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i8* @zend_str_tolower_dup(i8* %78, i64 %79)
  store i8* %80, i8** %8, align 8
  br label %81

81:                                               ; preds = %77, %65
  %82 = load i32, i32* @cli_completion_state, align 4
  switch i32 %82, label %126 [
    i32 0, label %83
    i32 1, label %83
    i32 2, label %101
    i32 3, label %101
    i32 4, label %122
    i32 5, label %122
  ]

83:                                               ; preds = %81, %81
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = icmp ne %struct.TYPE_3__* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* @function_table, align 4
  %93 = call i32* @EG(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32* [ %90, %88 ], [ %93, %91 ]
  %96 = call i8* @cli_completion_generator_func(i8* %84, i64 %85, i32* @cli_completion_state, i32* %95)
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %127

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %81, %81, %100
  %102 = load i8*, i8** %4, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %105 = icmp ne %struct.TYPE_3__* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  br label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @zend_constants, align 4
  %111 = call i32* @EG(i32 %110)
  br label %112

112:                                              ; preds = %109, %106
  %113 = phi i32* [ %108, %106 ], [ %111, %109 ]
  %114 = call i8* @cli_completion_generator_define(i8* %102, i64 %103, i32* @cli_completion_state, i32* %113)
  store i8* %114, i8** %6, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = icmp ne %struct.TYPE_3__* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %117, %112
  br label %127

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %81, %81, %121
  %123 = load i8*, i8** %8, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i8* @cli_completion_generator_class(i8* %123, i64 %124, i32* @cli_completion_state)
  store i8* %125, i8** %6, align 8
  br label %127

126:                                              ; preds = %81
  br label %127

127:                                              ; preds = %126, %122, %120, %99
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @efree(i8* %128)
  %130 = load i32*, i32** %10, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32*, i32** %10, align 8
  %134 = call i32 @zend_string_release_ex(i32* %133, i32 0)
  br label %135

135:                                              ; preds = %132, %127
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %137 = icmp ne %struct.TYPE_3__* %136, null
  br i1 %137, label %138, label %165

138:                                              ; preds = %135
  %139 = load i8*, i8** %6, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %165

141:                                              ; preds = %138
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ZSTR_LEN(i32* %144)
  %146 = add nsw i32 %145, 2
  %147 = load i8*, i8** %6, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = add nsw i32 %146, %148
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %13, align 8
  %152 = load i64, i64* %13, align 8
  %153 = call i8* @malloc(i64 %152)
  store i8* %153, i8** %14, align 8
  %154 = load i8*, i8** %14, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = call i8* @ZSTR_VAL(i32* %158)
  %160 = load i8*, i8** %6, align 8
  %161 = call i32 @snprintf(i8* %154, i64 %155, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %159, i8* %160)
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i8*, i8** %14, align 8
  store i8* %164, i8** %6, align 8
  br label %165

165:                                              ; preds = %141, %138, %135
  br label %166

166:                                              ; preds = %165, %37
  br label %167

167:                                              ; preds = %166, %27
  %168 = load i8*, i8** %6, align 8
  store i8* %168, i8** %3, align 8
  br label %169

169:                                              ; preds = %167, %62
  %170 = load i8*, i8** %3, align 8
  ret i8* %170
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @cli_completion_generator_var(i8*, i64, i32*) #1

declare dso_local i8* @cli_completion_generator_ini(i8*, i64, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @zend_string_alloc(i64, i32) #1

declare dso_local i32 @zend_str_tolower_copy(i8*, i8*, i64) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local %struct.TYPE_3__* @zend_lookup_class(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i8* @zend_str_tolower_dup(i8*, i64) #1

declare dso_local i8* @cli_completion_generator_func(i8*, i64, i32*, i32*) #1

declare dso_local i32* @EG(i32) #1

declare dso_local i8* @cli_completion_generator_define(i8*, i64, i32*, i32*) #1

declare dso_local i8* @cli_completion_generator_class(i8*, i64, i32*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

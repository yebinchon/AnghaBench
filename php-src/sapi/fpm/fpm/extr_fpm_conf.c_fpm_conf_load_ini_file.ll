; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_load_ini_file.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_fpm_conf.c_fpm_conf_load_ini_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"configuration filename is empty\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@ZLOG_SYSERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to open configuration file '%s'\00", align 1
@ini_recursion = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to include more than 5 files recusively\00", align 1
@ini_lineno = common dso_local global i64 0, align 8
@ini_filename = common dso_local global i8* null, align 8
@ZEND_INI_SCANNER_NORMAL = common dso_local global i32 0, align 4
@fpm_conf_ini_parser = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@ini_include = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpm_conf_load_ini_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  store i8 42, i8* %11, align 1
  store i32 1, i32* %12, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* @ZLOG_ERROR, align 4
  %24 = call i32 (i32, i8*, ...) @zlog(i32 %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %168

25:                                               ; preds = %17
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call i32 @open(i8* %26, i32 %27, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* @ZLOG_SYSERROR, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i32, i8*, ...) @zlog(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32 -1, i32* %2, align 4
  br label %168

35:                                               ; preds = %25
  %36 = load i32, i32* @ini_recursion, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @ini_recursion, align 4
  %38 = icmp sgt i32 %36, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* @ZLOG_ERROR, align 4
  %41 = call i32 (i32, i8*, ...) @zlog(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @close(i32 %42)
  store i32 -1, i32* %2, align 4
  br label %168

44:                                               ; preds = %35
  store i64 0, i64* @ini_lineno, align 8
  br label %45

45:                                               ; preds = %159, %101, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %160

48:                                               ; preds = %45
  %49 = load i64, i64* @ini_lineno, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* @ini_lineno, align 8
  %51 = load i8*, i8** %3, align 8
  store i8* %51, i8** @ini_filename, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %95, %48
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @read(i32 %53, i8* %11, i32 1)
  store i32 %54, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i8, i8* %11, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 10
  br label %61

61:                                               ; preds = %57, %52
  %62 = phi i1 [ false, %52 ], [ %60, %57 ]
  br i1 %62, label %63, label %98

63:                                               ; preds = %61
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1024
  store i32 %69, i32* %7, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = mul i64 1, %73
  %75 = trunc i64 %74 to i32
  %76 = call i64 @realloc(i8* %70, i32 %75)
  %77 = inttoptr i64 %76 to i8*
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %67
  %81 = load i32, i32* @ini_recursion, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @ini_recursion, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @free(i8* %85)
  store i32 -1, i32* %2, align 4
  br label %168

87:                                               ; preds = %67
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** %5, align 8
  br label %89

89:                                               ; preds = %87, %63
  %90 = load i8, i8* %11, align 1
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %90, i8* %94, align 1
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %52

98:                                               ; preds = %61
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %45

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 10, i8* %107, align 1
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %5, align 8
  %113 = load i32, i32* @ZEND_INI_SCANNER_NORMAL, align 4
  %114 = load i64, i64* @fpm_conf_ini_parser, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @zend_parse_ini_string(i8* %112, i32 1, i32 %113, i32 %115, i32* %4)
  store i32 %116, i32* %13, align 4
  %117 = load i8*, i8** %3, align 8
  store i8* %117, i8** @ini_filename, align 8
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %102
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* @FAILURE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %120, %102
  %125 = load i8*, i8** @ini_include, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8*, i8** @ini_include, align 8
  %129 = call i32 @free(i8* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32, i32* @ini_recursion, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* @ini_recursion, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @close(i32 %133)
  %135 = load i8*, i8** %5, align 8
  %136 = call i32 @free(i8* %135)
  store i32 -1, i32* %2, align 4
  br label %168

137:                                              ; preds = %120
  %138 = load i8*, i8** @ini_include, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = load i8*, i8** @ini_include, align 8
  store i8* %141, i8** %14, align 8
  store i8* null, i8** @ini_include, align 8
  %142 = call i32 @fpm_evaluate_full_path(i8** %14, i32* null, i32* null, i32 0)
  %143 = load i8*, i8** %14, align 8
  %144 = call i32 @fpm_conf_ini_parser_include(i8* %143, i32* %4)
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %140
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @free(i8* %148)
  %150 = load i32, i32* @ini_recursion, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* @ini_recursion, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @close(i32 %152)
  %154 = load i8*, i8** %5, align 8
  %155 = call i32 @free(i8* %154)
  store i32 -1, i32* %2, align 4
  br label %168

156:                                              ; preds = %140
  %157 = load i8*, i8** %14, align 8
  %158 = call i32 @free(i8* %157)
  br label %159

159:                                              ; preds = %156, %137
  br label %45

160:                                              ; preds = %45
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 @free(i8* %161)
  %163 = load i32, i32* @ini_recursion, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* @ini_recursion, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @close(i32 %165)
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %160, %147, %130, %80, %39, %31, %22
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @zlog(i32, i8*, ...) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @zend_parse_ini_string(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @fpm_evaluate_full_path(i8**, i32*, i32*, i32) #1

declare dso_local i32 @fpm_conf_ini_parser_include(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

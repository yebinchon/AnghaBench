; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_results_differ.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_results_differ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s.diff\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"diff %s \22%s\22 \22%s\22 > \22%s\22\00", align 1
@basic_diff_opts = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Unable to check secondary comparison files: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@difffilename = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"diff %s %s %s\0A\00", align 1
@pretty_diff_opts = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"diff %s \22%s\22 \22%s\22 >> \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @results_differ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @results_differ(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i32, i32* @MAXPGPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @MAXPGPATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %10, align 8
  %28 = load i32, i32* @MAXPGPATH, align 4
  %29 = mul nsw i32 %28, 3
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %11, align 8
  %32 = load i32, i32* @MAXPGPATH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %12, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i8* @get_expectfile(i8* %35, i8* %36)
  store i8* %37, i8** %17, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = trunc i64 %22 to i32
  %40 = call i32 @strlcpy(i8* %24, i8* %38, i32 %39)
  %41 = load i8*, i8** %17, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %3
  %44 = call i8* @strrchr(i8* %24, i8 signext 47)
  store i8* %44, i8** %18, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %18, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %18, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @strcpy(i8* %49, i8* %50)
  br label %52

52:                                               ; preds = %47, %43
  br label %53

53:                                               ; preds = %52, %3
  %54 = trunc i64 %26 to i32
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %27, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %55)
  %57 = trunc i64 %30 to i32
  %58 = load i8*, i8** @basic_diff_opts, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %58, i8* %24, i8* %59, i8* %27)
  %61 = call i64 @run_diff(i8* %31, i8* %27)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = call i32 @unlink(i8* %27)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %165

65:                                               ; preds = %53
  %66 = call i32 @file_line_count(i8* %27)
  store i32 %66, i32* %14, align 4
  %67 = call i32 @strcpy(i8* %34, i8* %24)
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %117, %65
  %69 = load i32, i32* %15, align 4
  %70 = icmp sle i32 %69, 9
  br i1 %70, label %71, label %120

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = call i8* @get_alternative_expectfile(i8* %24, i32 %72)
  store i8* %73, i8** %20, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @stderr, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i32*
  %80 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @errno, align 4
  %82 = call i8* @strerror(i32 %81)
  %83 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %79, i8* %80, i8* %82)
  %84 = call i32 @exit(i32 2) #4
  unreachable

85:                                               ; preds = %71
  %86 = load i8*, i8** %20, align 8
  %87 = call i32 @file_exists(i8* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = load i8*, i8** %20, align 8
  %91 = call i32 @free(i8* %90)
  br label %117

92:                                               ; preds = %85
  %93 = trunc i64 %30 to i32
  %94 = load i8*, i8** @basic_diff_opts, align 8
  %95 = load i8*, i8** %20, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %94, i8* %95, i8* %96, i8* %27)
  %98 = call i64 @run_diff(i8* %31, i8* %27)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = call i32 @unlink(i8* %27)
  %102 = load i8*, i8** %20, align 8
  %103 = call i32 @free(i8* %102)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %165

104:                                              ; preds = %92
  %105 = call i32 @file_line_count(i8* %27)
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32, i32* %16, align 4
  store i32 %110, i32* %14, align 4
  %111 = load i8*, i8** %20, align 8
  %112 = trunc i64 %33 to i32
  %113 = call i32 @strlcpy(i8* %34, i8* %111, i32 %112)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i8*, i8** %20, align 8
  %116 = call i32 @free(i8* %115)
  br label %117

117:                                              ; preds = %114, %89
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %68

120:                                              ; preds = %68
  %121 = load i8*, i8** %17, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %144

123:                                              ; preds = %120
  %124 = trunc i64 %30 to i32
  %125 = load i8*, i8** @basic_diff_opts, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %125, i8* %126, i8* %127, i8* %27)
  %129 = call i64 @run_diff(i8* %31, i8* %27)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = call i32 @unlink(i8* %27)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %165

133:                                              ; preds = %123
  %134 = call i32 @file_line_count(i8* %27)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %16, align 4
  store i32 %139, i32* %14, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = trunc i64 %33 to i32
  %142 = call i32 @strlcpy(i8* %34, i8* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %120
  %145 = load i8*, i8** @difffilename, align 8
  %146 = call i32* @fopen(i8* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %146, i32** %13, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load i32*, i32** %13, align 8
  %151 = load i8*, i8** @pretty_diff_opts, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %151, i8* %34, i8* %152)
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @fclose(i32* %154)
  br label %156

156:                                              ; preds = %149, %144
  %157 = trunc i64 %30 to i32
  %158 = load i8*, i8** @pretty_diff_opts, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load i8*, i8** @difffilename, align 8
  %161 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %158, i8* %34, i8* %159, i8* %160)
  %162 = load i8*, i8** @difffilename, align 8
  %163 = call i64 @run_diff(i8* %31, i8* %162)
  %164 = call i32 @unlink(i8* %27)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %165

165:                                              ; preds = %156, %131, %100, %63
  %166 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_expectfile(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @run_diff(i8*, i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @file_line_count(i8*) #2

declare dso_local i8* @get_alternative_expectfile(i8*, i32) #2

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

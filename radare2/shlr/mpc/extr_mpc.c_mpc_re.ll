; ModuleID = '/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_re.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/mpc/extr_mpc.c_mpc_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@mpcf_re_or = common dso_local global i32 0, align 4
@mpcf_snd_free = common dso_local global i32 0, align 4
@mpc_delete = common dso_local global i64 0, align 8
@mpcf_re_and = common dso_local global i32 0, align 4
@mpcf_re_repeat = common dso_local global i32 0, align 4
@mpcf_re_escape = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c")|\00", align 1
@mpcf_strfold = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@mpcf_re_range = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"<mpc_re_compiler>\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Invalid Regex: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mpc_re(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %12 = call i32* @mpc_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  %13 = call i32* @mpc_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %13, i32** %7, align 8
  %14 = call i32* @mpc_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = call i32* @mpc_new(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %15, i32** %9, align 8
  %16 = call i32* @mpc_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* @mpcf_re_or, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* @mpcf_snd_free, align 4
  %21 = call i32* @mpc_char(i8 signext 124)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32* @mpc_and(i32 2, i32 %20, i32* %21, i32* %22, i32 (i8*)* @free)
  %24 = call i32* @mpc_maybe(i32* %23)
  %25 = load i64, i64* @mpc_delete, align 8
  %26 = inttoptr i64 %25 to i32 (i8*)*
  %27 = call i32* @mpc_and(i32 2, i32 %18, i32* %19, i32* %24, i32 (i8*)* %26)
  %28 = call i32 @mpc_define(i32* %17, i32* %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @mpcf_re_and, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32* @mpc_many(i32 %30, i32* %31)
  %33 = call i32 @mpc_define(i32* %29, i32* %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @mpcf_re_repeat, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @mpc_char(i8 signext 42)
  %38 = call i32* @mpc_char(i8 signext 43)
  %39 = call i32* @mpc_char(i8 signext 63)
  %40 = call i32 (...) @mpc_int()
  %41 = call i32 @mpc_brackets(i32 %40, i32 (i8*)* @free)
  %42 = call i32 (...) @mpc_pass()
  %43 = call i32* (i32, i32*, i32*, ...) @mpc_or(i32 5, i32* %37, i32* %38, i32* %39, i32 %41, i32 %42)
  %44 = load i64, i64* @mpc_delete, align 8
  %45 = inttoptr i64 %44 to i32 (i8*)*
  %46 = call i32* @mpc_and(i32 2, i32 %35, i32* %36, i32* %43, i32 (i8*)* %45)
  %47 = call i32 @mpc_define(i32* %34, i32* %46)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* @mpc_delete, align 8
  %51 = inttoptr i64 %50 to i32 (i8*)*
  %52 = call i32 @mpc_parens(i32* %49, i32 (i8*)* %51)
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* @mpc_delete, align 8
  %57 = inttoptr i64 %56 to i32 (i8*)*
  %58 = call i32 @mpc_squares(i32* %55, i32 (i8*)* %57)
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32*
  %61 = call i32* (...) @mpc_escape()
  %62 = load i32, i32* @mpcf_re_escape, align 4
  %63 = call i32* @mpc_apply(i32* %61, i32 %62)
  %64 = call i32* @mpc_noneof(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* @mpcf_re_escape, align 4
  %66 = call i32* @mpc_apply(i32* %64, i32 %65)
  %67 = call i32* (i32, i32*, i32*, ...) @mpc_or(i32 4, i32* %54, i32* %60, i32* %63, i32* %66)
  %68 = call i32 @mpc_define(i32* %48, i32* %67)
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* @mpcf_strfold, align 4
  %71 = call i32* (...) @mpc_escape()
  %72 = call i32* @mpc_noneof(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %73 = call i32* (i32, i32*, i32*, ...) @mpc_or(i32 2, i32* %71, i32* %72)
  %74 = call i32* @mpc_many(i32 %70, i32* %73)
  %75 = load i32, i32* @mpcf_re_range, align 4
  %76 = call i32* @mpc_apply(i32* %74, i32 %75)
  %77 = call i32 @mpc_define(i32* %69, i32* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @mpc_predictive(i32* %78)
  %80 = load i64, i64* @mpc_delete, align 8
  %81 = inttoptr i64 %80 to i32 (i8*)*
  %82 = call i32* @mpc_whole(i32 %79, i32 (i8*)* %81)
  store i32* %82, i32** %11, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @mpc_optimise(i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @mpc_optimise(i32* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @mpc_optimise(i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @mpc_optimise(i32* %89)
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @mpc_optimise(i32* %91)
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @mpc_optimise(i32* %93)
  %95 = load i8*, i8** %2, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = call i32 @mpc_parse(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i8* %95, i32* %96, %struct.TYPE_3__* %5)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i8* @mpc_err_string(i32 %101)
  store i8* %102, i8** %3, align 8
  %103 = load i8*, i8** %3, align 8
  %104 = call i32* @mpc_failf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  store i32* %104, i32** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @mpc_err_delete(i32 %106)
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @free(i8* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32* %110, i32** %111, align 8
  br label %112

112:                                              ; preds = %99, %1
  %113 = load i32*, i32** %11, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = call i32 @mpc_cleanup(i32 6, i32* %113, i32* %114, i32* %115, i32* %116, i32* %117, i32* %118)
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @mpc_optimise(i32* %121)
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  ret i32* %124
}

declare dso_local i32* @mpc_new(i8*) #1

declare dso_local i32 @mpc_define(i32*, i32*) #1

declare dso_local i32* @mpc_and(i32, i32, i32*, i32*, i32 (i8*)*) #1

declare dso_local i32* @mpc_maybe(i32*) #1

declare dso_local i32* @mpc_char(i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @mpc_many(i32, i32*) #1

declare dso_local i32* @mpc_or(i32, i32*, i32*, ...) #1

declare dso_local i32 @mpc_brackets(i32, i32 (i8*)*) #1

declare dso_local i32 @mpc_int(...) #1

declare dso_local i32 @mpc_pass(...) #1

declare dso_local i32 @mpc_parens(i32*, i32 (i8*)*) #1

declare dso_local i32 @mpc_squares(i32*, i32 (i8*)*) #1

declare dso_local i32* @mpc_apply(i32*, i32) #1

declare dso_local i32* @mpc_escape(...) #1

declare dso_local i32* @mpc_noneof(i8*) #1

declare dso_local i32* @mpc_whole(i32, i32 (i8*)*) #1

declare dso_local i32 @mpc_predictive(i32*) #1

declare dso_local i32 @mpc_optimise(i32*) #1

declare dso_local i32 @mpc_parse(i8*, i8*, i32*, %struct.TYPE_3__*) #1

declare dso_local i8* @mpc_err_string(i32) #1

declare dso_local i32* @mpc_failf(i8*, i8*) #1

declare dso_local i32 @mpc_err_delete(i32) #1

declare dso_local i32 @mpc_cleanup(i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

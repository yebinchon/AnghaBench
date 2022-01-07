; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/extr_pg_regress_ecpg.c_ecpg_start_test.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/test/extr_pg_regress_ecpg.c_ecpg_start_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@inputdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s/expected/%s.stdout\00", align 1
@outputdir = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"%s/expected/%s.stderr\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s/expected/%s.c\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"/expected/\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"/results/\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s.c\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\22%s\22 >\22%s\22 2>\22%s\22\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"PGAPPNAME=ecpg/%s\00", align 1
@INVALID_PID = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"could not start process for test %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"PGAPPNAME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32**, i32**, i32**)* @ecpg_start_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ecpg_start_test(i8* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %22 = load i32, i32* @MAXPGPATH, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* @MAXPGPATH, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %29 = load i32, i32* @MAXPGPATH, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %32 = load i32, i32* @MAXPGPATH, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %35 = load i32, i32* @MAXPGPATH, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %18, align 8
  %38 = load i32, i32* @MAXPGPATH, align 4
  %39 = mul nsw i32 %38, 3
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %19, align 8
  %42 = trunc i64 %23 to i32
  %43 = load i8*, i8** @inputdir, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i8* @strdup(i8* %46)
  store i8* %47, i8** %20, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = call i32 @replace_string(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %50 = trunc i64 %30 to i32
  %51 = load i8*, i8** @outputdir, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %31, i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52)
  %54 = trunc i64 %33 to i32
  %55 = load i8*, i8** @outputdir, align 8
  %56 = load i8*, i8** %20, align 8
  %57 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %34, i32 %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56)
  %58 = trunc i64 %36 to i32
  %59 = load i8*, i8** @outputdir, align 8
  %60 = load i8*, i8** %20, align 8
  %61 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %37, i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %60)
  %62 = call i8* @strdup(i8* %31)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @replace_string(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %65 = call i8* @strdup(i8* %34)
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @replace_string(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i8* @strdup(i8* %37)
  store i8* %68, i8** %17, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = call i32 @replace_string(i8* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32**, i32*** %6, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @add_stringlist_item(i32** %71, i8* %72)
  %74 = load i32**, i32*** %7, align 8
  %75 = call i32 @add_stringlist_item(i32** %74, i8* %31)
  %76 = load i32**, i32*** %8, align 8
  %77 = call i32 @add_stringlist_item(i32** %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %78 = load i32**, i32*** %6, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @add_stringlist_item(i32** %78, i8* %79)
  %81 = load i32**, i32*** %7, align 8
  %82 = call i32 @add_stringlist_item(i32** %81, i8* %34)
  %83 = load i32**, i32*** %8, align 8
  %84 = call i32 @add_stringlist_item(i32** %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32**, i32*** %6, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = call i32 @add_stringlist_item(i32** %85, i8* %86)
  %88 = load i32**, i32*** %7, align 8
  %89 = call i32 @add_stringlist_item(i32** %88, i8* %37)
  %90 = load i32**, i32*** %8, align 8
  %91 = call i32 @add_stringlist_item(i32** %90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %92 = trunc i64 %27 to i32
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %28, i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %93)
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @ecpg_filter(i8* %28, i8* %95)
  %97 = trunc i64 %23 to i32
  %98 = load i8*, i8** @inputdir, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %25, i32 %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %98, i8* %99)
  %101 = trunc i64 %40 to i32
  %102 = load i8*, i8** %13, align 8
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %41, i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %25, i8* %102, i8* %103)
  %105 = load i8*, i8** %20, align 8
  %106 = call i8* @psprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %105)
  store i8* %106, i8** %21, align 8
  %107 = load i8*, i8** %21, align 8
  %108 = call i32 @putenv(i8* %107)
  %109 = call i64 @spawn_process(i8* %41)
  store i64 %109, i64* %9, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* @INVALID_PID, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %4
  %114 = load i32, i32* @stderr, align 4
  %115 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @fprintf(i32 %114, i8* %115, i8* %116)
  %118 = call i32 @exit(i32 2) #4
  unreachable

119:                                              ; preds = %4
  %120 = call i32 @unsetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %121 = load i8*, i8** %21, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i8*, i8** %20, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i8*, i8** %13, align 8
  %126 = call i32 @free(i8* %125)
  %127 = load i8*, i8** %15, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i8*, i8** %17, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i64, i64* %9, align 8
  %132 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %132)
  ret i64 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @replace_string(i8*, i8*, i8*) #2

declare dso_local i32 @add_stringlist_item(i32**, i8*) #2

declare dso_local i32 @ecpg_filter(i8*, i8*) #2

declare dso_local i8* @psprintf(i8*, i8*) #2

declare dso_local i32 @putenv(i8*) #2

declare dso_local i64 @spawn_process(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @unsetenv(i8*) #2

declare dso_local i32 @free(i8*) #2

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

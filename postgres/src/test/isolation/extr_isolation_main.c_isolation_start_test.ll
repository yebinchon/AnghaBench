; ModuleID = '/home/carl/AnghaBench/postgres/src/test/isolation/extr_isolation_main.c_isolation_start_test.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/isolation/extr_isolation_main.c_isolation_start_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@looked_up_isolation_exec = common dso_local global i32 0, align 4
@saved_argv0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"isolationtester\00", align 1
@PG_ISOLATION_VERSIONSTR = common dso_local global i32 0, align 4
@isolation_exec = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"could not find proper isolationtester binary\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%s/specs/%s.spec\00", align 1
@outputdir = common dso_local global i8* null, align 8
@inputdir = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"%s/results/%s.out\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s/expected/%s.out\00", align 1
@launcher = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"command too long\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\22%s\22 \22dbname=%s\22 < \22%s\22 > \22%s\22 2>&1\00", align 1
@dblist = common dso_local global %struct.TYPE_2__* null, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"PGAPPNAME=isolation/%s\00", align 1
@INVALID_PID = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"could not start process for test %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"PGAPPNAME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32**, i32**, i32**)* @isolation_start_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isolation_start_test(i8* %0, i32** %1, i32** %2, i32** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32** %3, i32*** %8, align 8
  %17 = load i32, i32* @MAXPGPATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @MAXPGPATH, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i32, i32* @MAXPGPATH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %27 = load i32, i32* @MAXPGPATH, align 4
  %28 = mul nsw i32 %27, 3
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %31 = load i32, i32* @looked_up_isolation_exec, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* @saved_argv0, align 4
  %35 = load i32, i32* @PG_ISOLATION_VERSIONSTR, align 4
  %36 = load i8*, i8** @isolation_exec, align 8
  %37 = call i64 @find_other_exec(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* @stderr, align 4
  %41 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* %41)
  %43 = call i32 @exit(i32 2) #4
  unreachable

44:                                               ; preds = %33
  store i32 1, i32* @looked_up_isolation_exec, align 4
  br label %45

45:                                               ; preds = %44, %4
  %46 = trunc i64 %18 to i32
  %47 = load i8*, i8** @outputdir, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %48)
  %50 = call i32 @file_exists(i8* %20)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = trunc i64 %18 to i32
  %54 = load i8*, i8** @inputdir, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55)
  br label %57

57:                                               ; preds = %52, %45
  %58 = trunc i64 %22 to i32
  %59 = load i8*, i8** @outputdir, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %59, i8* %60)
  %62 = trunc i64 %25 to i32
  %63 = load i8*, i8** @outputdir, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %63, i8* %64)
  %66 = call i32 @file_exists(i8* %26)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %57
  %69 = trunc i64 %25 to i32
  %70 = load i8*, i8** @inputdir, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %68, %57
  %74 = load i32**, i32*** %6, align 8
  %75 = call i32 @add_stringlist_item(i32** %74, i8* %23)
  %76 = load i32**, i32*** %7, align 8
  %77 = call i32 @add_stringlist_item(i32** %76, i8* %26)
  %78 = load i8*, i8** @launcher, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  %81 = load i64, i64* %15, align 8
  %82 = getelementptr inbounds i8, i8* %30, i64 %81
  %83 = load i64, i64* %15, align 8
  %84 = sub i64 %29, %83
  %85 = trunc i64 %84 to i32
  %86 = load i8*, i8** @launcher, align 8
  %87 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %82, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %86)
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %15, align 8
  %91 = icmp uge i64 %90, %29
  br i1 %91, label %92, label %97

92:                                               ; preds = %80
  %93 = load i32, i32* @stderr, align 4
  %94 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* %94)
  %96 = call i32 @exit(i32 2) #4
  unreachable

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %73
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds i8, i8* %30, i64 %99
  %101 = load i64, i64* %15, align 8
  %102 = sub i64 %29, %101
  %103 = trunc i64 %102 to i32
  %104 = load i8*, i8** @isolation_exec, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dblist, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %100, i32 %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %104, i8* %107, i8* %20, i8* %23)
  %109 = load i64, i64* %15, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %15, align 8
  %111 = load i64, i64* %15, align 8
  %112 = icmp uge i64 %111, %29
  br i1 %112, label %113, label %118

113:                                              ; preds = %98
  %114 = load i32, i32* @stderr, align 4
  %115 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %114, i8* %115)
  %117 = call i32 @exit(i32 2) #4
  unreachable

118:                                              ; preds = %98
  %119 = load i8*, i8** %5, align 8
  %120 = call i8* @psprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %119)
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = call i32 @putenv(i8* %121)
  %123 = call i64 @spawn_process(i8* %30)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @INVALID_PID, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load i32, i32* @stderr, align 4
  %129 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* %129, i8* %130)
  %132 = call i32 @exit(i32 2) #4
  unreachable

133:                                              ; preds = %118
  %134 = call i32 @unsetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %135 = load i8*, i8** %16, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i64, i64* %9, align 8
  %138 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %138)
  ret i64 %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @find_other_exec(i32, i8*, i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i32 @add_stringlist_item(i32**, i8*) #2

declare dso_local i8* @psprintf(i8*, i8*) #2

declare dso_local i32 @putenv(i8*) #2

declare dso_local i64 @spawn_process(i8*) #2

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

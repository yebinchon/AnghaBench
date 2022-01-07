; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress_main.c_psql_start_test.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress_main.c_psql_start_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%s/sql/%s.sql\00", align 1
@outputdir = common dso_local global i8* null, align 8
@inputdir = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s/results/%s.out\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s/expected/%s.out\00", align 1
@launcher = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"command too long\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\22%s%spsql\22 -X -a -q -d \22%s\22 -v %s < \22%s\22 > \22%s\22 2>&1\00", align 1
@bindir = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@dblist = common dso_local global %struct.TYPE_2__* null, align 8
@.str.8 = private unnamed_addr constant [18 x i8] c"HIDE_TABLEAM=\22on\22\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"PGAPPNAME=pg_regress/%s\00", align 1
@INVALID_PID = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"could not start process for test %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"PGAPPNAME\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32**, i32**, i32**)* @psql_start_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psql_start_test(i8* %0, i32** %1, i32** %2, i32** %3) #0 {
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
  %31 = trunc i64 %18 to i32
  %32 = load i8*, i8** @outputdir, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  %35 = call i32 @file_exists(i8* %20)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %4
  %38 = trunc i64 %18 to i32
  %39 = load i8*, i8** @inputdir, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %20, i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  br label %42

42:                                               ; preds = %37, %4
  %43 = trunc i64 %22 to i32
  %44 = load i8*, i8** @outputdir, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %23, i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = trunc i64 %25 to i32
  %48 = load i8*, i8** @outputdir, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49)
  %51 = call i32 @file_exists(i8* %26)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = trunc i64 %25 to i32
  %55 = load i8*, i8** @inputdir, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %42
  %59 = load i32**, i32*** %6, align 8
  %60 = call i32 @add_stringlist_item(i32** %59, i8* %23)
  %61 = load i32**, i32*** %7, align 8
  %62 = call i32 @add_stringlist_item(i32** %61, i8* %26)
  %63 = load i8*, i8** @launcher, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds i8, i8* %30, i64 %66
  %68 = load i64, i64* %15, align 8
  %69 = sub i64 %29, %68
  %70 = trunc i64 %69 to i32
  %71 = load i8*, i8** @launcher, align 8
  %72 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %67, i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i64, i64* %15, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %15, align 8
  %76 = icmp uge i64 %75, %29
  br i1 %76, label %77, label %82

77:                                               ; preds = %65
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* %79)
  %81 = call i32 @exit(i32 2) #4
  unreachable

82:                                               ; preds = %65
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i64, i64* %15, align 8
  %85 = getelementptr inbounds i8, i8* %30, i64 %84
  %86 = load i64, i64* %15, align 8
  %87 = sub i64 %29, %86
  %88 = trunc i64 %87 to i32
  %89 = load i8*, i8** @bindir, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i8*, i8** @bindir, align 8
  br label %94

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %91
  %95 = phi i8* [ %92, %91 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %93 ]
  %96 = load i8*, i8** @bindir, align 8
  %97 = icmp ne i8* %96, null
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dblist, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %85, i32 %88, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i8* %95, i8* %99, i8* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %20, i8* %23)
  %104 = load i64, i64* %15, align 8
  %105 = add i64 %104, %103
  store i64 %105, i64* %15, align 8
  %106 = load i64, i64* %15, align 8
  %107 = icmp uge i64 %106, %29
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load i32, i32* @stderr, align 4
  %110 = call i8* @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %111 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* %110)
  %112 = call i32 @exit(i32 2) #4
  unreachable

113:                                              ; preds = %94
  %114 = load i8*, i8** %5, align 8
  %115 = call i8* @psprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %114)
  store i8* %115, i8** %16, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = call i32 @putenv(i8* %116)
  %118 = call i64 @spawn_process(i8* %30)
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* @INVALID_PID, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load i32, i32* @stderr, align 4
  %124 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %123, i8* %124, i8* %125)
  %127 = call i32 @exit(i32 2) #4
  unreachable

128:                                              ; preds = %113
  %129 = call i32 @unsetenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %130 = load i8*, i8** %16, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i64, i64* %9, align 8
  %133 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %133)
  ret i64 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @file_exists(i8*) #2

declare dso_local i32 @add_stringlist_item(i32**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

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

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/main/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/main/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"postgres\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"LC_COLLATE\00", align 1
@LC_COLLATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LC_CTYPE\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"LC_MONETARY\00", align 1
@LC_MONETARY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"LC_NUMERIC\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"LC_TIME\00", align 1
@LC_TIME = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"LC_ALL\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@PG_BACKEND_VERSIONSTR = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"--describe-config\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"--boot\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"--single\00", align 1
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @get_progname(i8* %9)
  store i32 %10, i32* @progname, align 4
  %11 = load i32, i32* @progname, align 4
  %12 = call i32 @startup_hacks(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i8** @save_ps_display_args(i32 %13, i8** %14)
  store i8** %15, i8*** %5, align 8
  %16 = call i32 (...) @MemoryContextInit()
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PG_TEXTDOMAIN(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @set_pglocale_pgservice(i8* %19, i32 %20)
  %22 = load i32, i32* @LC_COLLATE, align 4
  %23 = call i32 @init_locale(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %24 = load i32, i32* @LC_CTYPE, align 4
  %25 = call i32 @init_locale(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @LC_MONETARY, align 4
  %27 = call i32 @init_locale(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @LC_NUMERIC, align 4
  %29 = call i32 @init_locale(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %30 = load i32, i32* @LC_TIME, align 4
  %31 = call i32 @init_locale(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %32 = call i32 @unsetenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %33 = call i32 (...) @check_strxfrm_bug()
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %88

36:                                               ; preds = %2
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @progname, align 4
  %50 = call i32 @help(i32 %49)
  %51 = call i32 @exit(i32 0) #3
  unreachable

52:                                               ; preds = %42
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %58, %52
  %65 = load i32, i32* @PG_BACKEND_VERSIONSTR, align 4
  %66 = load i32, i32* @stdout, align 4
  %67 = call i32 @fputs(i32 %65, i32 %66)
  %68 = call i32 @exit(i32 0) #3
  unreachable

69:                                               ; preds = %58
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %87

76:                                               ; preds = %69
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %79, %76
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %2
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @progname, align 4
  %93 = call i32 @check_root(i32 %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %4, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  %104 = load i32, i32* %4, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = call i32 @AuxiliaryProcessMain(i32 %104, i8** %105)
  br label %140

107:                                              ; preds = %97, %94
  %108 = load i32, i32* %4, align 4
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i8**, i8*** %5, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 1
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @strcmp(i8* %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (...) @GucInfoMain()
  br label %139

118:                                              ; preds = %110, %107
  %119 = load i32, i32* %4, align 4
  %120 = icmp sgt i32 %119, 1
  br i1 %120, label %121, label %134

121:                                              ; preds = %118
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load i32, i32* %4, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* @progname, align 4
  %131 = call i32 @get_user_name_or_exit(i32 %130)
  %132 = call i32 @strdup(i32 %131)
  %133 = call i32 @PostgresMain(i32 %128, i8** %129, i32* null, i32 %132)
  br label %138

134:                                              ; preds = %121, %118
  %135 = load i32, i32* %4, align 4
  %136 = load i8**, i8*** %5, align 8
  %137 = call i32 @PostmasterMain(i32 %135, i8** %136)
  br label %138

138:                                              ; preds = %134, %127
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %139, %103
  %141 = call i32 (...) @abort() #3
  unreachable
}

declare dso_local i32 @get_progname(i8*) #1

declare dso_local i32 @startup_hacks(i32) #1

declare dso_local i8** @save_ps_display_args(i32, i8**) #1

declare dso_local i32 @MemoryContextInit(...) #1

declare dso_local i32 @set_pglocale_pgservice(i8*, i32) #1

declare dso_local i32 @PG_TEXTDOMAIN(i8*) #1

declare dso_local i32 @init_locale(i8*, i32, i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @check_strxfrm_bug(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @help(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @check_root(i32) #1

declare dso_local i32 @AuxiliaryProcessMain(i32, i8**) #1

declare dso_local i32 @GucInfoMain(...) #1

declare dso_local i32 @PostgresMain(i32, i8**, i32*, i32) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @get_user_name_or_exit(i32) #1

declare dso_local i32 @PostmasterMain(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

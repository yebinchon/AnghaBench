; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_text_search.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_setup_text_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_text_search_config = common dso_local global i8* null, align 8
@lc_ctype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"could not find suitable text search configuration for locale \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"simple\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"suitable text search configuration for locale \22%s\22 is unknown\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"specified text search configuration \22%s\22 might not match locale \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"The default text search configuration will be set to \22%s\22.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_text_search() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @default_text_search_config, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @lc_ctype, align 4
  %6 = call i8* @find_matching_ts_config(i32 %5)
  store i8* %6, i8** @default_text_search_config, align 8
  %7 = load i8*, i8** @default_text_search_config, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = load i32, i32* @lc_ctype, align 4
  %11 = call i32 @pg_log_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** @default_text_search_config, align 8
  br label %12

12:                                               ; preds = %9, %4
  br label %34

13:                                               ; preds = %0
  %14 = load i32, i32* @lc_ctype, align 4
  %15 = call i8* @find_matching_ts_config(i32 %14)
  store i8* %15, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @lc_ctype, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 (i8*, i8*, ...) @pg_log_warning(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %33

23:                                               ; preds = %13
  %24 = load i8*, i8** %1, align 8
  %25 = load i8*, i8** @default_text_search_config, align 8
  %26 = call i64 @strcmp(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i8*, i8** @default_text_search_config, align 8
  %30 = load i32, i32* @lc_ctype, align 4
  %31 = call i32 (i8*, i8*, ...) @pg_log_warning(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %23
  br label %33

33:                                               ; preds = %32, %18
  br label %34

34:                                               ; preds = %33, %12
  %35 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  %36 = load i8*, i8** @default_text_search_config, align 8
  %37 = call i32 @printf(i8* %35, i8* %36)
  ret void
}

declare dso_local i8* @find_matching_ts_config(i32) #1

declare dso_local i32 @pg_log_info(i8*, i32) #1

declare dso_local i32 @pg_log_warning(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

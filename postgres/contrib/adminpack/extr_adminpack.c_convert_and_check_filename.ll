; ModuleID = '/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_convert_and_check_filename.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/adminpack/extr_adminpack.c_convert_and_check_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ROLE_WRITE_SERVER_FILES = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"reference to parent directory (\22..\22) not allowed\00", align 1
@DataDir = common dso_local global i8* null, align 8
@Log_directory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"absolute path not allowed\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"path must be in or below the current directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32)* @convert_and_check_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_and_check_filename(i32* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @text_to_cstring(i32* %7)
  store i8* %8, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @canonicalize_path(i8* %9)
  %11 = call i32 (...) @GetUserId()
  %12 = load i32, i32* @DEFAULT_ROLE_WRITE_SERVER_FILES, align 4
  %13 = call i64 @is_member_of_role(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %3, align 8
  br label %68

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @is_absolute_path(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @path_contains_parent_reference(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @ERROR, align 4
  %27 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %28 = call i32 @errcode(i32 %27)
  %29 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @ereport(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i8*, i8** @DataDir, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @path_is_prefix_of_path(i8* %32, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** @Log_directory, align 8
  %41 = call i64 @is_absolute_path(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i8*, i8** @Log_directory, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @path_is_prefix_of_path(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43, %39, %36
  %49 = load i32, i32* @ERROR, align 4
  %50 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %51 = call i32 @errcode(i32 %50)
  %52 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @ereport(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %48, %43, %31
  br label %66

55:                                               ; preds = %17
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @path_is_relative_and_below_cwd(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* @ERROR, align 4
  %61 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %62 = call i32 @errcode(i32 %61)
  %63 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %64 = call i32 @ereport(i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %59, %55
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i8*, i8** %6, align 8
  store i8* %67, i8** %3, align 8
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

declare dso_local i8* @text_to_cstring(i32*) #1

declare dso_local i32 @canonicalize_path(i8*) #1

declare dso_local i64 @is_member_of_role(i32, i32) #1

declare dso_local i32 @GetUserId(...) #1

declare dso_local i64 @is_absolute_path(i8*) #1

declare dso_local i64 @path_contains_parent_reference(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @path_is_prefix_of_path(i8*, i8*) #1

declare dso_local i32 @path_is_relative_and_below_cwd(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

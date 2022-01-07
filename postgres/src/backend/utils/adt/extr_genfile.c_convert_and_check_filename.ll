; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_convert_and_check_filename.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_genfile.c_convert_and_check_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_ROLE_READ_SERVER_FILES = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INSUFFICIENT_PRIVILEGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"reference to parent directory (\22..\22) not allowed\00", align 1
@DataDir = common dso_local global i8* null, align 8
@Log_directory = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"absolute path not allowed\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"path must be in or below the current directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @convert_and_check_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @convert_and_check_filename(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i8* @text_to_cstring(i32* %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @canonicalize_path(i8* %7)
  %9 = call i32 (...) @GetUserId()
  %10 = load i32, i32* @DEFAULT_ROLE_READ_SERVER_FILES, align 4
  %11 = call i64 @is_member_of_role(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** %2, align 8
  br label %63

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @is_absolute_path(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @path_contains_parent_reference(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %26 = call i32 @errcode(i32 %25)
  %27 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @ereport(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %23, %19
  %30 = load i8*, i8** @DataDir, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @path_is_prefix_of_path(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** @Log_directory, align 8
  %36 = call i64 @is_absolute_path(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i8*, i8** @Log_directory, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @path_is_prefix_of_path(i8* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38, %34
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = call i32 @errmsg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 @ereport(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %38, %29
  br label %61

50:                                               ; preds = %15
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @path_is_relative_and_below_cwd(i8* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @ERROR, align 4
  %56 = load i32, i32* @ERRCODE_INSUFFICIENT_PRIVILEGE, align 4
  %57 = call i32 @errcode(i32 %56)
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i32 @ereport(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i8*, i8** %4, align 8
  store i8* %62, i8** %2, align 8
  br label %63

63:                                               ; preds = %61, %13
  %64 = load i8*, i8** %2, align 8
  ret i8* %64
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

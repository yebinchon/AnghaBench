; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_check_valid_extension_name.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_extension.c_check_valid_extension_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid extension name: \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Extension names must not be empty.\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Extension names must not contain \22--\22.\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Extension names must not begin or end with \22-\22.\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Extension names must not contain directory separator characters.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @check_valid_extension_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_valid_extension_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strlen(i8* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* @ERROR, align 4
  %10 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %11 = call i32 @errcode(i32 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = call i32 @errdetail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @ereport(i32 %9, i32 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i8*, i8** %2, align 8
  %18 = call i64 @strstr(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %16
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %23 = call i32 @errcode(i32 %22)
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = call i32 @errdetail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @ereport(i32 %21, i32 %26)
  br label %28

28:                                               ; preds = %20, %16
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 45
  br i1 %42, label %43, label %51

43:                                               ; preds = %34, %28
  %44 = load i32, i32* @ERROR, align 4
  %45 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %46 = call i32 @errcode(i32 %45)
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = call i32 @errdetail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @ereport(i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %43, %34
  %52 = load i8*, i8** %2, align 8
  %53 = call i32* @first_dir_separator(i8* %52)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load i32, i32* @ERROR, align 4
  %57 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %58 = call i32 @errcode(i32 %57)
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %59)
  %61 = call i32 @errdetail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %62 = call i32 @ereport(i32 %56, i32 %61)
  br label %63

63:                                               ; preds = %55, %51
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i8*) #1

declare dso_local i32 @errdetail(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32* @first_dir_separator(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

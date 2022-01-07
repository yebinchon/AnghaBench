; ModuleID = '/home/carl/AnghaBench/postgres/contrib/passwordcheck/extr_passwordcheck.c_check_password.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/passwordcheck/extr_passwordcheck.c_check_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PASSWORD_TYPE_PLAINTEXT = common dso_local global i64 0, align 8
@STATUS_OK = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"password must not equal user name\00", align 1
@MIN_PWD_LENGTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"password is too short\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"password must not contain user name\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"password must contain both letters and nonletters\00", align 1
@CRACKLIB_DICTPATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32, i32)* @check_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_password(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  br i1 true, label %17, label %24

17:                                               ; preds = %5
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @prev_check_password_hook(i8* %18, i8* %19, i64 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %5
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @PASSWORD_TYPE_PLAINTEXT, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i64 @plain_crypt_verify(i8* %29, i8* %30, i8* %31, i8** %11)
  %33 = load i64, i64* @STATUS_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = call i32 @ereport(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  br label %98

42:                                               ; preds = %24
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @MIN_PWD_LENGTH, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @ERROR, align 4
  %51 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %52 = call i32 @errcode(i32 %51)
  %53 = call i32 @errmsg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %54 = call i32 @ereport(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strstr(i8* %56, i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = call i32 @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @ereport(i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %60, %55
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %67
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isalpha(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 1, i32* %15, align 4
  br label %81

80:                                               ; preds = %71
  store i32 1, i32* %16, align 4
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %67

85:                                               ; preds = %67
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @ERROR, align 4
  %93 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %94 = call i32 @errcode(i32 %93)
  %95 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %96 = call i32 @ereport(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  br label %98

98:                                               ; preds = %97, %41
  ret void
}

declare dso_local i32 @prev_check_password_hook(i8*, i8*, i64, i32, i32) #1

declare dso_local i64 @plain_crypt_verify(i8*, i8*, i8*, i8**) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

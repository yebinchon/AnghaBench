; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_IsAuthorizedUser.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpnserv/extr_validate.c_IsAuthorizedUser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@M_SYSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"LookupAccountSid\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Failed to get the name of Administrators group. Using the default.\00", align 1
@SYSTEM_ADMIN_GROUP = common dso_local global i8* null, align 8
@M_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Authorizing user '%s@%s' by virtue of membership in group '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IsAuthorizedUser(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @MAX_NAME, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @MAX_NAME, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %24 = load i32, i32* @MAX_NAME, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %11, align 8
  %27 = load i32, i32* @MAX_NAME, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @LookupAccountSidW(i32* null, i32 %29, i8* %20, i32* %12, i8* %23, i32* %12, i32* %14)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @M_SYSERR, align 4
  %34 = call i32 @TEXT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 (i32, i32, ...) @MsgToEventLog(i32 %33, i32 %34)
  %36 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %36, align 16
  %37 = getelementptr inbounds i8, i8* %23, i64 0
  store i8 0, i8* %37, align 16
  br label %38

38:                                               ; preds = %32, %3
  %39 = call i32 @_countof(i8* %26)
  %40 = call i64 @GetBuiltinAdminGroupName(i8* %26, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %26, i8** %43, align 16
  br label %50

44:                                               ; preds = %38
  %45 = load i32, i32* @M_SYSERR, align 4
  %46 = call i32 @TEXT(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %47 = call i32 (i32, i32, ...) @MsgToEventLog(i32 %45, i32 %46)
  %48 = load i8*, i8** @SYSTEM_ADMIN_GROUP, align 8
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %48, i8** %49, align 16
  br label %50

50:                                               ; preds = %44, %42
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @GetTokenGroups(i32 %53)
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %55

55:                                               ; preds = %77, %50
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 2
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @IsUserInGroup(i32 %59, i32 %60, i8* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load i32, i32* @M_INFO, align 4
  %70 = call i32 @TEXT(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i32, ...) @MsgToEventLog(i32 %69, i32 %70, i8* %20, i8* %23, i8* %74)
  br label %81

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  br label %55

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @free(i32 %82)
  %84 = load i32, i32* %13, align 4
  %85 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LookupAccountSidW(i32*, i32, i8*, i32*, i8*, i32*, i32*) #2

declare dso_local i32 @MsgToEventLog(i32, i32, ...) #2

declare dso_local i32 @TEXT(i8*) #2

declare dso_local i64 @GetBuiltinAdminGroupName(i8*, i32) #2

declare dso_local i32 @_countof(i8*) #2

declare dso_local i32 @GetTokenGroups(i32) #2

declare dso_local i32 @IsUserInGroup(i32, i32, i8*) #2

declare dso_local i32 @free(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

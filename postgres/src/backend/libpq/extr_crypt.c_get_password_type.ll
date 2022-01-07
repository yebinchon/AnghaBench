; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_get_password_type.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_get_password_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@MD5_PASSWD_LEN = common dso_local global i32 0, align 4
@MD5_PASSWD_CHARSET = common dso_local global i32 0, align 4
@PASSWORD_TYPE_MD5 = common dso_local global i32 0, align 4
@PASSWORD_TYPE_SCRAM_SHA_256 = common dso_local global i32 0, align 4
@PASSWORD_TYPE_PLAINTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_password_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i32, i32* @MD5_PASSWD_CHARSET, align 4
  %29 = call i32 @strspn(i8* %27, i32 %28)
  %30 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %31 = sub nsw i32 %30, 3
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @PASSWORD_TYPE_MD5, align 4
  store i32 %34, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %43

35:                                               ; preds = %25, %20, %1
  %36 = load i8*, i8** %3, align 8
  %37 = call i64 @parse_scram_secret(i8* %36, i32* %5, i8** %4, i32* %13, i32* %16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @PASSWORD_TYPE_SCRAM_SHA_256, align 4
  store i32 %40, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @PASSWORD_TYPE_PLAINTEXT, align 4
  store i32 %42, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %41, %39, %33
  %44 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strspn(i8*, i32) #2

declare dso_local i64 @parse_scram_secret(i8*, i32*, i8**, i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

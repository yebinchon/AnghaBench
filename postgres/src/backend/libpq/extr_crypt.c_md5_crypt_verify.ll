; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_md5_crypt_verify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_md5_crypt_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_PASSWD_LEN = common dso_local global i32 0, align 4
@PASSWORD_TYPE_MD5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"User \22%s\22 has a password that cannot be used with MD5 authentication.\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@STATUS_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Password does not match for user \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md5_crypt_verify(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %18 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %15, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %16, align 8
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i64 @get_password_type(i8* %27)
  %29 = load i64, i64* @PASSWORD_TYPE_MD5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %6
  %32 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @psprintf(i32 %32, i8* %33)
  %35 = load i8**, i8*** %13, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %36, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %62

37:                                               ; preds = %6
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @pg_md5_encrypt(i8* %41, i8* %42, i32 %43, i8* %22)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %47, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %62

48:                                               ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = call i64 @strcmp(i8* %49, i8* %22)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @STATUS_OK, align 4
  store i32 %53, i32* %14, align 4
  br label %60

54:                                               ; preds = %48
  %55 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i8*, i8** %8, align 8
  %57 = call i8* @psprintf(i32 %55, i8* %56)
  %58 = load i8**, i8*** %13, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %54, %52
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %7, align 4
  store i32 1, i32* %17, align 4
  br label %62

62:                                               ; preds = %60, %46, %31
  %63 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @get_password_type(i8*) #2

declare dso_local i8* @psprintf(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @pg_md5_encrypt(i8*, i8*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

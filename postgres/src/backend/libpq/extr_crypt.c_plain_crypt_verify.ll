; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_plain_crypt_verify.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_plain_crypt_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_PASSWD_LEN = common dso_local global i32 0, align 4
@STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Password does not match for user \22%s\22.\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Password of user \22%s\22 is in unrecognized format.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @plain_crypt_verify(i8* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @get_password_type(i8* %18)
  switch i32 %19, label %56 [
    i32 128, label %20
    i32 130, label %34
    i32 129, label %55
  ]

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @scram_verify_plain_password(i8* %21, i8* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @STATUS_OK, align 4
  store i32 %27, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %62

28:                                               ; preds = %20
  %29 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %6, align 8
  %31 = call i8* @psprintf(i32 %29, i8* %30)
  %32 = load i8**, i8*** %9, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %33, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %62

34:                                               ; preds = %4
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i32 @pg_md5_encrypt(i8* %35, i8* %36, i32 %38, i8* %17)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %42, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %62

43:                                               ; preds = %34
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcmp(i8* %17, i8* %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @STATUS_OK, align 4
  store i32 %48, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %62

49:                                               ; preds = %43
  %50 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @psprintf(i32 %50, i8* %51)
  %53 = load i8**, i8*** %9, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %62

55:                                               ; preds = %4
  br label %56

56:                                               ; preds = %4, %55
  %57 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @psprintf(i32 %57, i8* %58)
  %60 = load i8**, i8*** %9, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %56, %49, %47, %41, %28, %26
  %63 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_password_type(i8*) #2

declare dso_local i32 @scram_verify_plain_password(i8*, i8*, i8*) #2

declare dso_local i8* @psprintf(i32, i8*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @pg_md5_encrypt(i8*, i8*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

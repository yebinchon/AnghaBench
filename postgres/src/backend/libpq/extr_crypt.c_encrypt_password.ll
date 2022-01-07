; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_encrypt_password.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_crypt.c_encrypt_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_PASSWD_LEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"password encryption failed\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"cannot encrypt password with 'plaintext'\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"cannot encrypt password to requested type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @encrypt_password(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @get_password_type(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 129
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i8* @pstrdup(i8* %15)
  store i8* %16, i8** %4, align 8
  br label %44

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  switch i64 %18, label %41 [
    i64 130, label %19
    i64 128, label %35
    i64 129, label %38
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* @MD5_PASSWD_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i8* @palloc(i32 %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @pg_md5_encrypt(i8* %23, i8* %24, i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %4, align 8
  br label %44

35:                                               ; preds = %17
  %36 = load i8*, i8** %7, align 8
  %37 = call i8* @pg_be_scram_build_secret(i8* %36)
  store i8* %37, i8** %4, align 8
  br label %44

38:                                               ; preds = %17
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %17
  %42 = load i32, i32* @ERROR, align 4
  %43 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  br label %44

44:                                               ; preds = %41, %35, %33, %14
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i64 @get_password_type(i8*) #1

declare dso_local i8* @pstrdup(i8*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @pg_md5_encrypt(i8*, i8*, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i8* @pg_be_scram_build_secret(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

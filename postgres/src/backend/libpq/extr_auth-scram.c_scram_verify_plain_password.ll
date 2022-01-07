; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_scram_verify_plain_password.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth-scram.c_scram_verify_plain_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCRAM_KEY_LEN = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid SCRAM secret for user \22%s\22\00", align 1
@SASLPREP_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scram_verify_plain_password(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %30 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @parse_scram_secret(i8* %33, i32* %11, i8** %8, i32* %26, i32* %29)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* @LOG, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call i32 @ereport(i32 %37, i32 %39)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %85

41:                                               ; preds = %3
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32 @pg_b64_dec_len(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i8* @palloc(i32 %45)
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @pg_b64_decode(i8* %47, i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load i32, i32* @LOG, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %57)
  %59 = call i32 @ereport(i32 %56, i32 %58)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %85

60:                                               ; preds = %41
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @pg_saslprep(i8* %61, i8** %17)
  store i64 %62, i64* %18, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i64, i64* @SASLPREP_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i8*, i8** %17, align 8
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @scram_SaltedPassword(i8* %69, i8* %70, i32 %71, i32 %72, i32* %23)
  %74 = call i32 @scram_ServerKey(i32* %23, i32* %32)
  %75 = load i8*, i8** %17, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @pfree(i8* %78)
  br label %80

80:                                               ; preds = %77, %68
  %81 = load i32, i32* @SCRAM_KEY_LEN, align 4
  %82 = call i64 @memcmp(i32* %32, i32* %29, i32 %81)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %85

85:                                               ; preds = %80, %55, %36
  %86 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @parse_scram_secret(i8*, i32*, i8**, i32*, i32*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errmsg(i8*, i8*) #2

declare dso_local i32 @pg_b64_dec_len(i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @palloc(i32) #2

declare dso_local i32 @pg_b64_decode(i8*, i32, i8*, i32) #2

declare dso_local i64 @pg_saslprep(i8*, i8**) #2

declare dso_local i32 @scram_SaltedPassword(i8*, i8*, i32, i32, i32*) #2

declare dso_local i32 @scram_ServerKey(i32*, i32*) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

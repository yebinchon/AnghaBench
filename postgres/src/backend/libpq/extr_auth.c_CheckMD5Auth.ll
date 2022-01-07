; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_CheckMD5Auth.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/libpq/extr_auth.c_CheckMD5Auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@Db_user_namespace = common dso_local global i64 0, align 8
@FATAL = common dso_local global i32 0, align 4
@ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"MD5 authentication is not supported when \22db_user_namespace\22 is enabled\00", align 1
@LOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not generate random MD5 salt\00", align 1
@STATUS_ERROR = common dso_local global i32 0, align 4
@AUTH_REQ_MD5 = common dso_local global i32 0, align 4
@STATUS_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i8**)* @CheckMD5Auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMD5Auth(%struct.TYPE_5__* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = load i64, i64* @Db_user_namespace, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* @FATAL, align 4
  %15 = load i32, i32* @ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION, align 4
  %16 = call i32 @errcode(i32 %15)
  %17 = call i32 @errmsg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @ereport(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %21 = call i32 @pg_strong_random(i8* %20, i32 4)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @LOG, align 4
  %25 = call i32 @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @ereport(i32 %24, i32 %25)
  %27 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i32, i32* @AUTH_REQ_MD5, align 4
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %32 = call i32 @sendAuthRequest(%struct.TYPE_5__* %29, i32 %30, i8* %31, i32 4)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = call i8* @recv_password_packet(%struct.TYPE_5__* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @STATUS_EOF, align 4
  store i32 %38, i32* %4, align 4
  br label %57

39:                                               ; preds = %28
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %49 = load i8**, i8*** %7, align 8
  %50 = call i32 @md5_crypt_verify(i32 %45, i8* %46, i8* %47, i8* %48, i32 4, i8** %49)
  store i32 %50, i32* %10, align 4
  br label %53

51:                                               ; preds = %39
  %52 = load i32, i32* @STATUS_ERROR, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %42
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @pfree(i8* %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %37, %23
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @pg_strong_random(i8*, i32) #1

declare dso_local i32 @sendAuthRequest(%struct.TYPE_5__*, i32, i8*, i32) #1

declare dso_local i8* @recv_password_packet(%struct.TYPE_5__*) #1

declare dso_local i32 @md5_crypt_verify(i32, i8*, i8*, i8*, i32, i8**) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

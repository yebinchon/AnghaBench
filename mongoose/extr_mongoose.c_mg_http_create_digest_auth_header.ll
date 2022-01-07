; ModuleID = '/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_create_digest_auth_header.c'
source_filename = "/home/carl/AnghaBench/mongoose/extr_mongoose.c_mg_http_create_digest_auth_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mg_http_create_digest_auth_header.colon = internal constant [2 x i8] c":\00", align 1
@mg_http_create_digest_auth_header.qop = internal constant [5 x i8] c"auth\00", align 1
@mg_http_create_digest_auth_header.one = internal constant i64 1, align 8
@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"Authorization: Digest username=\22%s\22,realm=\22%s\22,uri=\22%s\22,qop=%s,nc=1,cnonce=%s,nonce=%s,response=%s\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mg_http_create_digest_auth_header(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [33 x i8], align 16
  %18 = alloca [33 x i8], align 16
  %19 = alloca [40 x i8], align 16
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %20 = getelementptr inbounds [40 x i8], [40 x i8]* %19, i64 0, i64 0
  %21 = call i64 (...) @mg_time()
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %20, i64 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 0
  %24 = load i8*, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = load i8*, i8** %15, align 8
  %31 = load i8*, i8** %15, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = call i32 @cs_md5(i8* %23, i8* %24, i64 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mg_http_create_digest_auth_header.colon, i64 0, i64 0), i64 1, i8* %27, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @mg_http_create_digest_auth_header.colon, i64 0, i64 0), i64 1, i8* %30, i64 %32, i32* null)
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = load i8*, i8** %12, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = getelementptr inbounds [33 x i8], [33 x i8]* %17, i64 0, i64 0
  %41 = load i8*, i8** %16, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %19, i64 0, i64 0
  %45 = getelementptr inbounds [40 x i8], [40 x i8]* %19, i64 0, i64 0
  %46 = call i64 @strlen(i8* %45)
  %47 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %48 = call i32 @mg_mkmd5resp(i8* %34, i64 %36, i8* %37, i64 %39, i8* %40, i32 32, i8* %41, i64 %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 1, i8* %44, i64 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @mg_http_create_digest_auth_header.qop, i64 0, i64 0), i32 4, i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds [40 x i8], [40 x i8]* %19, i64 0, i64 0
  %55 = load i8*, i8** %16, align 8
  %56 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %57 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %49, i64 %50, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52, i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @mg_http_create_digest_auth_header.qop, i64 0, i64 0), i8* %54, i8* %55, i8* %56)
  ret i32 %57
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @mg_time(...) #1

declare dso_local i32 @cs_md5(i8*, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i8*, i64, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mg_mkmd5resp(i8*, i64, i8*, i64, i8*, i32, i8*, i64, i8*, i64, i8*, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

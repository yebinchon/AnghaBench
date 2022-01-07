; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_verify_command.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_verify_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Verification: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@bio_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*)* @verify_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_command(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4, i8* %5, i8* %6, i8* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i32* null, i32** %23, align 8
  store i32* null, i32** %24, align 8
  store i32 0, i32* %25, align 4
  %26 = load i8*, i8** %14, align 8
  %27 = call i32* @BIO_new_file(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %27, i32** %21, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %10
  br label %70

30:                                               ; preds = %10
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32*, i32** %21, align 8
  %35 = call i32* @d2i_PKCS7_bio(i32* %34, i32* null)
  store i32* %35, i32** %22, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %70

38:                                               ; preds = %33
  br label %45

39:                                               ; preds = %30
  %40 = load i32*, i32** %21, align 8
  %41 = call i32* @d2i_TS_RESP_bio(i32* %40, i32* null)
  store i32* %41, i32** %23, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %70

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = call i32* @create_verify_ctx(i8* %46, i8* %47, i8* %48, i8* %49, i8* %50, i8* %51, i8* %52, i32* %53)
  store i32* %54, i32** %24, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %70

57:                                               ; preds = %45
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32*, i32** %24, align 8
  %62 = load i32*, i32** %22, align 8
  %63 = call i32 @TS_RESP_verify_token(i32* %61, i32* %62)
  br label %68

64:                                               ; preds = %57
  %65 = load i32*, i32** %24, align 8
  %66 = load i32*, i32** %23, align 8
  %67 = call i32 @TS_RESP_verify_response(i32* %65, i32* %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = phi i32 [ %63, %60 ], [ %67, %64 ]
  store i32 %69, i32* %25, align 4
  br label %70

70:                                               ; preds = %68, %56, %43, %37, %29
  %71 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* %25, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %80

76:                                               ; preds = %70
  %77 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @bio_err, align 4
  %79 = call i32 @ERR_print_errors(i32 %78)
  br label %80

80:                                               ; preds = %76, %74
  %81 = load i32*, i32** %21, align 8
  %82 = call i32 @BIO_free_all(i32* %81)
  %83 = load i32*, i32** %22, align 8
  %84 = call i32 @PKCS7_free(i32* %83)
  %85 = load i32*, i32** %23, align 8
  %86 = call i32 @TS_RESP_free(i32* %85)
  %87 = load i32*, i32** %24, align 8
  %88 = call i32 @TS_VERIFY_CTX_free(i32* %87)
  %89 = load i32, i32* %25, align 4
  ret i32 %89
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @d2i_PKCS7_bio(i32*, i32*) #1

declare dso_local i32* @d2i_TS_RESP_bio(i32*, i32*) #1

declare dso_local i32* @create_verify_ctx(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @TS_RESP_verify_token(i32*, i32*) #1

declare dso_local i32 @TS_RESP_verify_response(i32*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @PKCS7_free(i32*) #1

declare dso_local i32 @TS_RESP_free(i32*) #1

declare dso_local i32 @TS_VERIFY_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

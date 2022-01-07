; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_get_name.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pem/extr_pem_lib.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LINESIZE = common dso_local global i32 0, align 4
@PEM_F_GET_NAME = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@PEM_R_NO_START_LINE = common dso_local global i32 0, align 4
@PEM_FLAG_ONLY_B64 = common dso_local global i32 0, align 4
@beginstr = common dso_local global i32 0, align 4
@BEGINLEN = common dso_local global i32 0, align 4
@TAILLEN = common dso_local global i32 0, align 4
@tailstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name(i32* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @LINESIZE, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @pem_malloc(i32 %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @PEM_F_GET_NAME, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @PEMerr(i32 %19, i32 %20)
  store i32 0, i32* %4, align 4
  br label %108

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %66, %22
  %24 = load i32*, i32** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @LINESIZE, align 4
  %27 = call i32 @BIO_gets(i32* %24, i8* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @PEM_F_GET_NAME, align 4
  %32 = load i32, i32* @PEM_R_NO_START_LINE, align 4
  %33 = call i32 @PEMerr(i32 %31, i32 %32)
  br label %101

34:                                               ; preds = %23
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PEM_FLAG_ONLY_B64, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @sanitize_line(i8* %35, i32 %36, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %34
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @beginstr, align 4
  %46 = load i32, i32* @BEGINLEN, align 4
  %47 = call i64 @strncmp(i8* %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @TAILLEN, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %66, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i32, i32* @TAILLEN, align 4
  %59 = sext i32 %58 to i64
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i32, i32* @tailstr, align 4
  %63 = load i32, i32* @TAILLEN, align 4
  %64 = call i64 @strncmp(i8* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %53, %49, %43
  %67 = phi i1 [ true, %49 ], [ true, %43 ], [ %65, %53 ]
  br i1 %67, label %23, label %68

68:                                               ; preds = %66
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @TAILLEN, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @BEGINLEN, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i32, i32* @TAILLEN, align 4
  %79 = sub nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i8* @pem_malloc(i32 %81, i32 %82)
  %84 = load i8**, i8*** %6, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i8**, i8*** %6, align 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %68
  %89 = load i32, i32* @PEM_F_GET_NAME, align 4
  %90 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %91 = call i32 @PEMerr(i32 %89, i32 %90)
  br label %101

92:                                               ; preds = %68
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* @BEGINLEN, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @memcpy(i8* %94, i8* %98, i32 %99)
  store i32 1, i32* %9, align 4
  br label %101

101:                                              ; preds = %92, %88, %30
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @LINESIZE, align 4
  %105 = add nsw i32 %104, 1
  %106 = call i32 @pem_free(i8* %102, i32 %103, i32 %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %101, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i8* @pem_malloc(i32, i32) #1

declare dso_local i32 @PEMerr(i32, i32) #1

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @sanitize_line(i8*, i32, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @pem_free(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

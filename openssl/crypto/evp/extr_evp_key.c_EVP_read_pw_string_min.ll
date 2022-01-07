; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_key.c_EVP_read_pw_string_min.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_evp_key.c_EVP_read_pw_string_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@prompt_string = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_read_pw_string_min(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load i8*, i8** @prompt_string, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i8*, i8** @prompt_string, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %29, %23, %5
  %32 = call i32* (...) @UI_new()
  store i32* %32, i32** %15, align 8
  %33 = load i32*, i32** %15, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %84

37:                                               ; preds = %31
  %38 = load i32*, i32** %15, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @BUFSIZ, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @BUFSIZ, align 4
  %47 = sub nsw i32 %46, 1
  br label %50

48:                                               ; preds = %37
  %49 = load i32, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %47, %45 ], [ %49, %48 ]
  %52 = call i64 @UI_add_input_string(i32* %38, i8* %39, i32 0, i8* %40, i32 %41, i32 %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %74, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load i32*, i32** %15, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @BUFSIZ, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @BUFSIZ, align 4
  %66 = sub nsw i32 %65, 1
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %9, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %66, %64 ], [ %68, %67 ]
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @UI_add_verify_string(i32* %58, i8* %59, i32 0, i8* %20, i32 %60, i32 %70, i8* %71)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %50
  br label %80

75:                                               ; preds = %69, %54
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @UI_process(i32* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @BUFSIZ, align 4
  %79 = call i32 @OPENSSL_cleanse(i8* %20, i32 %78)
  br label %80

80:                                               ; preds = %75, %74
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @UI_free(i32* %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %84

84:                                               ; preds = %80, %35
  %85 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @UI_new(...) #2

declare dso_local i64 @UI_add_input_string(i32*, i8*, i32, i8*, i32, i32) #2

declare dso_local i64 @UI_add_verify_string(i32*, i8*, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @UI_process(i32*) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @UI_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

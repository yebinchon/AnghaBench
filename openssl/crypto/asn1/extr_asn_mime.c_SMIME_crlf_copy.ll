; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn_mime.c_SMIME_crlf_copy.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn_mime.c_SMIME_crlf_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_SMLEN = common dso_local global i32 0, align 4
@SMIME_BINARY = common dso_local global i32 0, align 4
@SMIME_TEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Content-Type: text/plain\0D\0A\0D\0A\00", align 1
@SMIME_ASCIICRLF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMIME_crlf_copy(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @MAX_SMLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = call i32 (...) @BIO_f_buffer()
  %21 = call i32* @BIO_new(i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32* @BIO_push(i32* %26, i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SMIME_BINARY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %39, %33
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @MAX_SMLEN, align 4
  %37 = call i32 @BIO_read(i32* %35, i8* %19, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @BIO_write(i32* %40, i8* %19, i32 %41)
  br label %34

43:                                               ; preds = %34
  br label %108

44:                                               ; preds = %25
  store i32 0, i32* %14, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SMIME_TEXT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @BIO_printf(i32* %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %106, %52
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @MAX_SMLEN, align 4
  %56 = call i32 @BIO_gets(i32* %54, i8* %19, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = call signext i8 @strip_eol(i8* %19, i32* %10, i32 %59)
  store i8 %60, i8* %9, align 1
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @SMIME_ASCIICRLF, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %76, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @BIO_write(i32* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %69

79:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %79, %63
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @BIO_write(i32* %81, i8* %19, i32 %82)
  %84 = load i8, i8* %9, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 @BIO_write(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %89

89:                                               ; preds = %86, %80
  br label %106

90:                                               ; preds = %58
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SMIME_ASCIICRLF, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %105

98:                                               ; preds = %90
  %99 = load i8, i8* %9, align 1
  %100 = icmp ne i8 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @BIO_write(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %95
  br label %106

106:                                              ; preds = %105, %89
  br label %53

107:                                              ; preds = %53
  br label %108

108:                                              ; preds = %107, %43
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @BIO_flush(i32* %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @BIO_pop(i32* %111)
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @BIO_free(i32* %113)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %115

115:                                              ; preds = %108, %24
  %116 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @BIO_new(i32) #2

declare dso_local i32 @BIO_f_buffer(...) #2

declare dso_local i32* @BIO_push(i32*, i32*) #2

declare dso_local i32 @BIO_read(i32*, i8*, i32) #2

declare dso_local i32 @BIO_write(i32*, i8*, i32) #2

declare dso_local i32 @BIO_printf(i32*, i8*) #2

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #2

declare dso_local signext i8 @strip_eol(i8*, i32*, i32) #2

declare dso_local i32 @BIO_flush(i32*) #2

declare dso_local i32 @BIO_pop(i32*) #2

declare dso_local i32 @BIO_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

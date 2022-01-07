; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_reply_command.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_reply_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Response has been generated.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Response is not generated.\0A\00", align 1
@FORMAT_TEXT = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32, i8*, i32, i32)* @reply_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reply_command(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32 %11, i8* %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store i32* %0, i32** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i32* %6, i32** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32 %13, i32* %29, align 4
  store i32 %14, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32* null, i32** %32, align 8
  store i32* null, i32** %33, align 8
  store i32* null, i32** %34, align 8
  store i32* null, i32** %35, align 8
  store i32* null, i32** %36, align 8
  store i32* null, i32** %37, align 8
  %40 = load i8*, i8** %26, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %15
  %43 = load i8*, i8** %26, align 8
  %44 = call i32* @BIO_new_file(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %44, i32** %33, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %138

47:                                               ; preds = %42
  %48 = load i32, i32* %27, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %33, align 8
  %52 = call i32* @read_PKCS7(i32* %51)
  store i32* %52, i32** %32, align 8
  br label %56

53:                                               ; preds = %47
  %54 = load i32*, i32** %33, align 8
  %55 = call i32* @d2i_TS_RESP_bio(i32* %54, i32* null)
  store i32* %55, i32** %32, align 8
  br label %56

56:                                               ; preds = %53, %50
  br label %78

57:                                               ; preds = %15
  %58 = load i32*, i32** %16, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i8*, i8** %18, align 8
  %61 = load i8*, i8** %19, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i8*, i8** %21, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = load i8*, i8** %23, align 8
  %66 = load i8*, i8** %24, align 8
  %67 = load i8*, i8** %25, align 8
  %68 = call i32* @create_response(i32* %58, i8* %59, i8* %60, i8* %61, i8* %62, i8* %63, i32* %64, i8* %65, i8* %66, i8* %67)
  store i32* %68, i32** %32, align 8
  %69 = load i32*, i32** %32, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @bio_err, align 4
  %73 = call i32 @BIO_printf(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %77

74:                                               ; preds = %57
  %75 = load i32, i32* @bio_err, align 4
  %76 = call i32 @BIO_printf(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i32*, i32** %32, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %138

82:                                               ; preds = %78
  %83 = load i32, i32* %30, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %82
  %86 = load i8*, i8** %28, align 8
  %87 = load i32, i32* @FORMAT_TEXT, align 4
  %88 = call i32* @bio_open_default(i8* %86, i8 signext 119, i32 %87)
  store i32* %88, i32** %37, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %138

91:                                               ; preds = %85
  %92 = load i32, i32* %29, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32*, i32** %32, align 8
  %96 = call i32* @TS_RESP_get_tst_info(i32* %95)
  store i32* %96, i32** %38, align 8
  %97 = load i32*, i32** %37, align 8
  %98 = load i32*, i32** %38, align 8
  %99 = call i32 @TS_TST_INFO_print_bio(i32* %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %94
  br label %138

102:                                              ; preds = %94
  br label %110

103:                                              ; preds = %91
  %104 = load i32*, i32** %37, align 8
  %105 = load i32*, i32** %32, align 8
  %106 = call i32 @TS_RESP_print_bio(i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %138

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109, %102
  br label %137

111:                                              ; preds = %82
  %112 = load i8*, i8** %28, align 8
  %113 = load i32, i32* @FORMAT_ASN1, align 4
  %114 = call i32* @bio_open_default(i8* %112, i8 signext 119, i32 %113)
  store i32* %114, i32** %37, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %138

117:                                              ; preds = %111
  %118 = load i32, i32* %29, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load i32*, i32** %32, align 8
  %122 = call i32* @TS_RESP_get_token(i32* %121)
  store i32* %122, i32** %39, align 8
  %123 = load i32*, i32** %37, align 8
  %124 = load i32*, i32** %39, align 8
  %125 = call i32 @i2d_PKCS7_bio(i32* %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %138

128:                                              ; preds = %120
  br label %136

129:                                              ; preds = %117
  %130 = load i32*, i32** %37, align 8
  %131 = load i32*, i32** %32, align 8
  %132 = call i32 @i2d_TS_RESP_bio(i32* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  br label %138

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %128
  br label %137

137:                                              ; preds = %136, %110
  store i32 1, i32* %31, align 4
  br label %138

138:                                              ; preds = %137, %134, %127, %116, %108, %101, %90, %81, %46
  %139 = load i32, i32* @bio_err, align 4
  %140 = call i32 @ERR_print_errors(i32 %139)
  %141 = load i32*, i32** %33, align 8
  %142 = call i32 @BIO_free_all(i32* %141)
  %143 = load i32*, i32** %34, align 8
  %144 = call i32 @BIO_free_all(i32* %143)
  %145 = load i32*, i32** %35, align 8
  %146 = call i32 @BIO_free_all(i32* %145)
  %147 = load i32*, i32** %36, align 8
  %148 = call i32 @BIO_free_all(i32* %147)
  %149 = load i32*, i32** %37, align 8
  %150 = call i32 @BIO_free_all(i32* %149)
  %151 = load i32*, i32** %32, align 8
  %152 = call i32 @TS_RESP_free(i32* %151)
  %153 = load i32, i32* %31, align 4
  ret i32 %153
}

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @read_PKCS7(i32*) #1

declare dso_local i32* @d2i_TS_RESP_bio(i32*, i32*) #1

declare dso_local i32* @create_response(i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @TS_RESP_get_tst_info(i32*) #1

declare dso_local i32 @TS_TST_INFO_print_bio(i32*, i32*) #1

declare dso_local i32 @TS_RESP_print_bio(i32*, i32*) #1

declare dso_local i32* @TS_RESP_get_token(i32*) #1

declare dso_local i32 @i2d_PKCS7_bio(i32*, i32*) #1

declare dso_local i32 @i2d_TS_RESP_bio(i32*, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @TS_RESP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

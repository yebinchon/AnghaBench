; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_ts.c_create_verify_ctx.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_ts.c_create_verify_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TS_VFY_VERSION = common dso_local global i32 0, align 4
@TS_VFY_SIGNER = common dso_local global i32 0, align 4
@TS_VFY_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@TS_VFY_IMPRINT = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid digest string\0A\00", align 1
@TS_VFY_SIGNATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32*)* @create_verify_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_verify_ctx(i8* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %78

31:                                               ; preds = %28, %8
  %32 = call i32* (...) @TS_VERIFY_CTX_new()
  store i32* %32, i32** %18, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %125

35:                                               ; preds = %31
  %36 = load i32, i32* @TS_VFY_VERSION, align 4
  %37 = load i32, i32* @TS_VFY_SIGNER, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %22, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  store i32* null, i32** %23, align 8
  %42 = load i32, i32* @TS_VFY_DATA, align 4
  %43 = load i32, i32* %22, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %22, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = call i32* @BIO_new_file(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** %23, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %125

49:                                               ; preds = %41
  %50 = load i32*, i32** %18, align 8
  %51 = load i32*, i32** %23, align 8
  %52 = call i32* @TS_VERIFY_CTX_set_data(i32* %50, i32* %51)
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %23, align 8
  %56 = call i32 @BIO_free_all(i32* %55)
  br label %125

57:                                               ; preds = %49
  br label %77

58:                                               ; preds = %35
  %59 = load i8*, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = call i8* @OPENSSL_hexstr2buf(i8* %62, i64* %24)
  store i8* %63, i8** %25, align 8
  %64 = load i32, i32* @TS_VFY_IMPRINT, align 4
  %65 = load i32, i32* %22, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %22, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = load i8*, i8** %25, align 8
  %69 = load i64, i64* %24, align 8
  %70 = call i32* @TS_VERIFY_CTX_set_imprint(i32* %67, i8* %68, i64 %69)
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* @bio_err, align 4
  %74 = call i32 @BIO_printf(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %125

75:                                               ; preds = %61
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %57
  br label %99

78:                                               ; preds = %28
  %79 = load i8*, i8** %12, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load i8*, i8** %12, align 8
  %83 = call i32* @BIO_new_file(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %83, i32** %19, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %125

86:                                               ; preds = %81
  %87 = load i32*, i32** %19, align 8
  %88 = call i32* @d2i_TS_REQ_bio(i32* %87, i32* null)
  store i32* %88, i32** %20, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %125

91:                                               ; preds = %86
  %92 = load i32*, i32** %20, align 8
  %93 = call i32* @TS_REQ_to_TS_VERIFY_CTX(i32* %92, i32* null)
  store i32* %93, i32** %18, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %125

96:                                               ; preds = %91
  br label %98

97:                                               ; preds = %78
  store i32* null, i32** %9, align 8
  br label %137

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %77
  %100 = load i32*, i32** %18, align 8
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* @TS_VFY_SIGNATURE, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @TS_VERIFY_CTX_add_flags(i32* %100, i32 %103)
  %105 = load i32*, i32** %18, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = load i8*, i8** %15, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = call i32 @create_cert_store(i8* %106, i8* %107, i8* %108, i32* %109)
  %111 = call i32* @TS_VERIFY_CTX_set_store(i32* %105, i32 %110)
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  br label %125

114:                                              ; preds = %99
  %115 = load i8*, i8** %16, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32*, i32** %18, align 8
  %119 = load i8*, i8** %16, align 8
  %120 = call i32 @TS_CONF_load_certs(i8* %119)
  %121 = call i32* @TS_VERIFY_CTX_set_certs(i32* %118, i32 %120)
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %125

124:                                              ; preds = %117, %114
  store i32 1, i32* %21, align 4
  br label %125

125:                                              ; preds = %124, %123, %113, %95, %90, %85, %72, %54, %48, %34
  %126 = load i32, i32* %21, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @TS_VERIFY_CTX_free(i32* %129)
  store i32* null, i32** %18, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32*, i32** %19, align 8
  %133 = call i32 @BIO_free_all(i32* %132)
  %134 = load i32*, i32** %20, align 8
  %135 = call i32 @TS_REQ_free(i32* %134)
  %136 = load i32*, i32** %18, align 8
  store i32* %136, i32** %9, align 8
  br label %137

137:                                              ; preds = %131, %97
  %138 = load i32*, i32** %9, align 8
  ret i32* %138
}

declare dso_local i32* @TS_VERIFY_CTX_new(...) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @TS_VERIFY_CTX_set_data(i32*, i32*) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i8* @OPENSSL_hexstr2buf(i8*, i64*) #1

declare dso_local i32* @TS_VERIFY_CTX_set_imprint(i32*, i8*, i64) #1

declare dso_local i32 @BIO_printf(i32, i8*) #1

declare dso_local i32* @d2i_TS_REQ_bio(i32*, i32*) #1

declare dso_local i32* @TS_REQ_to_TS_VERIFY_CTX(i32*, i32*) #1

declare dso_local i32 @TS_VERIFY_CTX_add_flags(i32*, i32) #1

declare dso_local i32* @TS_VERIFY_CTX_set_store(i32*, i32) #1

declare dso_local i32 @create_cert_store(i8*, i8*, i8*, i32*) #1

declare dso_local i32* @TS_VERIFY_CTX_set_certs(i32*, i32) #1

declare dso_local i32 @TS_CONF_load_certs(i8*) #1

declare dso_local i32 @TS_VERIFY_CTX_free(i32*) #1

declare dso_local i32 @TS_REQ_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

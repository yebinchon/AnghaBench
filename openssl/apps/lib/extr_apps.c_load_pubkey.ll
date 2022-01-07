; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_pubkey.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_load_pubkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

@FORMAT_ENGINE = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no keyfile specified\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"no engine specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot load %s from engine\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@FORMAT_ASN1 = common dso_local global i32 0, align 4
@FORMAT_ASN1RSA = common dso_local global i32 0, align 4
@FORMAT_PEMRSA = common dso_local global i32 0, align 4
@password_callback = common dso_local global i64 0, align 8
@FORMAT_PEM = common dso_local global i32 0, align 4
@FORMAT_MSBLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"unable to load %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @load_pubkey(i8* %0, i32 %1, i32 %2, i8* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i8* %18, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i8* %20, i8** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @FORMAT_ENGINE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @bio_err, align 4
  %33 = call i32 (i32, i8*, ...) @BIO_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %153

34:                                               ; preds = %27, %6
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FORMAT_ENGINE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @bio_err, align 4
  %43 = call i32 (i32, i8*, ...) @BIO_printf(i32 %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %59

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 (...) @get_ui_method()
  %48 = inttoptr i64 %47 to i32*
  %49 = call i32* @ENGINE_load_public_key(i32* %45, i8* %46, i32* %48, %struct.TYPE_5__* %15)
  store i32* %49, i32** %14, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load i32, i32* @bio_err, align 4
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 (i32, i8*, ...) @BIO_printf(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @bio_err, align 4
  %57 = call i32 @ERR_print_errors(i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  br label %59

59:                                               ; preds = %58, %41
  br label %153

60:                                               ; preds = %34
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @stdin, align 4
  %68 = call i32 @unbuffer(i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = call i32* @dup_bio_in(i32 %69)
  store i32* %70, i32** %13, align 8
  br label %75

71:                                               ; preds = %63, %60
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32* @bio_open_default(i8* %72, i8 signext 114, i32 %73)
  store i32* %74, i32** %13, align 8
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32*, i32** %13, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %153

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @FORMAT_ASN1, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32*, i32** %13, align 8
  %85 = call i32* @d2i_PUBKEY_bio(i32* %84, i32* null)
  store i32* %85, i32** %14, align 8
  br label %152

86:                                               ; preds = %79
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @FORMAT_ASN1RSA, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load i32*, i32** %13, align 8
  %92 = call i32* @d2i_RSAPublicKey_bio(i32* %91, i32* null)
  store i32* %92, i32** %16, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %90
  %96 = call i32* (...) @EVP_PKEY_new()
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @EVP_PKEY_set1_RSA(i32* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32*, i32** %16, align 8
  %105 = call i32 @RSA_free(i32* %104)
  br label %107

106:                                              ; preds = %90
  store i32* null, i32** %14, align 8
  br label %107

107:                                              ; preds = %106, %103
  br label %151

108:                                              ; preds = %86
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @FORMAT_PEMRSA, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load i32*, i32** %13, align 8
  %114 = load i64, i64* @password_callback, align 8
  %115 = inttoptr i64 %114 to i32*
  %116 = call i32* @PEM_read_bio_RSAPublicKey(i32* %113, i32* null, i32* %115, %struct.TYPE_5__* %15)
  store i32* %116, i32** %17, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %112
  %120 = call i32* (...) @EVP_PKEY_new()
  store i32* %120, i32** %14, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = load i32*, i32** %14, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @EVP_PKEY_set1_RSA(i32* %124, i32* %125)
  br label %127

127:                                              ; preds = %123, %119
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @RSA_free(i32* %128)
  br label %131

130:                                              ; preds = %112
  store i32* null, i32** %14, align 8
  br label %131

131:                                              ; preds = %130, %127
  br label %150

132:                                              ; preds = %108
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* @FORMAT_PEM, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32*, i32** %13, align 8
  %138 = load i64, i64* @password_callback, align 8
  %139 = inttoptr i64 %138 to i32*
  %140 = call i32* @PEM_read_bio_PUBKEY(i32* %137, i32* null, i32* %139, %struct.TYPE_5__* %15)
  store i32* %140, i32** %14, align 8
  br label %149

141:                                              ; preds = %132
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @FORMAT_MSBLOB, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32*, i32** %13, align 8
  %147 = call i32* @b2i_PublicKey_bio(i32* %146)
  store i32* %147, i32** %14, align 8
  br label %148

148:                                              ; preds = %145, %141
  br label %149

149:                                              ; preds = %148, %136
  br label %150

150:                                              ; preds = %149, %131
  br label %151

151:                                              ; preds = %150, %107
  br label %152

152:                                              ; preds = %151, %83
  br label %153

153:                                              ; preds = %152, %78, %59, %31
  %154 = load i32*, i32** %13, align 8
  %155 = call i32 @BIO_free(i32* %154)
  %156 = load i32*, i32** %14, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @bio_err, align 4
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 (i32, i8*, ...) @BIO_printf(i32 %159, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32*, i32** %14, align 8
  ret i32* %163
}

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32* @ENGINE_load_public_key(i32*, i8*, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @get_ui_method(...) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @unbuffer(i32) #1

declare dso_local i32* @dup_bio_in(i32) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @d2i_PUBKEY_bio(i32*, i32*) #1

declare dso_local i32* @d2i_RSAPublicKey_bio(i32*, i32*) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_RSA(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32* @PEM_read_bio_RSAPublicKey(i32*, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @PEM_read_bio_PUBKEY(i32*, i32*, i32*, %struct.TYPE_5__*) #1

declare dso_local i32* @b2i_PublicKey_bio(i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/openssl/apps/extr_gendsa.c_gendsa_main.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/extr_gendsa.c_gendsa_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gendsa_options = common dso_local global i32 0, align 4
@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@FORMAT_PEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unable to load DSA parameter file\0A\00", align 1
@OPENSSL_DSA_MAX_MODULUS_BITS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [144 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %d! Larger key size may behave not as expected.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Generating DSA key, %d bits\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gendsa_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* @gendsa_options, align 4
  %23 = call i8* @opt_init(i32 %20, i8** %21, i32 %22)
  store i8* %23, i8** %14, align 8
  br label %24

24:                                               ; preds = %57, %2
  %25 = call i32 (...) @opt_next()
  store i32 %25, i32* %15, align 4
  %26 = icmp ne i32 %25, 134
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  switch i32 %28, label %57 [
    i32 134, label %29
    i32 133, label %29
    i32 132, label %34
    i32 131, label %37
    i32 130, label %39
    i32 135, label %41
    i32 129, label %44
    i32 136, label %50
    i32 128, label %56
  ]

29:                                               ; preds = %27, %27
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* @bio_err, align 4
  %32 = load i8*, i8** %14, align 8
  %33 = call i32 (i32, i8*, ...) @BIO_printf(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %32)
  br label %134

34:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  %35 = load i32, i32* @gendsa_options, align 4
  %36 = call i32 @opt_help(i32 %35)
  br label %134

37:                                               ; preds = %27
  %38 = call i8* (...) @opt_arg()
  store i8* %38, i8** %11, align 8
  br label %57

39:                                               ; preds = %27
  %40 = call i8* (...) @opt_arg()
  store i8* %40, i8** %12, align 8
  br label %57

41:                                               ; preds = %27
  %42 = call i8* (...) @opt_arg()
  %43 = call i32* @setup_engine(i8* %42, i32 0)
  store i32* %43, i32** %5, align 8
  br label %57

44:                                               ; preds = %27
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @opt_rand(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %134

49:                                               ; preds = %44
  br label %57

50:                                               ; preds = %27
  %51 = call i32 (...) @opt_unknown()
  %52 = call i32 @opt_cipher(i32 %51, i32** %9)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %134

55:                                               ; preds = %50
  br label %57

56:                                               ; preds = %27
  store i32 1, i32* %18, align 4
  br label %57

57:                                               ; preds = %27, %56, %55, %49, %41, %39, %37
  br label %24

58:                                               ; preds = %24
  %59 = call i32 (...) @opt_num_rest()
  store i32 %59, i32* %3, align 4
  %60 = call i8** (...) @opt_rest()
  store i8** %60, i8*** %4, align 8
  store i32 1, i32* %17, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %30

64:                                               ; preds = %58
  %65 = load i8**, i8*** %4, align 8
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @app_passwd(i32* null, i8* %67, i32* null, i8** %13)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 (i32, i8*, ...) @BIO_printf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %134

73:                                               ; preds = %64
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* @FORMAT_PEM, align 4
  %76 = call i32* @bio_open_default(i8* %74, i8 signext 114, i32 %75)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %141

80:                                               ; preds = %73
  %81 = load i32*, i32** %7, align 8
  %82 = call i32* @PEM_read_bio_DSAparams(i32* %81, i32* null, i32* null, i32* null)
  store i32* %82, i32** %8, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @bio_err, align 4
  %86 = call i32 (i32, i8*, ...) @BIO_printf(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %134

87:                                               ; preds = %80
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @BIO_free(i32* %88)
  store i32* null, i32** %7, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* @FORMAT_PEM, align 4
  %92 = load i32, i32* %17, align 4
  %93 = call i32* @bio_open_owner(i8* %90, i32 %91, i32 %92)
  store i32* %93, i32** %6, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %141

97:                                               ; preds = %87
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @DSA_get0_pqg(i32* %98, i32** %19, i32* null, i32* null)
  %100 = load i32*, i32** %19, align 8
  %101 = call i64 @BN_num_bits(i32* %100)
  %102 = load i64, i64* @OPENSSL_DSA_MAX_MODULUS_BITS, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* @bio_err, align 4
  %106 = load i64, i64* @OPENSSL_DSA_MAX_MODULUS_BITS, align 8
  %107 = load i32*, i32** %19, align 8
  %108 = call i64 @BN_num_bits(i32* %107)
  %109 = call i32 (i32, i8*, ...) @BIO_printf(i32 %105, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.3, i64 0, i64 0), i64 %106, i64 %108)
  br label %110

110:                                              ; preds = %104, %97
  %111 = load i32, i32* %18, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @bio_err, align 4
  %115 = load i32*, i32** %19, align 8
  %116 = call i64 @BN_num_bits(i32* %115)
  %117 = call i32 (i32, i8*, ...) @BIO_printf(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %113, %110
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @DSA_generate_key(i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %134

123:                                              ; preds = %118
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @assert(i32 %124)
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %8, align 8
  %128 = load i32*, i32** %9, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @PEM_write_bio_DSAPrivateKey(i32* %126, i32* %127, i32* %128, i32* null, i32 0, i32* null, i8* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %123
  br label %134

133:                                              ; preds = %123
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %133, %132, %122, %84, %70, %54, %48, %34, %30
  %135 = load i32, i32* %16, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* @bio_err, align 4
  %139 = call i32 @ERR_print_errors(i32 %138)
  br label %140

140:                                              ; preds = %137, %134
  br label %141

141:                                              ; preds = %140, %96, %79
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @BIO_free(i32* %142)
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @BIO_free_all(i32* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @DSA_free(i32* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @release_engine(i32* %148)
  %150 = load i8*, i8** %13, align 8
  %151 = call i32 @OPENSSL_free(i8* %150)
  %152 = load i32, i32* %16, align 4
  ret i32 %152
}

declare dso_local i8* @opt_init(i32, i8**, i32) #1

declare dso_local i32 @opt_next(...) #1

declare dso_local i32 @BIO_printf(i32, i8*, ...) #1

declare dso_local i32 @opt_help(i32) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32* @setup_engine(i8*, i32) #1

declare dso_local i32 @opt_rand(i32) #1

declare dso_local i32 @opt_cipher(i32, i32**) #1

declare dso_local i32 @opt_unknown(...) #1

declare dso_local i32 @opt_num_rest(...) #1

declare dso_local i8** @opt_rest(...) #1

declare dso_local i32 @app_passwd(i32*, i8*, i32*, i8**) #1

declare dso_local i32* @bio_open_default(i8*, i8 signext, i32) #1

declare dso_local i32* @PEM_read_bio_DSAparams(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

declare dso_local i32* @bio_open_owner(i8*, i32, i32) #1

declare dso_local i32 @DSA_get0_pqg(i32*, i32**, i32*, i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @DSA_generate_key(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PEM_write_bio_DSAPrivateKey(i32*, i32*, i32*, i32*, i32, i32*, i8*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @BIO_free_all(i32*) #1

declare dso_local i32 @DSA_free(i32*) #1

declare dso_local i32 @release_engine(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

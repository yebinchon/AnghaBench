; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_encrypt_or_decrypt.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_encrypt_or_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"base91\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"punycode\00", align 1
@s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"Invalid IV.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Invalid key\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Unknown %s algorithm '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"%s key not defined. Use -S [key]\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Encryption\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Decryption\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32*, i32, i32)* @encrypt_or_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_or_decrypt(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %7
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %29, %25, %7
  %35 = phi i1 [ true, %25 ], [ true, %7 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %101

42:                                               ; preds = %39, %34
  %43 = call i32* (...) @r_crypto_new()
  store i32* %43, i32** %17, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @r_crypto_use(i32* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %42
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @r_crypto_set_key(i32* %49, i32 %50, i64 %51, i32 0, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %48
  %56 = load i8*, i8** %11, align 8
  store i8* %56, i8** %18, align 8
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %19, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32*, i32** %17, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @r_crypto_set_iv(i32* %61, i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %109

68:                                               ; preds = %60, %55
  %69 = load i32*, i32** %17, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load i32, i32* %19, align 4
  %73 = call i32 @r_crypto_update(i32* %69, i32* %71, i32 %72)
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @r_crypto_final(i32* %74, i32* null, i32 0)
  store i32 0, i32* %20, align 4
  %76 = load i32*, i32** %17, align 8
  %77 = call i32* @r_crypto_get_output(i32* %76, i32* %20)
  store i32* %77, i32** %21, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load i32*, i32** %21, align 8
  %82 = load i32, i32* %20, align 4
  %83 = call i32 @write(i32 1, i32* %81, i32 %82)
  %84 = load i32*, i32** %21, align 8
  %85 = call i32 @free(i32* %84)
  br label %86

86:                                               ; preds = %80, %68
  br label %89

87:                                               ; preds = %48
  %88 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %86
  store i32 0, i32* %8, align 4
  br label %109

90:                                               ; preds = %42
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %95, i8* %96)
  br label %98

98:                                               ; preds = %90
  %99 = load i32*, i32** %17, align 8
  %100 = call i32 @r_crypto_free(i32* %99)
  br label %108

101:                                              ; preds = %39
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)
  %107 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %101, %98
  store i32 1, i32* %8, align 4
  br label %109

109:                                              ; preds = %108, %89, %66
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @r_crypto_new(...) #1

declare dso_local i64 @r_crypto_use(i32*, i8*) #1

declare dso_local i64 @r_crypto_set_key(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @r_crypto_set_iv(i32*, i32*, i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_crypto_update(i32*, i32*, i32) #1

declare dso_local i32 @r_crypto_final(i32*, i32*, i32) #1

declare dso_local i32* @r_crypto_get_output(i32*, i32*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @r_crypto_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_encrypt_or_decrypt_file.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/main/extr_rahash2.c_encrypt_or_decrypt_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"base91\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"punycode\00", align 1
@s = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"rahash2: Cannot open '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Invalid IV.\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Invalid key\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Unknown %s algorithm '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"decryption\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s key not defined. Use -S [key]\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Encryption\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Decryption\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32*, i32, i32)* @encrypt_or_decrypt_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_or_decrypt_file(i8* %0, i32 %1, i8* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %27, %23, %6
  %33 = phi i1 [ true, %23 ], [ true, %6 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %118

40:                                               ; preds = %37, %32
  %41 = call i32* (...) @r_crypto_new()
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @r_crypto_use(i32* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %40
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 1), align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s, i32 0, i32 0), align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @r_crypto_set_key(i32* %47, i32 %48, i64 %49, i32 0, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %104

53:                                               ; preds = %46
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %10, align 8
  %59 = call i64 @r_file_slurp(i8* %58, i32* %16)
  %60 = inttoptr i64 %59 to i32*
  br label %64

61:                                               ; preds = %53
  %62 = call i64 @r_stdin_slurp(i32* %16)
  %63 = inttoptr i64 %62 to i32*
  br label %64

64:                                               ; preds = %61, %57
  %65 = phi i32* [ %60, %57 ], [ %63, %61 ]
  store i32* %65, i32** %17, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  store i32 -1, i32* %7, align 4
  br label %126

71:                                               ; preds = %64
  %72 = load i32*, i32** %11, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32*, i32** %15, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @r_crypto_set_iv(i32* %75, i32* %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @free(i32* %82)
  store i32 0, i32* %7, align 4
  br label %126

84:                                               ; preds = %74, %71
  %85 = load i32*, i32** %15, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @r_crypto_update(i32* %85, i32* %86, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @r_crypto_final(i32* %89, i32* null, i32 0)
  store i32 0, i32* %18, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = call i32* @r_crypto_get_output(i32* %91, i32* %18)
  store i32* %92, i32** %19, align 8
  %93 = load i32*, i32** %19, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32*, i32** %19, align 8
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @write(i32 1, i32* %96, i32 %97)
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @free(i32* %99)
  br label %101

101:                                              ; preds = %95, %84
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @free(i32* %102)
  br label %106

104:                                              ; preds = %46
  %105 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %101
  store i32 0, i32* %7, align 4
  br label %126

107:                                              ; preds = %40
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %112, i8* %113)
  br label %115

115:                                              ; preds = %107
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @r_crypto_free(i32* %116)
  br label %125

118:                                              ; preds = %37
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)
  %124 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %118, %115
  store i32 1, i32* %7, align 4
  br label %126

126:                                              ; preds = %125, %106, %80, %68
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @r_crypto_new(...) #1

declare dso_local i64 @r_crypto_use(i32*, i8*) #1

declare dso_local i64 @r_crypto_set_key(i32*, i32, i64, i32, i32) #1

declare dso_local i64 @r_file_slurp(i8*, i32*) #1

declare dso_local i64 @r_stdin_slurp(i32*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_crypto_set_iv(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @r_crypto_update(i32*, i32*, i32) #1

declare dso_local i32 @r_crypto_final(i32*, i32*, i32) #1

declare dso_local i32* @r_crypto_get_output(i32*, i32*) #1

declare dso_local i32 @write(i32, i32*, i32) #1

declare dso_local i32 @r_crypto_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

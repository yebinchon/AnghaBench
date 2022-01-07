; ModuleID = '/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_fat.c_int_def_cb.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/engine/extr_eng_fat.c_int_def_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@ENGINE_METHOD_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@ENGINE_METHOD_RSA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@ENGINE_METHOD_DSA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@ENGINE_METHOD_DH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@ENGINE_METHOD_EC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"RAND\00", align 1
@ENGINE_METHOD_RAND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"CIPHERS\00", align 1
@ENGINE_METHOD_CIPHERS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"DIGESTS\00", align 1
@ENGINE_METHOD_DIGESTS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"PKEY\00", align 1
@ENGINE_METHOD_PKEY_METHS = common dso_local global i32 0, align 4
@ENGINE_METHOD_PKEY_ASN1_METHS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"PKEY_CRYPTO\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"PKEY_ASN1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @int_def_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_def_cb(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %138

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @ENGINE_METHOD_ALL, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %137

24:                                               ; preds = %14
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @ENGINE_METHOD_RSA, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %136

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @strncmp(i8* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @ENGINE_METHOD_DSA, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %135

44:                                               ; preds = %34
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @strncmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @ENGINE_METHOD_DH, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %134

54:                                               ; preds = %44
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @strncmp(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @ENGINE_METHOD_EC, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %133

64:                                               ; preds = %54
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @strncmp(i8* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %64
  %70 = load i32, i32* @ENGINE_METHOD_RAND, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %132

74:                                               ; preds = %64
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i64 @strncmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @ENGINE_METHOD_CIPHERS, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %131

84:                                               ; preds = %74
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @strncmp(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i32, i32* @ENGINE_METHOD_DIGESTS, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 4
  br label %130

94:                                               ; preds = %84
  %95 = load i8*, i8** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @ENGINE_METHOD_PKEY_METHS, align 4
  %101 = load i32, i32* @ENGINE_METHOD_PKEY_ASN1_METHS, align 4
  %102 = or i32 %100, %101
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %129

106:                                              ; preds = %94
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @strncmp(i8* %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* @ENGINE_METHOD_PKEY_METHS, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  br label %128

116:                                              ; preds = %106
  %117 = load i8*, i8** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i64 @strncmp(i8* %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 %118)
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load i32, i32* @ENGINE_METHOD_PKEY_ASN1_METHS, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %127

126:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %138

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127, %111
  br label %129

129:                                              ; preds = %128, %99
  br label %130

130:                                              ; preds = %129, %89
  br label %131

131:                                              ; preds = %130, %79
  br label %132

132:                                              ; preds = %131, %69
  br label %133

133:                                              ; preds = %132, %59
  br label %134

134:                                              ; preds = %133, %49
  br label %135

135:                                              ; preds = %134, %39
  br label %136

136:                                              ; preds = %135, %29
  br label %137

137:                                              ; preds = %136, %19
  store i32 1, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %126, %13
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

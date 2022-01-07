; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_init_key_type.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_crypto.c_init_key_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_type = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@M_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Cipher %s not supported\00", align 1
@MAX_CIPHER_KEY_LENGTH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Cipher '%s' mode not supported\00", align 1
@OPENVPN_MAX_CIPHER_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Cipher '%s' not allowed: block size too big.\00", align 1
@M_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [205 x i8] c"******* WARNING *******: '--cipher none' was specified. This means NO encryption will be performed and tunnelled data WILL be transmitted in clear text over the network! PLEASE DO RECONSIDER THIS SETTING!\00", align 1
@OPENVPN_MAX_HMAC_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"HMAC '%s' not allowed: digest size too big.\00", align 1
@.str.6 = private unnamed_addr constant [251 x i8] c"******* WARNING *******: '--auth none' was specified. This means no authentication will be performed on received packets, meaning you CANNOT trust that the data received by the remote side have NOT been manipulated. PLEASE DO RECONSIDER THIS SETTING!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_key_type(%struct.key_type* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.key_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @ASSERT(i8* %14)
  %16 = load i8*, i8** %9, align 8
  %17 = call i32 @ASSERT(i8* %16)
  %18 = load %struct.key_type*, %struct.key_type** %7, align 8
  %19 = call i32 @CLEAR(%struct.key_type* byval(%struct.key_type) align 8 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %86

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @translate_cipher_name_from_openvpn(i8* %24)
  %26 = call i32 @cipher_kt_get(i32 %25)
  %27 = load %struct.key_type*, %struct.key_type** %7, align 8
  %28 = getelementptr inbounds %struct.key_type, %struct.key_type* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.key_type*, %struct.key_type** %7, align 8
  %30 = getelementptr inbounds %struct.key_type, %struct.key_type* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @M_FATAL, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 (i32, i8*, ...) @msg(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %33, %23
  %38 = load %struct.key_type*, %struct.key_type** %7, align 8
  %39 = getelementptr inbounds %struct.key_type, %struct.key_type* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cipher_kt_key_size(i32 %40)
  %42 = load %struct.key_type*, %struct.key_type** %7, align 8
  %43 = getelementptr inbounds %struct.key_type, %struct.key_type* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MAX_CIPHER_KEY_LENGTH, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.key_type*, %struct.key_type** %7, align 8
  %53 = getelementptr inbounds %struct.key_type, %struct.key_type* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %46, %37
  %55 = load %struct.key_type*, %struct.key_type** %7, align 8
  %56 = getelementptr inbounds %struct.key_type, %struct.key_type* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @cipher_kt_mode_aead(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load %struct.key_type*, %struct.key_type** %7, align 8
  %60 = getelementptr inbounds %struct.key_type, %struct.key_type* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @cipher_kt_mode_cbc(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @M_FATAL, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 (i32, i8*, ...) @msg(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %67, %54
  %75 = load i64, i64* @OPENVPN_MAX_CIPHER_BLOCK_SIZE, align 8
  %76 = load %struct.key_type*, %struct.key_type** %7, align 8
  %77 = getelementptr inbounds %struct.key_type, %struct.key_type* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @cipher_kt_block_size(i32 %78)
  %80 = icmp slt i64 %75, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @M_FATAL, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i32, i8*, ...) @msg(i32 %82, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %74
  br label %93

86:                                               ; preds = %6
  %87 = load i32, i32* %12, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @M_WARN, align 4
  %91 = call i32 (i32, i8*, ...) @msg(i32 %90, i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %85
  %94 = load i8*, i8** %9, align 8
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %121, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @md_kt_get(i8* %101)
  %103 = load %struct.key_type*, %struct.key_type** %7, align 8
  %104 = getelementptr inbounds %struct.key_type, %struct.key_type* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.key_type*, %struct.key_type** %7, align 8
  %106 = getelementptr inbounds %struct.key_type, %struct.key_type* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @md_kt_size(i32 %107)
  %109 = load %struct.key_type*, %struct.key_type** %7, align 8
  %110 = getelementptr inbounds %struct.key_type, %struct.key_type* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load i64, i64* @OPENVPN_MAX_HMAC_SIZE, align 8
  %112 = load %struct.key_type*, %struct.key_type** %7, align 8
  %113 = getelementptr inbounds %struct.key_type, %struct.key_type* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %100
  %117 = load i32, i32* @M_FATAL, align 4
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i32, i8*, ...) @msg(i32 %117, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8* %118)
  br label %120

120:                                              ; preds = %116, %100
  br label %121

121:                                              ; preds = %120, %97
  br label %133

122:                                              ; preds = %93
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @M_WARN, align 4
  %130 = call i32 (i32, i8*, ...) @msg(i32 %129, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %122
  br label %133

133:                                              ; preds = %132, %121
  ret void
}

declare dso_local i32 @ASSERT(i8*) #1

declare dso_local i32 @CLEAR(%struct.key_type* byval(%struct.key_type) align 8) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cipher_kt_get(i32) #1

declare dso_local i32 @translate_cipher_name_from_openvpn(i8*) #1

declare dso_local i32 @msg(i32, i8*, ...) #1

declare dso_local i32 @cipher_kt_key_size(i32) #1

declare dso_local i32 @cipher_kt_mode_aead(i32) #1

declare dso_local i64 @cipher_kt_mode_cbc(i32) #1

declare dso_local i64 @cipher_kt_block_size(i32) #1

declare dso_local i32 @md_kt_get(i8*) #1

declare dso_local i64 @md_kt_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

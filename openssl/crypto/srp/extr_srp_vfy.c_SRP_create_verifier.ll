; ModuleID = '/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_SRP_create_verifier.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/srp/extr_srp_vfy.c_SRP_create_verifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32*, i32* }

@MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@SRP_RANDOM_SALT_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SRP_create_verifier(i8* %0, i8* %1, i8** %2, i8** %3, i8* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_3__*, align 8
  %28 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %29 = load i32, i32* @MAX_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %22, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %23, align 8
  %33 = load i32, i32* @MAX_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %24, align 8
  store i8* null, i8** %25, align 8
  store i32 0, i32* %26, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %47, label %38

38:                                               ; preds = %6
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i8**, i8*** %9, align 8
  %43 = icmp eq i8** %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8**, i8*** %10, align 8
  %46 = icmp eq i8** %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %41, %38, %6
  br label %173

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %48
  %52 = trunc i64 %30 to i32
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 @t_fromb64(i8* %32, i32 %52, i8* %53)
  store i32 %54, i32* %13, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %173

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = call i32* @BN_bin2bn(i8* %32, i32 %58, i32* null)
  store i32* %59, i32** %18, align 8
  %60 = load i32*, i32** %18, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %173

63:                                               ; preds = %57
  %64 = load i32*, i32** %18, align 8
  store i32* %64, i32** %16, align 8
  %65 = trunc i64 %30 to i32
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @t_fromb64(i8* %32, i32 %65, i8* %66)
  store i32 %67, i32* %13, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %173

70:                                               ; preds = %63
  %71 = load i32, i32* %13, align 4
  %72 = call i32* @BN_bin2bn(i8* %32, i32 %71, i32* null)
  store i32* %72, i32** %19, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %173

76:                                               ; preds = %70
  %77 = load i32*, i32** %19, align 8
  store i32* %77, i32** %17, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  br label %94

78:                                               ; preds = %48
  %79 = load i8*, i8** %12, align 8
  %80 = call %struct.TYPE_3__* @SRP_get_default_gN(i8* %79)
  store %struct.TYPE_3__* %80, %struct.TYPE_3__** %27, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %82 = icmp eq %struct.TYPE_3__* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %173

84:                                               ; preds = %78
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  store i32* %87, i32** %16, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %17, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %25, align 8
  br label %94

94:                                               ; preds = %84, %76
  %95 = load i8**, i8*** %9, align 8
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32, i32* @SRP_RANDOM_SALT_LEN, align 4
  %100 = call i64 @RAND_bytes(i8* %35, i32 %99)
  %101 = icmp sle i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %173

103:                                              ; preds = %98
  %104 = load i32, i32* @SRP_RANDOM_SALT_LEN, align 4
  %105 = call i32* @BN_bin2bn(i8* %35, i32 %104, i32* null)
  store i32* %105, i32** %20, align 8
  br label %116

106:                                              ; preds = %94
  %107 = trunc i64 %34 to i32
  %108 = load i8**, i8*** %9, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @t_fromb64(i8* %35, i32 %107, i8* %109)
  store i32 %110, i32* %13, align 4
  %111 = icmp sle i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %173

113:                                              ; preds = %106
  %114 = load i32, i32* %13, align 4
  %115 = call i32* @BN_bin2bn(i8* %35, i32 %114, i32* null)
  store i32* %115, i32** %20, align 8
  br label %116

116:                                              ; preds = %113, %103
  %117 = load i32*, i32** %20, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %173

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %17, align 8
  %125 = call i32 @SRP_create_verifier_BN(i8* %121, i8* %122, i32** %20, i32** %21, i32* %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %173

128:                                              ; preds = %120
  %129 = load i32*, i32** %21, align 8
  %130 = call i64 @BN_bn2bin(i32* %129, i8* %32)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %173

133:                                              ; preds = %128
  %134 = load i32*, i32** %21, align 8
  %135 = call i32 @BN_num_bytes(i32* %134)
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* %26, align 4
  %137 = load i32, i32* %26, align 4
  %138 = call i8* @OPENSSL_malloc(i32 %137)
  store i8* %138, i8** %15, align 8
  %139 = icmp eq i8* %138, null
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %173

141:                                              ; preds = %133
  %142 = load i8*, i8** %15, align 8
  %143 = load i32*, i32** %21, align 8
  %144 = call i32 @BN_num_bytes(i32* %143)
  %145 = call i32 @t_tob64(i8* %142, i8* %32, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141
  br label %173

148:                                              ; preds = %141
  %149 = load i8**, i8*** %9, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load i32, i32* @SRP_RANDOM_SALT_LEN, align 4
  %154 = mul nsw i32 %153, 2
  %155 = call i8* @OPENSSL_malloc(i32 %154)
  store i8* %155, i8** %28, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %173

158:                                              ; preds = %152
  %159 = load i8*, i8** %28, align 8
  %160 = load i32, i32* @SRP_RANDOM_SALT_LEN, align 4
  %161 = call i32 @t_tob64(i8* %159, i8* %35, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load i8*, i8** %28, align 8
  %165 = call i32 @OPENSSL_free(i8* %164)
  br label %173

166:                                              ; preds = %158
  %167 = load i8*, i8** %28, align 8
  %168 = load i8**, i8*** %9, align 8
  store i8* %167, i8** %168, align 8
  br label %169

169:                                              ; preds = %166, %148
  %170 = load i8*, i8** %15, align 8
  %171 = load i8**, i8*** %10, align 8
  store i8* %170, i8** %171, align 8
  store i8* null, i8** %15, align 8
  %172 = load i8*, i8** %25, align 8
  store i8* %172, i8** %14, align 8
  br label %173

173:                                              ; preds = %169, %163, %157, %147, %140, %132, %127, %119, %112, %102, %83, %75, %69, %62, %56, %47
  %174 = load i32*, i32** %18, align 8
  %175 = call i32 @BN_free(i32* %174)
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @BN_free(i32* %176)
  %178 = load i8*, i8** %15, align 8
  %179 = load i32, i32* %26, align 4
  %180 = call i32 @OPENSSL_clear_free(i8* %178, i32 %179)
  %181 = load i32*, i32** %20, align 8
  %182 = call i32 @BN_clear_free(i32* %181)
  %183 = load i32*, i32** %21, align 8
  %184 = call i32 @BN_clear_free(i32* %183)
  %185 = load i8*, i8** %14, align 8
  %186 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %186)
  ret i8* %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @t_fromb64(i8*, i32, i8*) #2

declare dso_local i32* @BN_bin2bn(i8*, i32, i32*) #2

declare dso_local %struct.TYPE_3__* @SRP_get_default_gN(i8*) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i32 @SRP_create_verifier_BN(i8*, i8*, i32**, i32**, i32*, i32*) #2

declare dso_local i64 @BN_bn2bin(i32*, i8*) #2

declare dso_local i32 @BN_num_bytes(i32*) #2

declare dso_local i8* @OPENSSL_malloc(i32) #2

declare dso_local i32 @t_tob64(i8*, i8*, i32) #2

declare dso_local i32 @OPENSSL_free(i8*) #2

declare dso_local i32 @BN_free(i32*) #2

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #2

declare dso_local i32 @BN_clear_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

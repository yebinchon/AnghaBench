; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistz256.c_ecp_nistz256_mod_inverse.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_nistz256.c_ecp_nistz256_mod_inverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P256_LIMBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ecp_nistz256_mod_inverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecp_nistz256_mod_inverse(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32, i32* @P256_LIMBS, align 4
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* @P256_LIMBS, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, i32* @P256_LIMBS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %5, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %21 = load i32, i32* @P256_LIMBS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %24 = load i32, i32* @P256_LIMBS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load i32, i32* @P256_LIMBS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  %30 = load i32, i32* @P256_LIMBS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %10, align 8
  %33 = load i32, i32* @P256_LIMBS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %11, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ecp_nistz256_mul_mont(i32* %20, i32* %35, i32* %38)
  %40 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %20)
  %41 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %42 = call i32 @ecp_nistz256_mul_mont(i32* %23, i32* %35, i32* %20)
  %43 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %23)
  %44 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %45 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %46 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %47 = call i32 @ecp_nistz256_mul_mont(i32* %26, i32* %35, i32* %23)
  %48 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %26)
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %54, %2
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 7
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %49

57:                                               ; preds = %49
  %58 = call i32 @ecp_nistz256_mul_mont(i32* %29, i32* %35, i32* %26)
  %59 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %29)
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %65, %57
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 15
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %60

68:                                               ; preds = %60
  %69 = call i32 @ecp_nistz256_mul_mont(i32* %32, i32* %35, i32* %29)
  %70 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %32)
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %76, %68
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 31
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %76

76:                                               ; preds = %74
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %71

79:                                               ; preds = %71
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %80)
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %87, %79
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %83, 128
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %82

90:                                               ; preds = %82
  %91 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %32)
  store i32 0, i32* %12, align 4
  br label %92

92:                                               ; preds = %97, %90
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 32
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %92

100:                                              ; preds = %92
  %101 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %32)
  store i32 0, i32* %12, align 4
  br label %102

102:                                              ; preds = %107, %100
  %103 = load i32, i32* %12, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %102

110:                                              ; preds = %102
  %111 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %29)
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %117, %110
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 8
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  br label %117

117:                                              ; preds = %115
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %112

120:                                              ; preds = %112
  %121 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %26)
  %122 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %123 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %124 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %125 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %126 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %23)
  %127 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %128 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %129 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %20)
  %130 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %131 = call i32 @ecp_nistz256_sqr_mont(i32* %35, i32* %35)
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @ecp_nistz256_mul_mont(i32* %35, i32* %35, i32* %132)
  %134 = load i32*, i32** %3, align 8
  %135 = mul nuw i64 4, %34
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(i32* %134, i32* %35, i32 %136)
  %138 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %138)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ecp_nistz256_sqr_mont(i32*, i32*) #2

declare dso_local i32 @ecp_nistz256_mul_mont(i32*, i32*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

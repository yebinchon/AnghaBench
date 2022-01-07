; ModuleID = '/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_gen.c_dh_builtin_genparams.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/dh/extr_dh_gen.c_dh_builtin_genparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@OPENSSL_DH_MAX_MODULUS_BITS = common dso_local global i32 0, align 4
@DH_F_DH_BUILTIN_GENPARAMS = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_LARGE = common dso_local global i32 0, align 4
@DH_MIN_MODULUS_BITS = common dso_local global i32 0, align 4
@DH_R_MODULUS_TOO_SMALL = common dso_local global i32 0, align 4
@DH_R_BAD_GENERATOR = common dso_local global i32 0, align 4
@DH_GENERATOR_2 = common dso_local global i32 0, align 4
@DH_GENERATOR_5 = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*)* @dh_builtin_genparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_builtin_genparams(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @OPENSSL_DH_MAX_MODULUS_BITS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* @DH_F_DH_BUILTIN_GENPARAMS, align 4
  %20 = load i32, i32* @DH_R_MODULUS_TOO_LARGE, align 4
  %21 = call i32 @DHerr(i32 %19, i32 %20)
  store i32 0, i32* %5, align 4
  br label %161

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DH_MIN_MODULUS_BITS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @DH_F_DH_BUILTIN_GENPARAMS, align 4
  %28 = load i32, i32* @DH_R_MODULUS_TOO_SMALL, align 4
  %29 = call i32 @DHerr(i32 %27, i32 %28)
  store i32 0, i32* %5, align 4
  br label %161

30:                                               ; preds = %22
  %31 = call i32* (...) @BN_CTX_new()
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %148

35:                                               ; preds = %30
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @BN_CTX_start(i32* %36)
  %38 = load i32*, i32** %14, align 8
  %39 = call i32* @BN_CTX_get(i32* %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32* @BN_CTX_get(i32* %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %148

45:                                               ; preds = %35
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %45
  %51 = call i8* (...) @BN_new()
  %52 = bitcast i8* %51 to i32*
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %148

57:                                               ; preds = %50, %45
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = call i8* (...) @BN_new()
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = icmp eq i32* %64, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %148

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %8, align 4
  %71 = icmp sle i32 %70, 1
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @DH_F_DH_BUILTIN_GENPARAMS, align 4
  %74 = load i32, i32* @DH_R_BAD_GENERATOR, align 4
  %75 = call i32 @DHerr(i32 %73, i32 %74)
  br label %148

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @DH_GENERATOR_2, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @BN_set_word(i32* %81, i32 24)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %148

85:                                               ; preds = %80
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @BN_set_word(i32* %86, i32 23)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %148

90:                                               ; preds = %85
  store i32 2, i32* %12, align 4
  br label %119

91:                                               ; preds = %76
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @DH_GENERATOR_5, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %106

95:                                               ; preds = %91
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @BN_set_word(i32* %96, i32 60)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %148

100:                                              ; preds = %95
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 @BN_set_word(i32* %101, i32 59)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %148

105:                                              ; preds = %100
  store i32 5, i32* %12, align 4
  br label %118

106:                                              ; preds = %91
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @BN_set_word(i32* %107, i32 12)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %148

111:                                              ; preds = %106
  %112 = load i32*, i32** %11, align 8
  %113 = call i32 @BN_set_word(i32* %112, i32 11)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  br label %148

116:                                              ; preds = %111
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %116, %105
  br label %119

119:                                              ; preds = %118, %90
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load i32*, i32** %10, align 8
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @BN_generate_prime_ex(i32* %122, i32 %123, i32 1, i32* %124, i32* %125, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %119
  br label %148

130:                                              ; preds = %119
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @BN_GENCB_call(i32* %131, i32 3, i32 0)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %148

135:                                              ; preds = %130
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @BN_set_word(i32* %138, i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %135
  br label %148

143:                                              ; preds = %135
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  store i32 1, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %142, %134, %129, %115, %110, %104, %99, %89, %84, %72, %68, %56, %44, %34
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, -1
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* @DH_F_DH_BUILTIN_GENPARAMS, align 4
  %153 = load i32, i32* @ERR_R_BN_LIB, align 4
  %154 = call i32 @DHerr(i32 %152, i32 %153)
  store i32 0, i32* %13, align 4
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @BN_CTX_end(i32* %156)
  %158 = load i32*, i32** %14, align 8
  %159 = call i32 @BN_CTX_free(i32* %158)
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %155, %26, %18
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @BN_generate_prime_ex(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @BN_GENCB_call(i32*, i32, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

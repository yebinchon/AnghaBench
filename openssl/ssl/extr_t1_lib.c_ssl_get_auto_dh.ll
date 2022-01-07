; ModuleID = '/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_ssl_get_auto_dh.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/extr_t1_lib.c_ssl_get_auto_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SSL_aNULL = common dso_local global i32 0, align 4
@SSL_aPSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ssl_get_auto_dh(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 80, i32* %4, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32* (...) @DH_get_1024_160()
  store i32* %15, i32** %2, align 8
  br label %111

16:                                               ; preds = %1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SSL_aNULL, align 4
  %25 = load i32, i32* @SSL_aPSK, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %16
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 128, i32* %4, align 4
  br label %40

39:                                               ; preds = %29
  store i32 80, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %58

41:                                               ; preds = %16
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = icmp eq %struct.TYPE_10__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32* null, i32** %2, align 8
  br label %111

49:                                               ; preds = %41
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @EVP_PKEY_security_bits(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %40
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 128
  br i1 %60, label %61, label %104

61:                                               ; preds = %58
  %62 = call i32* (...) @DH_new()
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32* null, i32** %2, align 8
  br label %111

66:                                               ; preds = %61
  %67 = call i32* (...) @BN_new()
  store i32* %67, i32** %7, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @BN_set_word(i32* %71, i32 2)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70, %66
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @DH_free(i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @BN_free(i32* %77)
  store i32* null, i32** %2, align 8
  br label %111

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  %81 = icmp sge i32 %80, 192
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32* @BN_get_rfc3526_prime_8192(i32* null)
  store i32* %83, i32** %6, align 8
  br label %86

84:                                               ; preds = %79
  %85 = call i32* @BN_get_rfc3526_prime_3072(i32* null)
  store i32* %85, i32** %6, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32*, i32** %6, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @DH_set0_pqg(i32* %90, i32* %91, i32* null, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %89, %86
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @DH_free(i32* %96)
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @BN_free(i32* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @BN_free(i32* %100)
  store i32* null, i32** %2, align 8
  br label %111

102:                                              ; preds = %89
  %103 = load i32*, i32** %5, align 8
  store i32* %103, i32** %2, align 8
  br label %111

104:                                              ; preds = %58
  %105 = load i32, i32* %4, align 4
  %106 = icmp sge i32 %105, 112
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32* (...) @DH_get_2048_224()
  store i32* %108, i32** %2, align 8
  br label %111

109:                                              ; preds = %104
  %110 = call i32* (...) @DH_get_1024_160()
  store i32* %110, i32** %2, align 8
  br label %111

111:                                              ; preds = %109, %107, %102, %95, %74, %65, %48, %14
  %112 = load i32*, i32** %2, align 8
  ret i32* %112
}

declare dso_local i32* @DH_get_1024_160(...) #1

declare dso_local i32 @EVP_PKEY_security_bits(i32) #1

declare dso_local i32* @DH_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32 @DH_free(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_get_rfc3526_prime_8192(i32*) #1

declare dso_local i32* @BN_get_rfc3526_prime_3072(i32*) #1

declare dso_local i32 @DH_set0_pqg(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @DH_get_2048_224(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

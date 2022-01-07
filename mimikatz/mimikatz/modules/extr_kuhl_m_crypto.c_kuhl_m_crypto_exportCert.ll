; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_exportCert.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/extr_kuhl_m_crypto.c_kuhl_m_crypto_exportCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32*, i32 }

@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 100, i32 101, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [24 x i32] [i32 9, i32 80, i32 117, i32 98, i32 108, i32 105, i32 99, i32 32, i32 101, i32 120, i32 112, i32 111, i32 114, i32 116, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 45, i32 32, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 79, i32 75, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 75, i32 79, i32 0], align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 39, i32 37, i32 115, i32 39, i32 10, i32 0], align 4
@.str.5 = private unnamed_addr constant [11 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 0], align 4
@.str.6 = private unnamed_addr constant [31 x i32] [i32 107, i32 117, i32 104, i32 108, i32 95, i32 109, i32 95, i32 99, i32 114, i32 121, i32 112, i32 116, i32 111, i32 95, i32 103, i32 101, i32 110, i32 101, i32 114, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 78, i32 97, i32 109, i32 101, i32 0], align 4
@.str.7 = private unnamed_addr constant [4 x i32] [i32 112, i32 102, i32 120, i32 0], align 4
@FALSE = common dso_local global i64 0, align 8
@CERT_STORE_ADD_NEW = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i32] [i32 9, i32 80, i32 114, i32 105, i32 118, i32 97, i32 116, i32 101, i32 32, i32 101, i32 120, i32 112, i32 111, i32 114, i32 116, i32 32, i32 58, i32 32, i32 37, i32 115, i32 32, i32 45, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [20 x i32] [i32 69, i32 120, i32 112, i32 111, i32 114, i32 116, i32 32, i32 47, i32 32, i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 0], align 4
@.str.10 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@CERT_CLOSE_STORE_FORCE_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kuhl_m_crypto_exportCert(%struct.TYPE_7__* %0, i64 %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %19 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %20 = call i32 @CertOpenStore(i32 %18, i32 0, i32 0, i32 %19, i32* null)
  store i32 %20, i32* %15, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  %21 = bitcast %struct.TYPE_8__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i32* @kuhl_m_crypto_generateFileName(i32* %22, i32* %23, i32 %24, i32* %25, i8* bitcast ([4 x i32]* @.str to i8*))
  store i32* %26, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %52

28:                                               ; preds = %6
  %29 = load i32*, i32** %13, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @kull_m_file_writeData(i32* %29, i32 %32, i32 %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.3, i64 0, i64 0)
  %41 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.1 to i8*), i32* %40)
  %42 = load i64, i64* %14, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %28
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.4 to i8*), i32* %45)
  br label %49

47:                                               ; preds = %28
  %48 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([11 x i32]* @.str.5 to i8*))
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @LocalFree(i32* %50)
  br label %54

52:                                               ; preds = %6
  %53 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([31 x i32]* @.str.6 to i8*))
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i64, i64* %8, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %96

57:                                               ; preds = %54
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = call i32* @kuhl_m_crypto_generateFileName(i32* %58, i32* %59, i32 %60, i32* %61, i8* bitcast ([4 x i32]* @.str.7 to i8*))
  store i32* %62, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %93

64:                                               ; preds = %57
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = load i32, i32* @CERT_STORE_ADD_NEW, align 4
  %69 = call i64 @CertAddCertificateContextToStore(i32 %66, %struct.TYPE_7__* %67, i32 %68, %struct.TYPE_7__** %16)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @kull_m_crypto_exportPfx(i32 %72, i32* %73)
  store i64 %74, i64* %14, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %76 = call i32 @CertFreeCertificateContext(%struct.TYPE_7__* %75)
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i64, i64* %14, align 8
  %79 = icmp ne i64 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.2, i64 0, i64 0), i32* getelementptr inbounds ([3 x i32], [3 x i32]* @.str.3, i64 0, i64 0)
  %82 = call i32 (i8*, ...) @kprintf(i8* bitcast ([24 x i32]* @.str.8 to i8*), i32* %81)
  %83 = load i64, i64* %14, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 (i8*, ...) @kprintf(i8* bitcast ([6 x i32]* @.str.4 to i8*), i32* %86)
  br label %90

88:                                               ; preds = %77
  %89 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([20 x i32]* @.str.9 to i8*))
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @LocalFree(i32* %91)
  br label %95

93:                                               ; preds = %57
  %94 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([31 x i32]* @.str.6 to i8*))
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %54
  %97 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @CERT_CLOSE_STORE_FORCE_FLAG, align 4
  %100 = call i32 @CertCloseStore(i32 %98, i32 %99)
  ret void
}

declare dso_local i32 @CertOpenStore(i32, i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @kuhl_m_crypto_generateFileName(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i64 @kull_m_file_writeData(i32*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @LocalFree(i32*) #1

declare dso_local i64 @CertAddCertificateContextToStore(i32, %struct.TYPE_7__*, i32, %struct.TYPE_7__**) #1

declare dso_local i64 @kull_m_crypto_exportPfx(i32, i32*) #1

declare dso_local i32 @CertFreeCertificateContext(%struct.TYPE_7__*) #1

declare dso_local i32 @CertCloseStore(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

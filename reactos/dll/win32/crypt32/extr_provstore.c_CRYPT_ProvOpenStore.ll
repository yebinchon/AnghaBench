; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_CRYPT_ProvOpenStore.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_provstore.c_CRYPT_ProvOpenStore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@CRYPT_ProvOpenStore.set = internal global i32* null, align 8
@CRYPT_OID_OPEN_STORE_PROV_FUNC = common dso_local global i32 0, align 4
@CERT_STORE_DELETE_FLAG = common dso_local global i32 0, align 4
@CERT_STORE_PROV_MEMORY = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CRYPT_ProvOpenStore(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32* null, i32** %13, align 8
  %16 = load i32*, i32** @CRYPT_ProvOpenStore.set, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @CRYPT_OID_OPEN_STORE_PROV_FUNC, align 4
  %20 = call i32* @CryptInitOIDFunctionSet(i32 %19, i32 0)
  store i32* %20, i32** @CRYPT_ProvOpenStore.set, align 8
  br label %21

21:                                               ; preds = %18, %5
  %22 = load i32*, i32** @CRYPT_ProvOpenStore.set, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = bitcast i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)** %11 to i8**
  %26 = call i32 @CryptGetOIDFunctionAddress(i32* %22, i32 %23, i32 %24, i32 0, i8** %25, i32* %12)
  %27 = load i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)*, i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)** %11, align 8
  %28 = icmp ne i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)* %27, null
  br i1 %28, label %29, label %72

29:                                               ; preds = %21
  %30 = bitcast %struct.TYPE_4__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 8, i1 false)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 8, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @CERT_STORE_DELETE_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)*, i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)** %11, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 %37(i32 %38, i32 %39, i32 %40, i32 %41, i8* %42, i32* null, %struct.TYPE_4__* %14)
  br label %69

44:                                               ; preds = %29
  %45 = load i32, i32* @CERT_STORE_PROV_MEMORY, align 4
  %46 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %47 = call i32* @CertOpenStore(i32 %45, i32 0, i32 0, i32 %46, i32* null)
  store i32* %47, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %44
  %51 = load i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)*, i64 (i32, i32, i32, i32, i8*, i32*, %struct.TYPE_4__*)** %11, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = load i32*, i32** %15, align 8
  %58 = call i64 %51(i32 %52, i32 %53, i32 %54, i32 %55, i8* %56, i32* %57, %struct.TYPE_4__* %14)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = call i32* @CRYPT_ProvCreateStore(i32 %61, i32* %62, %struct.TYPE_4__* %14)
  store i32* %63, i32** %13, align 8
  br label %67

64:                                               ; preds = %50
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @CertCloseStore(i32* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %60
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68, %36
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @CryptFreeOIDFunctionAddress(i32 %70, i32 0)
  br label %75

72:                                               ; preds = %21
  %73 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %74 = call i32 @SetLastError(i32 %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %13, align 8
  ret i32* %76
}

declare dso_local i32* @CryptInitOIDFunctionSet(i32, i32) #1

declare dso_local i32 @CryptGetOIDFunctionAddress(i32*, i32, i32, i32, i8**, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @CertOpenStore(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @CRYPT_ProvCreateStore(i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @CertCloseStore(i32*, i32) #1

declare dso_local i32 @CryptFreeOIDFunctionAddress(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

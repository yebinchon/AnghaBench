; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_CreateChainEngine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_CreateChainEngine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i64, i32, i32, i32, i8**, i32, i8*, i8* }

@CRYPT_CreateChainEngine.caW = internal constant [3 x i8] c"CA\00", align 1
@CRYPT_CreateChainEngine.myW = internal constant [3 x i8] c"My\00", align 1
@CRYPT_CreateChainEngine.trustW = internal constant [6 x i8] c"Trust\00", align 1
@CERT_STORE_PROV_SYSTEM_W = common dso_local global i32 0, align 4
@rootW = common dso_local global i8* null, align 8
@CERT_STORE_PROV_COLLECTION = common dso_local global i32 0, align 4
@CERT_STORE_CREATE_NEW_FLAG = common dso_local global i32 0, align 4
@DEFAULT_CYCLE_MODULUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CRYPT_CreateChainEngine(i8* %0, i32 %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca [4 x i8*], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %49, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 64
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @CertDuplicateStore(i8* %26)
  store i8* %27, i8** %5, align 8
  br label %44

28:                                               ; preds = %18, %12
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 7
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @CertDuplicateStore(i8* %36)
  store i8* %37, i8** %5, align 8
  br label %43

38:                                               ; preds = %28
  %39 = load i32, i32* @CERT_STORE_PROV_SYSTEM_W, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i8*, i8** @rootW, align 8
  %42 = call i8* @CertOpenStore(i32 %39, i32 0, i32 0, i32 %40, i8* %41)
  store i8* %42, i8** %5, align 8
  br label %43

43:                                               ; preds = %38, %33
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %136

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %3
  %50 = call %struct.TYPE_7__* @CryptMemAlloc(i32 48)
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %8, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = icmp ne %struct.TYPE_7__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @CertCloseStore(i8* %54, i32 0)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %136

56:                                               ; preds = %49
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @CERT_STORE_PROV_COLLECTION, align 4
  %63 = load i32, i32* @CERT_STORE_CREATE_NEW_FLAG, align 4
  %64 = call i8* @CertOpenStore(i32 %62, i32 0, i32 0, i32 %63, i8* null)
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 5
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @CertDuplicateStore(i8* %69)
  %71 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  store i8* %70, i8** %71, align 16
  %72 = load i32, i32* @CERT_STORE_PROV_SYSTEM_W, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i8* @CertOpenStore(i32 %72, i32 0, i32 0, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @CRYPT_CreateChainEngine.caW, i64 0, i64 0))
  %75 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 1
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @CERT_STORE_PROV_SYSTEM_W, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i8* @CertOpenStore(i32 %76, i32 0, i32 0, i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @CRYPT_CreateChainEngine.myW, i64 0, i64 0))
  %79 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 2
  store i8* %78, i8** %79, align 16
  %80 = load i32, i32* @CERT_STORE_PROV_SYSTEM_W, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i8* @CertOpenStore(i32 %80, i32 0, i32 0, i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CRYPT_CreateChainEngine.trustW, i64 0, i64 0))
  %83 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 3
  store i8* %82, i8** %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 5
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %88 = call i32 @ARRAY_SIZE(i8** %87)
  %89 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %90 = call i32 @CRYPT_AddStoresToCollection(i8* %86, i32 %88, i8** %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 5
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 5
  %99 = load i8**, i8*** %98, align 8
  %100 = call i32 @CRYPT_AddStoresToCollection(i8* %93, i32 %96, i8** %99)
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %102 = call i32 @ARRAY_SIZE(i8** %101)
  %103 = getelementptr inbounds [4 x i8*], [4 x i8*]* %9, i64 0, i64 0
  %104 = call i32 @CRYPT_CloseStores(i32 %102, i8** %103)
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %56
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i64 %127, i64* %129, align 8
  br label %134

130:                                              ; preds = %56
  %131 = load i64, i64* @DEFAULT_CYCLE_MODULUS, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %135, %struct.TYPE_7__** %4, align 8
  br label %136

136:                                              ; preds = %134, %53, %47
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %137
}

declare dso_local i8* @CertDuplicateStore(i8*) #1

declare dso_local i8* @CertOpenStore(i32, i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_7__* @CryptMemAlloc(i32) #1

declare dso_local i32 @CertCloseStore(i8*, i32) #1

declare dso_local i32 @CRYPT_AddStoresToCollection(i8*, i32, i8**) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @CRYPT_CloseStores(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

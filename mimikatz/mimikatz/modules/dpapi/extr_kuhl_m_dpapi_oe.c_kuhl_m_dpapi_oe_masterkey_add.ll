; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_masterkey_add.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi_oe.c_kuhl_m_dpapi_oe_masterkey_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i8* }
%struct.TYPE_5__ = type { i32*, i32 }

@FALSE = common dso_local global i32 0, align 4
@SHA_DIGEST_LENGTH = common dso_local global i32 0, align 4
@CALG_SHA1 = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@gDPAPI_Masterkeys = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i32] [i32 78, i32 111, i32 32, i32 71, i32 85, i32 73, i32 68, i32 32, i32 111, i32 114, i32 32, i32 75, i32 101, i32 121, i32 32, i32 72, i32 97, i32 115, i32 104, i32 63, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kuhl_m_dpapi_oe_masterkey_add(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %83

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %83

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @kuhl_m_dpapi_oe_masterkey_get(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %82, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @CALG_SHA1, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = mul nuw i64 4, %13
  %37 = trunc i64 %36 to i32
  %38 = call i32 @kull_m_crypto_hash(i32 %33, i32* %34, i32 %35, i32* %15, i32 %37)
  br label %39

39:                                               ; preds = %32, %28
  %40 = load i32, i32* @LPTR, align 4
  %41 = call i64 @LocalAlloc(i32 %40, i32 4)
  %42 = inttoptr i64 %41 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %42, %struct.TYPE_7__** %8, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %81

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @RtlCopyMemory(i32* %47, i32* %48, i32 4)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32*, i32** %5, align 8
  br label %60

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ %15, %59 ]
  %62 = load i32, i32* @SHA_DIGEST_LENGTH, align 4
  %63 = call i32 @RtlCopyMemory(i32* %53, i32* %61, i32 %62)
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gDPAPI_Masterkeys, i32 0, i32 0), align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store %struct.TYPE_8__* @gDPAPI_Masterkeys, %struct.TYPE_8__** %70, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = bitcast %struct.TYPE_7__* %71 to i8*
  %73 = bitcast i8* %72 to %struct.TYPE_8__*
  %74 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gDPAPI_Masterkeys, i32 0, i32 0), align 8
  %75 = bitcast i8* %74 to %struct.TYPE_7__*
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %79 = bitcast %struct.TYPE_7__* %78 to i8*
  store i8* %79, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gDPAPI_Masterkeys, i32 0, i32 0), align 8
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %60, %39
  br label %82

82:                                               ; preds = %81, %24
  br label %85

83:                                               ; preds = %21, %18, %3
  %84 = call i32 @PRINT_ERROR(i8* bitcast ([21 x i32]* @.str to i8*))
  br label %85

85:                                               ; preds = %83, %82
  %86 = load i32, i32* %7, align 4
  %87 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %87)
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kuhl_m_dpapi_oe_masterkey_get(i32*) #2

declare dso_local i32 @kull_m_crypto_hash(i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @LocalAlloc(i32, i32) #2

declare dso_local i32 @RtlCopyMemory(i32*, i32*, i32) #2

declare dso_local i32 @PRINT_ERROR(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

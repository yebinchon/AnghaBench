; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_sip.c_CRYPT_LoadSIP.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_sip.c_CRYPT_LoadSIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i8*, i8*, i8*, i8*, i8*, i32 }

@szGetSigned = common dso_local global i32 0, align 4
@szPutSigned = common dso_local global i32 0, align 4
@szCreate = common dso_local global i32 0, align 4
@szVerify = common dso_local global i32 0, align 4
@szRemoveSigned = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TRUST_E_SUBJECT_FORM_UNKNOWN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @CRYPT_LoadSIP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_LoadSIP(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = bitcast %struct.TYPE_3__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 56, i1 false)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @szGetSigned, align 4
  %10 = call i8* @CRYPT_LoadSIPFunc(i32* %8, i32 %9, i32** %5)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 5
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %82

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @szPutSigned, align 4
  %19 = call i8* @CRYPT_LoadSIPFunc(i32* %17, i32 %18, i32** %6)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = icmp ne i32* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %16
  br label %82

29:                                               ; preds = %24
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @FreeLibrary(i32* %30)
  store i32* null, i32** %6, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @szCreate, align 4
  %34 = call i8* @CRYPT_LoadSIPFunc(i32* %32, i32 %33, i32** %6)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = icmp ne i32* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %29
  br label %82

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @FreeLibrary(i32* %45)
  store i32* null, i32** %6, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* @szVerify, align 4
  %49 = call i8* @CRYPT_LoadSIPFunc(i32* %47, i32 %48, i32** %6)
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %44
  br label %82

59:                                               ; preds = %54
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @FreeLibrary(i32* %60)
  store i32* null, i32** %6, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = load i32, i32* @szRemoveSigned, align 4
  %64 = call i8* @CRYPT_LoadSIPFunc(i32* %62, i32 %63, i32** %6)
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %59
  br label %82

74:                                               ; preds = %69
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @FreeLibrary(i32* %75)
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32* %77, i32** %78, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @CRYPT_CacheSIP(i32* %79, %struct.TYPE_3__* %4)
  %81 = load i32, i32* @TRUE, align 4
  store i32 %81, i32* %2, align 4
  br label %90

82:                                               ; preds = %73, %58, %43, %28, %15
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @FreeLibrary(i32* %83)
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @FreeLibrary(i32* %85)
  %87 = load i32, i32* @TRUST_E_SUBJECT_FORM_UNKNOWN, align 4
  %88 = call i32 @SetLastError(i32 %87)
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %82, %74
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @CRYPT_LoadSIPFunc(i32*, i32, i32**) #2

declare dso_local i32 @FreeLibrary(i32*) #2

declare dso_local i32 @CRYPT_CacheSIP(i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @SetLastError(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

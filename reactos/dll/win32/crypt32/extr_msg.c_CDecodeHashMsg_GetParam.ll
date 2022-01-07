; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeHashMsg_GetParam.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_msg.c_CDecodeHashMsg_GetParam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@CRYPT_E_INVALID_MSG_TYPE = common dso_local global i32 0, align 4
@HP_HASHVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i8*, i32*)* @CDecodeHashMsg_GetParam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CDecodeHashMsg_GetParam(%struct.TYPE_8__* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %60 [
    i32 128, label %16
    i32 129, label %22
    i32 130, label %51
  ]

16:                                               ; preds = %5
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 2
  %21 = call i32 @CRYPT_CopyParam(i8* %17, i32* %18, i32* %20, i32 4)
  store i32 %21, i32* %11, align 4
  br label %80

22:                                               ; preds = %5
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ContextPropertyList_FindProperty(i32 %25, i32 %26, %struct.TYPE_7__* %12)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i8*, i8** %9, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @CRYPT_CopyParam(i8* %31, i32* %32, i32* %34, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @CRYPT_FixUpAlgorithmID(i8* %44)
  br label %46

46:                                               ; preds = %43, %40, %30
  br label %50

47:                                               ; preds = %22
  %48 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %49 = call i32 @SetLastError(i32 %48)
  br label %50

50:                                               ; preds = %47, %46
  br label %80

51:                                               ; preds = %5
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HP_HASHVAL, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @CryptGetHashParam(i32 %55, i32 %56, i8* %57, i32* %58, i32 0)
  store i32 %59, i32* %11, align 4
  br label %80

60:                                               ; preds = %5
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ContextPropertyList_FindProperty(i32 %63, i32 %64, %struct.TYPE_7__* %13)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %60
  %69 = load i8*, i8** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @CRYPT_CopyParam(i8* %69, i32* %70, i32* %72, i32 %74)
  store i32 %75, i32* %11, align 4
  br label %79

76:                                               ; preds = %60
  %77 = load i32, i32* @CRYPT_E_INVALID_MSG_TYPE, align 4
  %78 = call i32 @SetLastError(i32 %77)
  br label %79

79:                                               ; preds = %76, %68
  br label %80

80:                                               ; preds = %79, %51, %50, %16
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @CRYPT_CopyParam(i8*, i32*, i32*, i32) #1

declare dso_local i32 @ContextPropertyList_FindProperty(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CRYPT_FixUpAlgorithmID(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @CryptGetHashParam(i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

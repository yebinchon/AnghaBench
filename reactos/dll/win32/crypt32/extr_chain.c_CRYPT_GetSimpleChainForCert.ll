; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_GetSimpleChainForCert.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_GetSimpleChainForCert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"(%p, %p, %p, %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32, i32, i32, %struct.TYPE_9__**)* @CRYPT_GetSimpleChainForCert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_GetSimpleChainForCert(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_9__** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_9__** %5, %struct.TYPE_9__*** %12, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @debugstr_filetime(i32 %19)
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %17, i32 %18, i32 %20)
  %22 = call %struct.TYPE_9__* @CryptMemAlloc(i32 4)
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %14, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %6
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = call i32 @memset(%struct.TYPE_9__* %26, i32 0, i32 4)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 4, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @CRYPT_AddCertToSimpleChain(i32* %30, %struct.TYPE_9__* %31, i32 %32, i32 0)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %25
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %41 = call i64 @CRYPT_BuildSimpleChain(i32* %37, i32 %38, i32 %39, %struct.TYPE_9__* %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @CRYPT_CheckSimpleChain(i32* %45, %struct.TYPE_9__* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %36
  br label %50

50:                                               ; preds = %49, %25
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = call i32 @CRYPT_FreeSimpleChain(%struct.TYPE_9__* %54)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %14, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %58 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %58, align 8
  br label %59

59:                                               ; preds = %56, %6
  %60 = load i64, i64* %13, align 8
  ret i64 %60
}

declare dso_local i32 @TRACE(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @debugstr_filetime(i32) #1

declare dso_local %struct.TYPE_9__* @CryptMemAlloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @CRYPT_AddCertToSimpleChain(i32*, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @CRYPT_BuildSimpleChain(i32*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @CRYPT_CheckSimpleChain(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @CRYPT_FreeSimpleChain(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_DecodeEnsureSpace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_decode.c_CRYPT_DecodeEnsureSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i32)* }

@TRUE = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@LPTR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, i8*, i32*, i32)* @CRYPT_DecodeEnsureSpace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_DecodeEnsureSpace(i32 %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32* (i32)*, i32* (i32)** %22, align 8
  %24 = icmp ne i32* (i32)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32* (i32)*, i32* (i32)** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32* %28(i32 %29)
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32**
  store i32* %30, i32** %32, align 8
  br label %39

33:                                               ; preds = %20, %17
  %34 = load i32, i32* @LPTR, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32* @LocalAlloc(i32 %34, i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32**
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to i32**
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %11, align 4
  br label %49

46:                                               ; preds = %39
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %44
  br label %65

50:                                               ; preds = %5
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @ERROR_MORE_DATA, align 4
  %59 = call i32 @SetLastError(i32 %58)
  %60 = load i32, i32* @FALSE, align 4
  store i32 %60, i32* %11, align 4
  br label %64

61:                                               ; preds = %50
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %55
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, i32* %11, align 4
  ret i32 %66
}

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

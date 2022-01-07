; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_encode.c_CRYPT_EncodeEnsureSpace.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_encode.c_CRYPT_EncodeEnsureSpace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i32)* }

@TRUE = common dso_local global i32 0, align 4
@CRYPT_ENCODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPT_EncodeEnsureSpace(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @TRUE, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @CRYPT_ENCODE_ALLOC_FLAG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

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
  %31 = load i32*, i32** %8, align 8
  %32 = bitcast i32* %31 to i32**
  store i32* %30, i32** %32, align 8
  br label %38

33:                                               ; preds = %20, %17
  %34 = load i32, i32* %10, align 4
  %35 = call i32* @LocalAlloc(i32 0, i32 %34)
  %36 = load i32*, i32** %8, align 8
  %37 = bitcast i32* %36 to i32**
  store i32* %35, i32** %37, align 8
  br label %38

38:                                               ; preds = %33, %25
  %39 = load i32*, i32** %8, align 8
  %40 = bitcast i32* %39 to i32**
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %11, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %43
  br label %64

49:                                               ; preds = %5
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @ERROR_MORE_DATA, align 4
  %58 = call i32 @SetLastError(i32 %57)
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %11, align 4
  br label %63

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i32, i32* %11, align 4
  ret i32 %65
}

declare dso_local i32* @LocalAlloc(i32, i32) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

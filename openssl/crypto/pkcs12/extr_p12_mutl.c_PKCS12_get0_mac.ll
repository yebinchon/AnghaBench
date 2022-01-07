; ModuleID = '/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_get0_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/pkcs12/extr_p12_mutl.c_PKCS12_get0_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PKCS12_get0_mac(i32** %0, i32** %1, i32** %2, i32** %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32** %3, i32*** %9, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %5
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32**, i32*** %7, align 8
  %22 = load i32**, i32*** %6, align 8
  %23 = call i32 @X509_SIG_get0(i32 %20, i32** %21, i32** %22)
  %24 = load i32**, i32*** %8, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** %8, align 8
  store i32* %31, i32** %32, align 8
  br label %33

33:                                               ; preds = %26, %15
  %34 = load i32**, i32*** %9, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32**, i32*** %9, align 8
  store i32* %41, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %33
  br label %65

44:                                               ; preds = %5
  %45 = load i32**, i32*** %6, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32**, i32*** %6, align 8
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32**, i32*** %7, align 8
  %51 = icmp ne i32** %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32**, i32*** %7, align 8
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32**, i32*** %8, align 8
  %56 = icmp ne i32** %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32**, i32*** %8, align 8
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32**, i32*** %9, align 8
  %61 = icmp ne i32** %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32**, i32*** %9, align 8
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %62, %59
  br label %65

65:                                               ; preds = %64, %43
  ret void
}

declare dso_local i32 @X509_SIG_get0(i32, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

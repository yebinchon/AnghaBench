; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hmac.c_do_hmac.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_hmac.c_do_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i8*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8, i8*, i64, i8*, i64, i8*, i64)* @do_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_hmac(%struct.TYPE_3__* %0, i8 zeroext %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8 %1, i8* %10, align 1
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = load i32*, i32** %17, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @HMAC_Init_ex(i32* %21, i8* %24, i64 %27, i32 %30, i32* null)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %120

33:                                               ; preds = %8
  %34 = load i32*, i32** %17, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @HMAC_Update(i32* %34, i8* %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %120

43:                                               ; preds = %33
  %44 = load i32*, i32** %17, align 8
  %45 = call i64 @HMAC_Update(i32* %44, i8* %10, i64 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load i32*, i32** %17, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @HMAC_Update(i32* %54, i8* %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %120

59:                                               ; preds = %53, %50, %47
  %60 = load i8*, i8** %13, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load i64, i64* %14, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = load i32*, i32** %17, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = call i64 @HMAC_Update(i32* %66, i8* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %120

71:                                               ; preds = %65, %62, %59
  %72 = load i8*, i8** %15, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %16, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32*, i32** %17, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = call i64 @HMAC_Update(i32* %78, i8* %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %77, %74, %71
  %84 = load i32*, i32** %17, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @HMAC_Final(i32* %84, i8* %87, i32* null)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  %91 = load i32*, i32** %17, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @HMAC_Init_ex(i32* %91, i8* %94, i64 %97, i32 %100, i32* null)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %90
  %104 = load i32*, i32** %17, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @HMAC_Update(i32* %104, i8* %107, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %103
  %114 = load i32*, i32** %17, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @HMAC_Final(i32* %114, i8* %117, i32* null)
  %119 = icmp ne i64 %118, 0
  br label %120

120:                                              ; preds = %113, %103, %90, %83, %77, %65, %53, %43, %33, %8
  %121 = phi i1 [ false, %103 ], [ false, %90 ], [ false, %83 ], [ false, %77 ], [ false, %65 ], [ false, %53 ], [ false, %43 ], [ false, %33 ], [ false, %8 ], [ %119, %113 ]
  %122 = zext i1 %121 to i32
  ret i32 %122
}

declare dso_local i64 @HMAC_Init_ex(i32*, i8*, i64, i32, i32*) #1

declare dso_local i64 @HMAC_Update(i32*, i8*, i64) #1

declare dso_local i64 @HMAC_Final(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

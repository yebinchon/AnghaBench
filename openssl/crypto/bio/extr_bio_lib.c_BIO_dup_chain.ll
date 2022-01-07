; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_BIO_dup_chain.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bio/extr_bio_lib.c_BIO_dup_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_10__* }

@CRYPTO_EX_INDEX_BIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @BIO_dup_chain(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %6, align 8
  br label %9

9:                                                ; preds = %86, %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %90

12:                                               ; preds = %9
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_10__* @BIO_new(i32 %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %7, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %92

19:                                               ; preds = %12
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = bitcast %struct.TYPE_10__* %56 to i8*
  %58 = call i32 @BIO_dup_state(%struct.TYPE_10__* %55, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %19
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = call i32 @BIO_free(%struct.TYPE_10__* %61)
  br label %92

63:                                               ; preds = %19
  %64 = load i32, i32* @CRYPTO_EX_INDEX_BIO, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @CRYPTO_dup_ex_data(i32 %64, i32* %66, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %73 = call i32 @BIO_free(%struct.TYPE_10__* %72)
  br label %92

74:                                               ; preds = %63
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = icmp eq %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %5, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %4, align 8
  br label %85

80:                                               ; preds = %74
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = call i32 @BIO_push(%struct.TYPE_10__* %81, %struct.TYPE_10__* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %5, align 8
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 9
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  store %struct.TYPE_10__* %89, %struct.TYPE_10__** %6, align 8
  br label %9

90:                                               ; preds = %9
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %2, align 8
  br label %95

92:                                               ; preds = %71, %60, %18
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = call i32 @BIO_free_all(%struct.TYPE_10__* %93)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %95

95:                                               ; preds = %92, %90
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %96
}

declare dso_local %struct.TYPE_10__* @BIO_new(i32) #1

declare dso_local i32 @BIO_dup_state(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @BIO_free(%struct.TYPE_10__*) #1

declare dso_local i32 @CRYPTO_dup_ex_data(i32, i32*, i32*) #1

declare dso_local i32 @BIO_push(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @BIO_free_all(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

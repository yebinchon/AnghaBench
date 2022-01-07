; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_uninstantiate.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_uninstantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { {}* }

@DRBG_ERROR = common dso_local global i32 0, align 4
@RAND_F_RAND_DRBG_UNINSTANTIATE = common dso_local global i32 0, align 4
@RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_MASTER = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_MASTER = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_PRIVATE = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_PRIVATE = common dso_local global i32 0, align 4
@RAND_DRBG_FLAG_PUBLIC = common dso_local global i32 0, align 4
@RAND_DRBG_TYPE_PUBLIC = common dso_local global i32 0, align 4
@rand_drbg_flags = common dso_local global i32* null, align 8
@rand_drbg_type = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_DRBG_uninstantiate(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 -1, i32* %4, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @DRBG_ERROR, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @RAND_F_RAND_DRBG_UNINSTANTIATE, align 4
  %16 = load i32, i32* @RAND_R_NO_DRBG_IMPLEMENTATION_SELECTED, align 4
  %17 = call i32 @RANDerr(i32 %15, i32 %16)
  store i32 0, i32* %2, align 4
  br label %81

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.TYPE_7__*)**
  %24 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = call i32 %24(%struct.TYPE_7__* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @RAND_DRBG_FLAG_MASTER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* @RAND_DRBG_TYPE_MASTER, align 4
  store i32 %34, i32* %4, align 4
  br label %55

35:                                               ; preds = %18
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @RAND_DRBG_FLAG_PRIVATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* @RAND_DRBG_TYPE_PRIVATE, align 4
  store i32 %43, i32* %4, align 4
  br label %54

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RAND_DRBG_FLAG_PUBLIC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @RAND_DRBG_TYPE_PUBLIC, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %44
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load i32*, i32** @rand_drbg_flags, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = load i32*, i32** @rand_drbg_type, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %5, align 4
  br label %76

69:                                               ; preds = %55
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %69, %58
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @RAND_DRBG_set(%struct.TYPE_7__* %77, i32 %78, i32 %79)
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32 @RAND_DRBG_set(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

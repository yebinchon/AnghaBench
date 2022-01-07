; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_pkey_set_type.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_p_lib.c_pkey_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__*, i32, i32*, i32*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@EVP_F_PKEY_SET_TYPE = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i8*, i32)* @pkey_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkey_set_type(%struct.TYPE_10__* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %18

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi i32** [ %8, %16 ], [ null, %17 ]
  store i32** %19, i32*** %13, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = call i32 @EVP_PKEY_free_it(%struct.TYPE_10__* %29)
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = icmp ne %struct.TYPE_9__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %105

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @ENGINE_finish(i32* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ENGINE_finish(i32* %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %43, %18
  %57 = load i8*, i8** %10, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32**, i32*** %13, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.TYPE_9__* @EVP_PKEY_asn1_find_str(i32** %60, i8* %61, i32 %62)
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %12, align 8
  br label %68

64:                                               ; preds = %56
  %65 = load i32**, i32*** %13, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.TYPE_9__* @EVP_PKEY_asn1_find(i32** %65, i32 %66)
  store %struct.TYPE_9__* %67, %struct.TYPE_9__** %12, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = icmp eq %struct.TYPE_10__* %69, null
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load i32**, i32*** %13, align 8
  %73 = icmp ne i32** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @ENGINE_finish(i32* %75)
  br label %77

77:                                               ; preds = %74, %71, %68
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = icmp eq %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @EVP_F_PKEY_SET_TYPE, align 4
  %82 = load i32, i32* @EVP_R_UNSUPPORTED_ALGORITHM, align 4
  %83 = call i32 @EVPerr(i32 %81, i32 %82)
  store i32 0, i32* %6, align 4
  br label %105

84:                                               ; preds = %77
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = icmp ne %struct.TYPE_10__* %85, null
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %90, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %87, %84
  store i32 1, i32* %6, align 4
  br label %105

105:                                              ; preds = %104, %80, %42
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @EVP_PKEY_free_it(%struct.TYPE_10__*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local %struct.TYPE_9__* @EVP_PKEY_asn1_find_str(i32**, i8*, i32) #1

declare dso_local %struct.TYPE_9__* @EVP_PKEY_asn1_find(i32**, i32) #1

declare dso_local i32 @EVPerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

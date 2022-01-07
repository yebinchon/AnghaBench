; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_cmp.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GF2m_simple_cmp(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -1, i32* %14, align 4
  store i32* null, i32** %15, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = call i64 @EC_POINT_is_at_infinity(i32* %16, %struct.TYPE_6__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = call i64 @EC_POINT_is_at_infinity(i32* %21, %struct.TYPE_6__* %22)
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* %5, align 4
  br label %126

27:                                               ; preds = %4
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = call i64 @EC_POINT_is_at_infinity(i32* %28, %struct.TYPE_6__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %126

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i64 @BN_cmp(i32* %46, i32* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @BN_cmp(i32* %55, i32* %58)
  %60 = icmp eq i64 %59, 0
  br label %61

61:                                               ; preds = %52, %43
  %62 = phi i1 [ false, %43 ], [ %60, %52 ]
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  store i32 %64, i32* %5, align 4
  br label %126

65:                                               ; preds = %38, %33
  %66 = load i32*, i32** %9, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = call i32* (...) @BN_CTX_new()
  store i32* %69, i32** %15, align 8
  store i32* %69, i32** %9, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %5, align 4
  br label %126

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @BN_CTX_start(i32* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32* @BN_CTX_get(i32* %77)
  store i32* %78, i32** %10, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32* @BN_CTX_get(i32* %79)
  store i32* %80, i32** %11, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32* @BN_CTX_get(i32* %81)
  store i32* %82, i32** %12, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32* @BN_CTX_get(i32* %83)
  store i32* %84, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %120

88:                                               ; preds = %74
  %89 = load i32*, i32** %6, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32*, i32** %11, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @EC_POINT_get_affine_coordinates(i32* %89, %struct.TYPE_6__* %90, i32* %91, i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %120

97:                                               ; preds = %88
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = load i32*, i32** %13, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @EC_POINT_get_affine_coordinates(i32* %98, %struct.TYPE_6__* %99, i32* %100, i32* %101, i32* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  br label %120

106:                                              ; preds = %97
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = call i64 @BN_cmp(i32* %107, i32* %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32*, i32** %11, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i64 @BN_cmp(i32* %112, i32* %113)
  %115 = icmp eq i64 %114, 0
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i1 [ false, %106 ], [ %115, %111 ]
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i32 0, i32 1
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %116, %105, %96, %87
  %121 = load i32*, i32** %9, align 8
  %122 = call i32 @BN_CTX_end(i32* %121)
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @BN_CTX_free(i32* %123)
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %72, %61, %32, %20
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @EC_POINT_is_at_infinity(i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(i32*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

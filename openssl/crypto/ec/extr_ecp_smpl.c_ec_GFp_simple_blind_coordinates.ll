; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_blind_coordinates.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_blind_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)* }
%struct.TYPE_13__ = type { i64, i32*, i32*, i32* }

@EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_blind_coordinates(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @BN_CTX_start(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @BN_CTX_get(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @BN_CTX_get(i32* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @ECerr(i32 %19, i32 %20)
  br label %144

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @BN_priv_rand_range_ex(i32* %24, i32 %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, align 4
  %33 = load i32, i32* @ERR_R_BN_LIB, align 4
  %34 = call i32 @ECerr(i32 %32, i32 %33)
  br label %144

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @BN_is_zero(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %23, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)** %44, align 8
  %46 = icmp ne i32 (%struct.TYPE_14__*, i32*, i32*, i32*)* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %40
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)** %51, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 %52(%struct.TYPE_14__* %53, i32* %54, i32* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %144

60:                                               ; preds = %47, %40
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %64, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 3
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 %65(%struct.TYPE_14__* %66, i32* %69, i32* %72, i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %60
  br label %144

78:                                               ; preds = %60
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)** %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i32*, i32** %6, align 8
  %88 = call i32 %83(%struct.TYPE_14__* %84, i32* %85, i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %78
  br label %144

91:                                               ; preds = %78
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = call i32 %96(%struct.TYPE_14__* %97, i32* %100, i32* %103, i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %91
  br label %144

109:                                              ; preds = %91
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 %114(%struct.TYPE_14__* %115, i32* %116, i32* %117, i32* %118, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %109
  br label %144

123:                                              ; preds = %109
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %127, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 %128(%struct.TYPE_14__* %129, i32* %132, i32* %135, i32* %136, i32* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %123
  br label %144

141:                                              ; preds = %123
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  store i64 0, i64* %143, align 8
  store i32 1, i32* %7, align 4
  br label %144

144:                                              ; preds = %141, %140, %122, %108, %90, %77, %59, %31, %18
  %145 = load i32*, i32** %6, align 8
  %146 = call i32 @BN_CTX_end(i32* %145)
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_priv_rand_range_ex(i32*, i32, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

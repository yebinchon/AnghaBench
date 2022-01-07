; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_get_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_get_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_group_get_curve(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BN_copy(i32* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %120

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %115

31:                                               ; preds = %28, %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32, i32*)* %36, null
  br i1 %37, label %38, label %89

38:                                               ; preds = %31
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @BN_CTX_new_ex(i32 %44)
  store i32* %45, i32** %13, align 8
  store i32* %45, i32** %11, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %120

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 %58(%struct.TYPE_7__* %59, i32* %60, i32 %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %116

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %76, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 %77(%struct.TYPE_7__* %78, i32* %79, i32 %82, i32* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %72
  br label %116

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %69
  br label %114

89:                                               ; preds = %31
  %90 = load i32*, i32** %9, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32*, i32** %9, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @BN_copy(i32* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %92
  br label %116

100:                                              ; preds = %92
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32*, i32** %10, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32*, i32** %10, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @BN_copy(i32* %105, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  br label %116

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %101
  br label %114

114:                                              ; preds = %113, %88
  br label %115

115:                                              ; preds = %114, %28
  store i32 1, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %111, %99, %86, %67
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @BN_CTX_free(i32* %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %116, %48, %23
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

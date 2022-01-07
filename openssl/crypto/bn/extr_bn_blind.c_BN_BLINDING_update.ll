; ModuleID = '/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_update.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/bn/extr_bn_blind.c_BN_BLINDING_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32*, i32* }

@BN_F_BN_BLINDING_UPDATE = common dso_local global i32 0, align 4
@BN_R_NOT_INITIALIZED = common dso_local global i32 0, align 4
@BN_BLINDING_COUNTER = common dso_local global i32 0, align 4
@BN_BLINDING_NO_RECREATE = common dso_local global i32 0, align 4
@BN_BLINDING_NO_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BN_BLINDING_update(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 3
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @BN_F_BN_BLINDING_UPDATE, align 4
  %17 = load i32, i32* @BN_R_NOT_INITIALIZED, align 4
  %18 = call i32 @BNerr(i32 %16, i32 %17)
  br label %136

19:                                               ; preds = %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load i32, i32* @BN_BLINDING_COUNTER, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BN_BLINDING_NO_RECREATE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @BN_BLINDING_create_param(%struct.TYPE_4__* %47, i32* null, i32* null, i32* %48, i32* null, i32* null)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %136

52:                                               ; preds = %46
  br label %135

53:                                               ; preds = %39, %34, %27
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BN_BLINDING_NO_UPDATE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %134, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @bn_mul_mont_fixed_top(i32* %68, i32* %71, i32* %74, i32* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %65
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @bn_mul_mont_fixed_top(i32* %84, i32* %87, i32* %90, i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %81, %65
  br label %136

98:                                               ; preds = %81
  br label %133

99:                                               ; preds = %60
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i32 @BN_mod_mul(i32* %102, i32* %105, i32* %108, i32 %111, i32* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %99
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @BN_mod_mul(i32* %118, i32* %121, i32* %124, i32 %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %115, %99
  br label %136

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %98
  br label %134

134:                                              ; preds = %133, %53
  br label %135

135:                                              ; preds = %134, %52
  store i32 1, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %131, %97, %51, %15
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @BN_BLINDING_COUNTER, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %136
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @BNerr(i32, i32) #1

declare dso_local i32 @BN_BLINDING_create_param(%struct.TYPE_4__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @bn_mul_mont_fixed_top(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod_mul(i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

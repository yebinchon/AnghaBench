; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* }

@EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@EC_R_INVALID_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @BN_num_bits(i32* %15)
  %17 = icmp sle i32 %16, 2
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @BN_is_odd(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %5
  %23 = load i32, i32* @EC_F_EC_GFP_SIMPLE_GROUP_SET_CURVE, align 4
  %24 = load i32, i32* @EC_R_INVALID_FIELD, align 4
  %25 = call i32 @ECerr(i32 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %154

26:                                               ; preds = %18
  %27 = load i32*, i32** %11, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @BN_CTX_new_ex(i32 %32)
  store i32* %33, i32** %13, align 8
  store i32* %33, i32** %11, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %154

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @BN_CTX_start(i32* %39)
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @BN_CTX_get(i32* %41)
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %148

46:                                               ; preds = %38
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @BN_copy(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %148

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @BN_set_negative(i32* %57, i32 0)
  %59 = load i32*, i32** %14, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @BN_nnmod(i32* %59, i32* %60, i32* %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %54
  br label %148

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %70, align 8
  %72 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* %71, null
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 %78(%struct.TYPE_7__* %79, i32* %82, i32* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %73
  br label %148

88:                                               ; preds = %73
  br label %98

89:                                               ; preds = %66
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @BN_copy(i32* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %148

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %88
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @BN_nnmod(i32* %101, i32* %102, i32* %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  br label %148

108:                                              ; preds = %98
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %112, align 8
  %114 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32*, i32*)* %113, null
  br i1 %114, label %115, label %133

115:                                              ; preds = %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*)** %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = call i32 %120(%struct.TYPE_7__* %121, i32* %124, i32* %127, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %115
  br label %148

132:                                              ; preds = %115
  br label %133

133:                                              ; preds = %132, %108
  %134 = load i32*, i32** %14, align 8
  %135 = call i32 @BN_add_word(i32* %134, i32 3)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %133
  br label %148

138:                                              ; preds = %133
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @BN_cmp(i32* %139, i32* %142)
  %144 = icmp eq i64 0, %143
  %145 = zext i1 %144 to i32
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 1, i32* %12, align 4
  br label %148

148:                                              ; preds = %138, %137, %131, %107, %96, %87, %65, %53, %45
  %149 = load i32*, i32** %11, align 8
  %150 = call i32 @BN_CTX_end(i32* %149)
  %151 = load i32*, i32** %13, align 8
  %152 = call i32 @BN_CTX_free(i32* %151)
  %153 = load i32, i32* %12, align 4
  store i32 %153, i32* %6, align 4
  br label %154

154:                                              ; preds = %148, %36, %22
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_is_odd(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

declare dso_local i32 @BN_nnmod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_add_word(i32*, i32) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_GROUP_set_generator.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_lib.c_EC_GROUP_set_generator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, i32, i32*, i32* }

@EC_F_EC_GROUP_SET_GENERATOR = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_INVALID_FIELD = common dso_local global i32 0, align 4
@EC_R_INVALID_GROUP_ORDER = common dso_local global i32 0, align 4
@EC_R_UNKNOWN_COFACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_GROUP_set_generator(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load i32, i32* @EC_F_EC_GROUP_SET_GENERATOR, align 4
  %14 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %15 = call i32 @ECerr(i32 %13, i32 %14)
  store i32 0, i32* %5, align 4
  br label %146

16:                                               ; preds = %4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @BN_is_zero(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @BN_is_negative(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27, %21, %16
  %34 = load i32, i32* @EC_F_EC_GROUP_SET_GENERATOR, align 4
  %35 = load i32, i32* @EC_R_INVALID_FIELD, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %146

37:                                               ; preds = %27
  %38 = load i32*, i32** %8, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = call i64 @BN_is_zero(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = call i64 @BN_is_negative(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %8, align 8
  %50 = call i64 @BN_num_bits(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = call i64 @BN_num_bits(i32* %53)
  %55 = add nsw i64 %54, 1
  %56 = icmp sgt i64 %50, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %48, %44, %40, %37
  %58 = load i32, i32* @EC_F_EC_GROUP_SET_GENERATOR, align 4
  %59 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %60 = call i32 @ECerr(i32 %58, i32 %59)
  store i32 0, i32* %5, align 4
  br label %146

61:                                               ; preds = %48
  %62 = load i32*, i32** %9, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32*, i32** %9, align 8
  %66 = call i64 @BN_is_negative(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @EC_F_EC_GROUP_SET_GENERATOR, align 4
  %70 = load i32, i32* @EC_R_UNKNOWN_COFACTOR, align 4
  %71 = call i32 @ECerr(i32 %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %146

72:                                               ; preds = %64, %61
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = call i32* @EC_POINT_new(%struct.TYPE_6__* %78)
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %146

87:                                               ; preds = %77
  br label %88

88:                                               ; preds = %87, %72
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @EC_POINT_copy(i32* %91, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %146

96:                                               ; preds = %88
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @BN_copy(i32 %99, i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %146

104:                                              ; preds = %96
  %105 = load i32*, i32** %9, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load i32*, i32** %9, align 8
  %109 = call i64 @BN_is_zero(i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %107
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @BN_copy(i32 %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  store i32 0, i32* %5, align 4
  br label %146

119:                                              ; preds = %111
  br label %130

120:                                              ; preds = %107, %104
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %122 = call i32 @ec_guess_cofactor(%struct.TYPE_6__* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %120
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @BN_zero(i32 %127)
  store i32 0, i32* %5, align 4
  br label %146

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %119
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @BN_is_odd(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %138 = call i32 @ec_precompute_mont_data(%struct.TYPE_6__* %137)
  store i32 %138, i32* %5, align 4
  br label %146

139:                                              ; preds = %130
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @BN_MONT_CTX_free(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  store i32* null, i32** %145, align 8
  store i32 1, i32* %5, align 4
  br label %146

146:                                              ; preds = %139, %136, %124, %118, %103, %95, %86, %68, %57, %33, %12
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_6__*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32*) #1

declare dso_local i32 @BN_copy(i32, i32*) #1

declare dso_local i32 @ec_guess_cofactor(%struct.TYPE_6__*) #1

declare dso_local i32 @BN_zero(i32) #1

declare dso_local i64 @BN_is_odd(i32) #1

declare dso_local i32 @ec_precompute_mont_data(%struct.TYPE_6__*) #1

declare dso_local i32 @BN_MONT_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

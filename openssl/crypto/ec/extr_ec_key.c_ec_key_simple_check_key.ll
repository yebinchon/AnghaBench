; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_check_key.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec_key.c_ec_key_simple_check_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__*, i32*, i32 }
%struct.TYPE_10__ = type { i32* }

@EC_F_EC_KEY_SIMPLE_CHECK_KEY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_POINT_AT_INFINITY = common dso_local global i32 0, align 4
@EC_R_COORDINATES_OUT_OF_RANGE = common dso_local global i32 0, align 4
@EC_R_POINT_IS_NOT_ON_CURVE = common dso_local global i32 0, align 4
@EC_R_INVALID_GROUP_ORDER = common dso_local global i32 0, align 4
@ERR_R_EC_LIB = common dso_local global i32 0, align 4
@EC_R_WRONG_ORDER = common dso_local global i32 0, align 4
@EC_R_INVALID_PRIVATE_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_key_simple_check_key(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32 0, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = icmp eq %struct.TYPE_9__* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = icmp eq %struct.TYPE_10__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %10, %1
  %21 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %22 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %23 = call i32 @ECerr(i32 %21, i32 %22)
  store i32 0, i32* %2, align 4
  br label %175

24:                                               ; preds = %15
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_10__* %27, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %35 = load i32, i32* @EC_R_POINT_AT_INFINITY, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  br label %169

37:                                               ; preds = %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32* @BN_CTX_new_ex(i32 %40)
  store i32* %41, i32** %5, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %169

44:                                               ; preds = %37
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call i32* @EC_POINT_new(%struct.TYPE_10__* %47)
  store i32* %48, i32** %7, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %169

51:                                               ; preds = %44
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 @ec_key_public_range_check(i32* %52, %struct.TYPE_9__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %58 = load i32, i32* @EC_R_COORDINATES_OUT_OF_RANGE, align 4
  %59 = call i32 @ECerr(i32 %57, i32 %58)
  br label %169

60:                                               ; preds = %51
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i64 @EC_POINT_is_on_curve(%struct.TYPE_10__* %63, i32* %66, i32* %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %60
  %71 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %72 = load i32, i32* @EC_R_POINT_IS_NOT_ON_CURVE, align 4
  %73 = call i32 @ECerr(i32 %71, i32 %72)
  br label %169

74:                                               ; preds = %60
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %6, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i64 @BN_is_zero(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %85 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %86 = call i32 @ECerr(i32 %84, i32 %85)
  br label %169

87:                                               ; preds = %74
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @EC_POINT_mul(%struct.TYPE_10__* %90, i32* %91, i32* null, i32* %94, i32* %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %87
  %100 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %101 = load i32, i32* @ERR_R_EC_LIB, align 4
  %102 = call i32 @ECerr(i32 %100, i32 %101)
  br label %169

103:                                              ; preds = %87
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_10__* %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %112 = load i32, i32* @EC_R_WRONG_ORDER, align 4
  %113 = call i32 @ECerr(i32 %111, i32 %112)
  br label %169

114:                                              ; preds = %103
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %168

119:                                              ; preds = %114
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32* (...) @BN_value_one()
  %124 = call i64 @BN_cmp(i32* %122, i32* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = call i64 @BN_cmp(i32* %129, i32* %130)
  %132 = icmp sge i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126, %119
  %134 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %135 = load i32, i32* @EC_R_WRONG_ORDER, align 4
  %136 = call i32 @ECerr(i32 %134, i32 %135)
  br label %169

137:                                              ; preds = %126
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @EC_POINT_mul(%struct.TYPE_10__* %140, i32* %141, i32* %144, i32* null, i32* null, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %137
  %149 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %150 = load i32, i32* @ERR_R_EC_LIB, align 4
  %151 = call i32 @ECerr(i32 %149, i32 %150)
  br label %169

152:                                              ; preds = %137
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32*, i32** %5, align 8
  %161 = call i64 @EC_POINT_cmp(%struct.TYPE_10__* %155, i32* %156, i32* %159, i32* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %152
  %164 = load i32, i32* @EC_F_EC_KEY_SIMPLE_CHECK_KEY, align 4
  %165 = load i32, i32* @EC_R_INVALID_PRIVATE_KEY, align 4
  %166 = call i32 @ECerr(i32 %164, i32 %165)
  br label %169

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %114
  store i32 1, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %163, %148, %133, %110, %99, %83, %70, %56, %50, %43, %33
  %170 = load i32*, i32** %5, align 8
  %171 = call i32 @BN_CTX_free(i32* %170)
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 @EC_POINT_free(i32* %172)
  %174 = load i32, i32* %4, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %169, %20
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_10__*, i32*) #1

declare dso_local i32* @BN_CTX_new_ex(i32) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_10__*) #1

declare dso_local i32 @ec_key_public_range_check(i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @EC_POINT_is_on_curve(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(%struct.TYPE_10__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i64 @EC_POINT_cmp(%struct.TYPE_10__*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

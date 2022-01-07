; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_pre.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)* }
%struct.TYPE_16__ = type { i64, i32, i32, i32 }

@BN_RAND_TOP_ANY = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@EC_F_EC_GF2M_SIMPLE_LADDER_PRE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*)* @ec_GF2m_simple_ladder_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_GF2m_simple_ladder_pre(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, %struct.TYPE_16__* %2, %struct.TYPE_16__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %223

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %37, %17
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @BN_num_bits(i32 %24)
  %26 = sub nsw i64 %25, 1
  %27 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %28 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @BN_priv_rand_ex(i32 %21, i64 %26, i32 %27, i32 %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_LADDER_PRE, align 4
  %34 = load i32, i32* @ERR_R_BN_LIB, align 4
  %35 = call i32 @ECerr(i32 %33, i32 %34)
  store i32 0, i32* %6, align 4
  br label %223

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @BN_is_zero(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %18, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %47, align 8
  %49 = icmp ne i32 (%struct.TYPE_17__*, i32, i32, i32*)* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %54, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 %55(%struct.TYPE_17__* %56, i32 %59, i32 %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %85

66:                                               ; preds = %50, %43
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)** %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 %71(%struct.TYPE_17__* %72, i32 %75, i32 %78, i32 %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %66, %50
  store i32 0, i32* %6, align 4
  br label %223

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %106, %86
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @BN_num_bits(i32 %93)
  %95 = sub nsw i64 %94, 1
  %96 = load i32, i32* @BN_RAND_TOP_ANY, align 4
  %97 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = call i32 @BN_priv_rand_ex(i32 %90, i64 %95, i32 %96, i32 %97, i32* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %87
  %102 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_LADDER_PRE, align 4
  %103 = load i32, i32* @ERR_R_BN_LIB, align 4
  %104 = call i32 @ECerr(i32 %102, i32 %103)
  store i32 0, i32* %6, align 4
  br label %223

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @BN_is_zero(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %87, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %116, align 8
  %118 = icmp ne i32 (%struct.TYPE_17__*, i32, i32, i32*)* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %112
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %123, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = call i32 %124(%struct.TYPE_17__* %125, i32 %128, i32 %131, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %217

135:                                              ; preds = %119, %112
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 1
  %140 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %139, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 %140(%struct.TYPE_17__* %141, i32 %144, i32 %147, i32* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %217

151:                                              ; preds = %135
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32 (%struct.TYPE_17__*, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32*)** %155, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 %156(%struct.TYPE_17__* %157, i32 %160, i32 %163, i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %217

167:                                              ; preds = %151
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @BN_GF2m_add(i32 %170, i32 %173, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %167
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)** %183, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %11, align 8
  %196 = call i32 %184(%struct.TYPE_17__* %185, i32 %188, i32 %191, i32 %194, i32* %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %217

198:                                              ; preds = %179
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32*)** %202, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = call i32 %203(%struct.TYPE_17__* %204, i32 %207, i32 %210, i32 %213, i32* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %198, %179, %167, %151, %135, %119
  store i32 0, i32* %6, align 4
  br label %223

218:                                              ; preds = %198
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  store i64 0, i64* %222, align 8
  store i32 1, i32* %6, align 4
  br label %223

223:                                              ; preds = %218, %217, %101, %85, %32, %16
  %224 = load i32, i32* %6, align 4
  ret i32 %224
}

declare dso_local i32 @BN_priv_rand_ex(i32, i64, i32, i32, i32*) #1

declare dso_local i64 @BN_num_bits(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @BN_is_zero(i32) #1

declare dso_local i32 @BN_GF2m_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

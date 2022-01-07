; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_embar.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_imath.c_s_embar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }

@MP_DIGIT_BIT = common dso_local global i32 0, align 4
@MP_MEMORY = common dso_local global i32 0, align 4
@MP_ZPOS = common dso_local global i64 0, align 8
@MP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @s_embar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_embar(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @MP_USED(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @MP_DIGITS(i32 %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @MP_USED(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = getelementptr inbounds i32, i32* %25, i64 -1
  store i32* %26, i32** %13, align 8
  %27 = call i32 @DECLARE_TEMP(i32 3)
  %28 = call %struct.TYPE_10__* @TEMP(i32 0)
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 4, %29
  %31 = call i32 @GROW(%struct.TYPE_10__* %28, i32 %30)
  %32 = call i32 @REQUIRE(i32 %31)
  %33 = call %struct.TYPE_10__* @TEMP(i32 1)
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 4, %34
  %36 = call i32 @GROW(%struct.TYPE_10__* %33, i32 %35)
  %37 = call i32 @REQUIRE(i32 %36)
  %38 = call %struct.TYPE_10__* @TEMP(i32 2)
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 4, %39
  %41 = call i32 @GROW(%struct.TYPE_10__* %38, i32 %40)
  %42 = call i32 @REQUIRE(i32 %41)
  %43 = call %struct.TYPE_10__* @TEMP(i32 0)
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_10__* @TEMP(i32 0)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ZERO(i32 %45, i32 %48)
  %50 = call %struct.TYPE_10__* @TEMP(i32 1)
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_10__* @TEMP(i32 1)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ZERO(i32 %52, i32 %55)
  %57 = call %struct.TYPE_10__* @TEMP(i32 2)
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_10__* @TEMP(i32 2)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ZERO(i32 %59, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @mp_int_set_value(i32 %64, i32 1)
  br label %66

66:                                               ; preds = %135, %5
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = icmp ult i32* %67, %68
  br i1 %69, label %70, label %138

70:                                               ; preds = %66
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* @MP_DIGIT_BIT, align 4
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %130, %70
  %75 = load i32, i32* %15, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %135

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call %struct.TYPE_10__* @TEMP(i32 0)
  %85 = call i32 @UMUL(i32 %82, i32 %83, %struct.TYPE_10__* %84)
  %86 = call %struct.TYPE_10__* @TEMP(i32 0)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call %struct.TYPE_10__* @TEMP(i32 1)
  %90 = call %struct.TYPE_10__* @TEMP(i32 2)
  %91 = call i32 @s_reduce(%struct.TYPE_10__* %86, i32 %87, i32 %88, %struct.TYPE_10__* %89, %struct.TYPE_10__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %81
  %94 = load i32, i32* @MP_MEMORY, align 4
  %95 = call i32 @REQUIRE(i32 %94)
  br label %96

96:                                               ; preds = %93, %81
  %97 = call %struct.TYPE_10__* @TEMP(i32 0)
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @mp_int_copy(%struct.TYPE_10__* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %77
  %101 = load i32, i32* %6, align 4
  %102 = call %struct.TYPE_10__* @TEMP(i32 0)
  %103 = call i32 @USQR(i32 %101, %struct.TYPE_10__* %102)
  %104 = call %struct.TYPE_10__* @TEMP(i32 0)
  %105 = call i64 @MP_SIGN(%struct.TYPE_10__* %104)
  %106 = load i64, i64* @MP_ZPOS, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = call %struct.TYPE_10__* @TEMP(i32 0)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call %struct.TYPE_10__* @TEMP(i32 1)
  %114 = call %struct.TYPE_10__* @TEMP(i32 2)
  %115 = call i32 @s_reduce(%struct.TYPE_10__* %110, i32 %111, i32 %112, %struct.TYPE_10__* %113, %struct.TYPE_10__* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %100
  %118 = load i32, i32* @MP_MEMORY, align 4
  %119 = call i32 @REQUIRE(i32 %118)
  br label %120

120:                                              ; preds = %117, %100
  %121 = call %struct.TYPE_10__* @TEMP(i32 0)
  %122 = call i64 @MP_SIGN(%struct.TYPE_10__* %121)
  %123 = load i64, i64* @MP_ZPOS, align 8
  %124 = icmp eq i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = call %struct.TYPE_10__* @TEMP(i32 0)
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @mp_int_copy(%struct.TYPE_10__* %127, i32 %128)
  br label %130

130:                                              ; preds = %120
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %14, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %74

135:                                              ; preds = %74
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %12, align 8
  br label %66

138:                                              ; preds = %66
  %139 = load i32*, i32** %13, align 8
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %184, %138
  %142 = load i32, i32* %16, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call %struct.TYPE_10__* @TEMP(i32 0)
  %149 = call i32 @UMUL(i32 %146, i32 %147, %struct.TYPE_10__* %148)
  %150 = call %struct.TYPE_10__* @TEMP(i32 0)
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call %struct.TYPE_10__* @TEMP(i32 1)
  %154 = call %struct.TYPE_10__* @TEMP(i32 2)
  %155 = call i32 @s_reduce(%struct.TYPE_10__* %150, i32 %151, i32 %152, %struct.TYPE_10__* %153, %struct.TYPE_10__* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %145
  %158 = load i32, i32* @MP_MEMORY, align 4
  %159 = call i32 @REQUIRE(i32 %158)
  br label %160

160:                                              ; preds = %157, %145
  %161 = call %struct.TYPE_10__* @TEMP(i32 0)
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @mp_int_copy(%struct.TYPE_10__* %161, i32 %162)
  br label %164

164:                                              ; preds = %160, %141
  %165 = load i32, i32* %16, align 4
  %166 = ashr i32 %165, 1
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  br label %188

170:                                              ; preds = %164
  %171 = load i32, i32* %6, align 4
  %172 = call %struct.TYPE_10__* @TEMP(i32 0)
  %173 = call i32 @USQR(i32 %171, %struct.TYPE_10__* %172)
  %174 = call %struct.TYPE_10__* @TEMP(i32 0)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call %struct.TYPE_10__* @TEMP(i32 1)
  %178 = call %struct.TYPE_10__* @TEMP(i32 2)
  %179 = call i32 @s_reduce(%struct.TYPE_10__* %174, i32 %175, i32 %176, %struct.TYPE_10__* %177, %struct.TYPE_10__* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %170
  %182 = load i32, i32* @MP_MEMORY, align 4
  %183 = call i32 @REQUIRE(i32 %182)
  br label %184

184:                                              ; preds = %181, %170
  %185 = call %struct.TYPE_10__* @TEMP(i32 0)
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @mp_int_copy(%struct.TYPE_10__* %185, i32 %186)
  br label %141

188:                                              ; preds = %169
  %189 = call i32 (...) @CLEANUP_TEMP()
  %190 = load i32, i32* @MP_OK, align 4
  ret i32 %190
}

declare dso_local i32 @MP_USED(i32) #1

declare dso_local i32* @MP_DIGITS(i32) #1

declare dso_local i32 @DECLARE_TEMP(i32) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @GROW(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_10__* @TEMP(i32) #1

declare dso_local i32 @ZERO(i32, i32) #1

declare dso_local i32 @mp_int_set_value(i32, i32) #1

declare dso_local i32 @UMUL(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @s_reduce(%struct.TYPE_10__*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @mp_int_copy(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @USQR(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @MP_SIGN(%struct.TYPE_10__*) #1

declare dso_local i32 @CLEANUP_TEMP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

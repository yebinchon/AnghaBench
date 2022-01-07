; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ec_internal_test.c_group_field_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ec_internal_test.c_group_field_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* }

@BN_RAND_TOP_ONE = common dso_local global i32 0, align 4
@BN_RAND_BOTTOM_ANY = common dso_local global i32 0, align 4
@ERR_LIB_EC = common dso_local global i64 0, align 8
@EC_R_CANNOT_INVERT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*)* @group_field_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_field_tests(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %13, align 8
  %15 = icmp eq i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i32*)** %20, align 8
  %22 = icmp eq i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i32*)* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %2
  store i32 1, i32* %3, align 4
  br label %227

24:                                               ; preds = %16
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @BN_CTX_start(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @BN_CTX_get(i32* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call i32* @BN_CTX_get(i32* %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @BN_CTX_get(i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = call i32 @TEST_ptr(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %157

35:                                               ; preds = %24
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32* (...) @BN_value_one()
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 %40(%struct.TYPE_13__* %41, i32* %42, i32* %43, i32* %44)
  %46 = call i32 @TEST_true(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %157

48:                                               ; preds = %35
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @BN_is_one(i32* %49)
  %51 = call i32 @TEST_true(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %157

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @BN_num_bits(i32* %57)
  %59 = sub nsw i64 %58, 1
  %60 = load i32, i32* @BN_RAND_TOP_ONE, align 4
  %61 = load i32, i32* @BN_RAND_BOTTOM_ANY, align 4
  %62 = call i32 @BN_pseudo_rand(i32* %54, i64 %59, i32 %60, i32 %61)
  %63 = call i32 @TEST_true(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %157

65:                                               ; preds = %53
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %69, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 %70(%struct.TYPE_13__* %71, i32* %72, i32* %73, i32* %74)
  %76 = call i32 @TEST_true(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %157

78:                                               ; preds = %65
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %82, align 8
  %84 = icmp ne i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %78
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %89, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 %90(%struct.TYPE_13__* %91, i32* %92, i32* %93, i32* %94)
  %96 = call i32 @TEST_true(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %157

98:                                               ; preds = %85, %78
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 2
  %103 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %102, align 8
  %104 = icmp ne i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %98
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %109, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %112 = load i32*, i32** %7, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = call i32 %110(%struct.TYPE_13__* %111, i32* %112, i32* %113, i32* %114)
  %116 = call i32 @TEST_true(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %157

118:                                              ; preds = %105, %98
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*, i32*)** %122, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32*, i32** %6, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %5, align 8
  %129 = call i32 %123(%struct.TYPE_13__* %124, i32* %125, i32* %126, i32* %127, i32* %128)
  %130 = call i32 @TEST_true(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %157

132:                                              ; preds = %118
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %136, align 8
  %138 = icmp ne i32 (%struct.TYPE_13__*, i32*, i32*, i32*)* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %132
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %143, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %146 = load i32*, i32** %8, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 %144(%struct.TYPE_13__* %145, i32* %146, i32* %147, i32* %148)
  %150 = call i32 @TEST_true(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %139, %132
  %153 = load i32*, i32** %8, align 8
  %154 = call i32 @BN_is_one(i32* %153)
  %155 = call i32 @TEST_true(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152, %139, %118, %105, %85, %65, %53, %48, %35, %24
  br label %223

158:                                              ; preds = %152
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @BN_zero(i32* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %164, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = load i32*, i32** %7, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 %165(%struct.TYPE_13__* %166, i32* %167, i32* %168, i32* %169)
  %171 = call i32 @TEST_false(i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %220

173:                                              ; preds = %158
  %174 = call i32 (...) @ERR_peek_last_error()
  %175 = call i64 @ERR_GET_LIB(i32 %174)
  %176 = load i64, i64* @ERR_LIB_EC, align 8
  %177 = icmp eq i64 %175, %176
  %178 = zext i1 %177 to i32
  %179 = call i32 @TEST_true(i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %220

181:                                              ; preds = %173
  %182 = call i32 (...) @ERR_peek_last_error()
  %183 = call i64 @ERR_GET_REASON(i32 %182)
  %184 = load i64, i64* @EC_R_CANNOT_INVERT, align 8
  %185 = icmp eq i64 %183, %184
  %186 = zext i1 %185 to i32
  %187 = call i32 @TEST_true(i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %220

189:                                              ; preds = %181
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = load i32 (%struct.TYPE_13__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_13__*, i32*, i32*, i32*)** %193, align 8
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %196 = load i32*, i32** %7, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 %194(%struct.TYPE_13__* %195, i32* %196, i32* %199, i32* %200)
  %202 = call i32 @TEST_false(i32 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %189
  %205 = call i32 (...) @ERR_peek_last_error()
  %206 = call i64 @ERR_GET_LIB(i32 %205)
  %207 = load i64, i64* @ERR_LIB_EC, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @TEST_true(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %204
  %213 = call i32 (...) @ERR_peek_last_error()
  %214 = call i64 @ERR_GET_REASON(i32 %213)
  %215 = load i64, i64* @EC_R_CANNOT_INVERT, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @TEST_true(i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %212, %204, %189, %181, %173, %158
  br label %223

221:                                              ; preds = %212
  %222 = call i32 (...) @ERR_clear_error()
  store i32 1, i32* %9, align 4
  br label %223

223:                                              ; preds = %221, %220, %157
  %224 = load i32*, i32** %5, align 8
  %225 = call i32 @BN_CTX_end(i32* %224)
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %223, %23
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32* @BN_value_one(...) #1

declare dso_local i32 @BN_is_one(i32*) #1

declare dso_local i32 @BN_pseudo_rand(i32*, i64, i32, i32) #1

declare dso_local i64 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_zero(i32*) #1

declare dso_local i32 @TEST_false(i32) #1

declare dso_local i64 @ERR_GET_LIB(i32) #1

declare dso_local i32 @ERR_peek_last_error(...) #1

declare dso_local i64 @ERR_GET_REASON(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/openssl/crypto/aria/extr_aria.c_aria_encrypt.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/aria/extr_aria.c_aria_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@X1 = common dso_local global i64* null, align 8
@X2 = common dso_local global i32* null, align 8
@S1 = common dso_local global i64* null, align 8
@S2 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aria_encrypt(i8* %0, i8* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %3
  br label %236

22:                                               ; preds = %18
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %12, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 12
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 14
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %236

38:                                               ; preds = %34, %31, %22
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @GET_U32_BE(i8* %39, i32 0)
  store i32 %40, i32* %7, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @GET_U32_BE(i8* %41, i32 1)
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @GET_U32_BE(i8* %43, i32 2)
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @GET_U32_BE(i8* %45, i32 3)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @ARIA_ADD_ROUND_KEY(%struct.TYPE_5__* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 1
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %12, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @ARIA_SUBST_DIFF_ODD(i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ARIA_ADD_ROUND_KEY(%struct.TYPE_5__* %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 1
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %12, align 8
  br label %68

68:                                               ; preds = %72, %38
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 2
  store i32 %70, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ARIA_SUBST_DIFF_EVEN(i32 %73, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @ARIA_ADD_ROUND_KEY(%struct.TYPE_5__* %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 1
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %12, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ARIA_SUBST_DIFF_ODD(i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @ARIA_ADD_ROUND_KEY(%struct.TYPE_5__* %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 1
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %12, align 8
  br label %68

99:                                               ; preds = %68
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64*, i64** @X1, align 8
  %106 = load i32, i32* %7, align 4
  %107 = call i64 @GET_U8_BE(i32 %106, i32 0)
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i32*, i32** @X2, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i64 @GET_U8_BE(i32 %112, i32 1)
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 8
  %117 = load i64*, i64** @S1, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i64 @GET_U8_BE(i32 %118, i32 2)
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i64*, i64** @S2, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @GET_U8_BE(i32 %124, i32 3)
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @MAKE_U32(i32 %110, i32 %116, i32 %122, i32 %128)
  %130 = xor i32 %104, %129
  store i32 %130, i32* %7, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i64*, i64** @X1, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i64 @GET_U8_BE(i32 %137, i32 0)
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** @X2, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i64 @GET_U8_BE(i32 %143, i32 1)
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 8
  %148 = load i64*, i64** @S1, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i64 @GET_U8_BE(i32 %149, i32 2)
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i64*, i64** @S2, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i64 @GET_U8_BE(i32 %155, i32 3)
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = call i32 @MAKE_U32(i32 %141, i32 %147, i32 %153, i32 %159)
  %161 = xor i32 %135, %160
  store i32 %161, i32* %8, align 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = load i64*, i64** @X1, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i64 @GET_U8_BE(i32 %168, i32 0)
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = trunc i64 %171 to i32
  %173 = load i32*, i32** @X2, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @GET_U8_BE(i32 %174, i32 1)
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = ashr i32 %177, 8
  %179 = load i64*, i64** @S1, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i64 @GET_U8_BE(i32 %180, i32 2)
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i64*, i64** @S2, align 8
  %186 = load i32, i32* %9, align 4
  %187 = call i64 @GET_U8_BE(i32 %186, i32 3)
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = call i32 @MAKE_U32(i32 %172, i32 %178, i32 %184, i32 %190)
  %192 = xor i32 %166, %191
  store i32 %192, i32* %9, align 4
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  %197 = load i32, i32* %196, align 4
  %198 = load i64*, i64** @X1, align 8
  %199 = load i32, i32* %10, align 4
  %200 = call i64 @GET_U8_BE(i32 %199, i32 0)
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load i32*, i32** @X2, align 8
  %205 = load i32, i32* %10, align 4
  %206 = call i64 @GET_U8_BE(i32 %205, i32 1)
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = ashr i32 %208, 8
  %210 = load i64*, i64** @S1, align 8
  %211 = load i32, i32* %10, align 4
  %212 = call i64 @GET_U8_BE(i32 %211, i32 2)
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = trunc i64 %214 to i32
  %216 = load i64*, i64** @S2, align 8
  %217 = load i32, i32* %10, align 4
  %218 = call i64 @GET_U8_BE(i32 %217, i32 3)
  %219 = getelementptr inbounds i64, i64* %216, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 @MAKE_U32(i32 %203, i32 %209, i32 %215, i32 %221)
  %223 = xor i32 %197, %222
  store i32 %223, i32* %10, align 4
  %224 = load i8*, i8** %5, align 8
  %225 = load i32, i32* %7, align 4
  %226 = call i32 @PUT_U32_BE(i8* %224, i32 0, i32 %225)
  %227 = load i8*, i8** %5, align 8
  %228 = load i32, i32* %8, align 4
  %229 = call i32 @PUT_U32_BE(i8* %227, i32 1, i32 %228)
  %230 = load i8*, i8** %5, align 8
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @PUT_U32_BE(i8* %230, i32 2, i32 %231)
  %233 = load i8*, i8** %5, align 8
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @PUT_U32_BE(i8* %233, i32 3, i32 %234)
  br label %236

236:                                              ; preds = %99, %37, %21
  ret void
}

declare dso_local i32 @GET_U32_BE(i8*, i32) #1

declare dso_local i32 @ARIA_ADD_ROUND_KEY(%struct.TYPE_5__*, i32, i32, i32, i32) #1

declare dso_local i32 @ARIA_SUBST_DIFF_ODD(i32, i32, i32, i32) #1

declare dso_local i32 @ARIA_SUBST_DIFF_EVEN(i32, i32, i32, i32) #1

declare dso_local i32 @MAKE_U32(i32, i32, i32, i32) #1

declare dso_local i64 @GET_U8_BE(i32, i32) #1

declare dso_local i32 @PUT_U32_BE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

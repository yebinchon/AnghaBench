; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_BuildAlternateContextFromChain.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_chain.c_CRYPT_BuildAlternateContextFromChain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_21__**, i32, i64* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_22__** }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %s, %p, %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_25__* (i32*, i32, i32, i64, %struct.TYPE_25__*)* @CRYPT_BuildAlternateContextFromChain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_25__* @CRYPT_BuildAlternateContextFromChain(i32* %0, i32 %1, i32 %2, i64 %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_24__*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca %struct.TYPE_24__*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %10, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_25__*
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @debugstr_filetime(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %25 = call i32 (i8*, %struct.TYPE_25__*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %20, i32 %22, i32 %23, %struct.TYPE_25__* %24)
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %5
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %35, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %44, %struct.TYPE_25__** %10, align 8
  br label %45

45:                                               ; preds = %31, %5
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 1
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %55, i64 0
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sle i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  br label %221

62:                                               ; preds = %51, %45
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %15, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %139, %62
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %65 = icmp ne %struct.TYPE_24__* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp ult i64 %67, %72
  br label %74

74:                                               ; preds = %66, %63
  %75 = phi i1 [ false, %63 ], [ %73, %66 ]
  br i1 %75, label %76, label %142

76:                                               ; preds = %74
  store i64 0, i64* %13, align 8
  br label %77

77:                                               ; preds = %135, %76
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %79 = icmp ne %struct.TYPE_24__* %78, null
  br i1 %79, label %94, label %80

80:                                               ; preds = %77
  %81 = load i64, i64* %13, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %85, i64 %86
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %81, %92
  br label %94

94:                                               ; preds = %80, %77
  %95 = phi i1 [ false, %77 ], [ %93, %80 ]
  br i1 %95, label %96, label %138

96:                                               ; preds = %94
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %99, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %100, i64 %101
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %105, i64 %106
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  store %struct.TYPE_24__* %110, %struct.TYPE_24__** %16, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %114, i64 %115
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %118, align 8
  %120 = load i64, i64* %13, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %119, i64 %121
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = call %struct.TYPE_24__* @CertDuplicateCertificateContext(%struct.TYPE_24__* %125)
  store %struct.TYPE_24__* %126, %struct.TYPE_24__** %17, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %17, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call %struct.TYPE_24__* @CRYPT_GetIssuer(i32* %127, i32 %130, %struct.TYPE_24__* %131, %struct.TYPE_24__* %132, i64 %133, i64* %14)
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %15, align 8
  br label %135

135:                                              ; preds = %96
  %136 = load i64, i64* %13, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %13, align 8
  br label %77

138:                                              ; preds = %94
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %12, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %12, align 8
  br label %63

142:                                              ; preds = %74
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %144 = icmp ne %struct.TYPE_24__* %143, null
  br i1 %144, label %145, label %220

145:                                              ; preds = %142
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %146, -1
  store i64 %147, i64* %12, align 8
  %148 = load i64, i64* %13, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %13, align 8
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %13, align 8
  %153 = call %struct.TYPE_25__* @CRYPT_CopyChainToElement(%struct.TYPE_25__* %150, i64 %151, i64 %152)
  store %struct.TYPE_25__* %153, %struct.TYPE_25__** %11, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %155 = icmp ne %struct.TYPE_25__* %154, null
  br i1 %155, label %156, label %219

156:                                              ; preds = %145
  %157 = load i32*, i32** %6, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %160, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %161, i64 %162
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %163, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %166 = load i64, i64* %14, align 8
  %167 = call i64 @CRYPT_AddCertToSimpleChain(i32* %157, %struct.TYPE_21__* %164, %struct.TYPE_24__* %165, i64 %166)
  store i64 %167, i64* %18, align 8
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %15, align 8
  %169 = call i32 @CertFreeCertificateContext(%struct.TYPE_24__* %168)
  %170 = load i64, i64* %18, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %212

172:                                              ; preds = %156
  %173 = load i32*, i32** %6, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %180, align 8
  %182 = load i64, i64* %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %181, i64 %182
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %183, align 8
  %185 = call i64 @CRYPT_BuildSimpleChain(i32* %173, i32 %176, i64 %177, %struct.TYPE_21__* %184)
  store i64 %185, i64* %18, align 8
  %186 = load i64, i64* %18, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %172
  %189 = load i32*, i32** %6, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %192, align 8
  %194 = load i64, i64* %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %193, i64 %194
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @CRYPT_CheckSimpleChain(i32* %189, %struct.TYPE_21__* %196, i32 %197)
  br label %199

199:                                              ; preds = %188, %172
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %206, i64 %207
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  %211 = call i32 @CRYPT_CombineTrustStatus(i32* %202, i32* %210)
  br label %212

212:                                              ; preds = %199, %156
  %213 = load i64, i64* %18, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %217 = call i32 @CRYPT_FreeChainContext(%struct.TYPE_25__* %216)
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %11, align 8
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218, %145
  br label %220

220:                                              ; preds = %219, %142
  br label %221

221:                                              ; preds = %220, %61
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %223 = call i32 (i8*, %struct.TYPE_25__*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_25__* %222)
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  ret %struct.TYPE_25__* %224
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_25__*, ...) #1

declare dso_local i32 @debugstr_filetime(i32) #1

declare dso_local %struct.TYPE_24__* @CertDuplicateCertificateContext(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @CRYPT_GetIssuer(i32*, i32, %struct.TYPE_24__*, %struct.TYPE_24__*, i64, i64*) #1

declare dso_local %struct.TYPE_25__* @CRYPT_CopyChainToElement(%struct.TYPE_25__*, i64, i64) #1

declare dso_local i64 @CRYPT_AddCertToSimpleChain(i32*, %struct.TYPE_21__*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @CertFreeCertificateContext(%struct.TYPE_24__*) #1

declare dso_local i64 @CRYPT_BuildSimpleChain(i32*, i32, i64, %struct.TYPE_21__*) #1

declare dso_local i32 @CRYPT_CheckSimpleChain(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @CRYPT_CombineTrustStatus(i32*, i32*) #1

declare dso_local i32 @CRYPT_FreeChainContext(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

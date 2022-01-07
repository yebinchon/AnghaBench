; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_step.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_ladder_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32*)* }
%struct.TYPE_20__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*)* @ec_GF2m_simple_ladder_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_GF2m_simple_ladder_step(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)** %15, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 %16(%struct.TYPE_21__* %17, i32 %20, i32 %23, i32 %26, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %241

30:                                               ; preds = %5
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)** %34, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 %35(%struct.TYPE_21__* %36, i32 %39, i32 %42, i32 %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %241

49:                                               ; preds = %30
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  %54 = load i32 (%struct.TYPE_21__*, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32*)** %53, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 %54(%struct.TYPE_21__* %55, i32 %58, i32 %61, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %241

65:                                               ; preds = %49
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32 (%struct.TYPE_21__*, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32*)** %69, align 8
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 %70(%struct.TYPE_21__* %71, i32 %74, i32 %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %241

81:                                               ; preds = %65
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BN_GF2m_add(i32 %84, i32 %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %241

93:                                               ; preds = %81
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_21__*, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32*)** %97, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = call i32 %98(%struct.TYPE_21__* %99, i32 %102, i32 %105, i32* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %241

109:                                              ; preds = %93
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)** %113, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 %114(%struct.TYPE_21__* %115, i32 %118, i32 %121, i32 %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %241

128:                                              ; preds = %109
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 0
  %133 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)** %132, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %11, align 8
  %145 = call i32 %133(%struct.TYPE_21__* %134, i32 %137, i32 %140, i32 %143, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %241

147:                                              ; preds = %128
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @BN_GF2m_add(i32 %150, i32 %153, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %241

159:                                              ; preds = %147
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i32 (%struct.TYPE_21__*, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32*)** %163, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = call i32 %164(%struct.TYPE_21__* %165, i32 %168, i32 %171, i32* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %241

175:                                              ; preds = %159
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 0
  %180 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)** %179, align 8
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %11, align 8
  %192 = call i32 %180(%struct.TYPE_21__* %181, i32 %184, i32 %187, i32 %190, i32* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %241

194:                                              ; preds = %175
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 1
  %199 = load i32 (%struct.TYPE_21__*, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32*)** %198, align 8
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = call i32 %199(%struct.TYPE_21__* %200, i32 %203, i32 %206, i32* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %241

210:                                              ; preds = %194
  %211 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 0
  %215 = load i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)*, i32 (%struct.TYPE_21__*, i32, i32, i32, i32*)** %214, align 8
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = call i32 %215(%struct.TYPE_21__* %216, i32 %219, i32 %222, i32 %225, i32* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %241

229:                                              ; preds = %210
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @BN_GF2m_add(i32 %232, i32 %235, i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %229, %210, %194, %175, %159, %147, %128, %109, %93, %81, %65, %49, %30, %5
  store i32 0, i32* %6, align 4
  br label %243

242:                                              ; preds = %229
  store i32 1, i32* %6, align 4
  br label %243

243:                                              ; preds = %242, %241
  %244 = load i32, i32* %6, align 4
  ret i32 %244
}

declare dso_local i32 @BN_GF2m_add(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

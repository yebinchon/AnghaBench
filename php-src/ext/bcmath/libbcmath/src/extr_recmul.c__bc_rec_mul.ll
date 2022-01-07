; ModuleID = '/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_recmul.c__bc_rec_mul.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/bcmath/libbcmath/src/extr_recmul.c__bc_rec_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64, i64 }

@mul_base_digits = common dso_local global i32 0, align 4
@MUL_SMALL_DIGITS = common dso_local global i32 0, align 4
@_zero_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__**, i32)* @_bc_rec_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_bc_rec_mul(%struct.TYPE_20__* %0, i32 %1, %struct.TYPE_20__* %2, i32 %3, %struct.TYPE_20__** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_20__** %4, %struct.TYPE_20__*** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @mul_base_digits, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @MUL_SMALL_DIGITS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @MUL_SMALL_DIGITS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36, %32, %6
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @_bc_simp_mul(%struct.TYPE_20__* %41, i32 %42, %struct.TYPE_20__* %43, i32 %44, %struct.TYPE_20__** %45, i32 %46)
  br label %257

48:                                               ; preds = %36
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @MAX(i32 %49, i32 %50)
  %52 = add nsw i32 %51, 1
  %53 = sdiv i32 %52, 2
  store i32 %53, i32* %22, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %22, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load i32, i32* @_zero_, align 4
  %59 = call i32 @BCG(i32 %58)
  %60 = call %struct.TYPE_20__* @bc_copy_num(i32 %59)
  store %struct.TYPE_20__* %60, %struct.TYPE_20__** %14, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.TYPE_20__* @new_sub_num(i32 %61, i32 0, i64 %64)
  store %struct.TYPE_20__* %65, %struct.TYPE_20__** %13, align 8
  br label %85

66:                                               ; preds = %48
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %22, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = call %struct.TYPE_20__* @new_sub_num(i32 %69, i32 0, i64 %72)
  store %struct.TYPE_20__* %73, %struct.TYPE_20__** %14, align 8
  %74 = load i32, i32* %22, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32, i32* %22, align 4
  %82 = sext i32 %81 to i64
  %83 = sub nsw i64 %80, %82
  %84 = call %struct.TYPE_20__* @new_sub_num(i32 %74, i32 0, i64 %83)
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %13, align 8
  br label %85

85:                                               ; preds = %66, %57
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %22, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i32, i32* @_zero_, align 4
  %91 = call i32 @BCG(i32 %90)
  %92 = call %struct.TYPE_20__* @bc_copy_num(i32 %91)
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %16, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = call %struct.TYPE_20__* @new_sub_num(i32 %93, i32 0, i64 %96)
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %15, align 8
  br label %117

98:                                               ; preds = %85
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %22, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call %struct.TYPE_20__* @new_sub_num(i32 %101, i32 0, i64 %104)
  store %struct.TYPE_20__* %105, %struct.TYPE_20__** %16, align 8
  %106 = load i32, i32* %22, align 4
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %109, %111
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = call %struct.TYPE_20__* @new_sub_num(i32 %106, i32 0, i64 %115)
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %15, align 8
  br label %117

117:                                              ; preds = %98, %89
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %119 = call i32 @_bc_rm_leading_zeros(%struct.TYPE_20__* %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %121 = call i32 @_bc_rm_leading_zeros(%struct.TYPE_20__* %120)
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %123 = call i32 @_bc_rm_leading_zeros(%struct.TYPE_20__* %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %125 = call i32 @_bc_rm_leading_zeros(%struct.TYPE_20__* %124)
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %127 = call i64 @bc_is_zero(%struct.TYPE_20__* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %117
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %131 = call i64 @bc_is_zero(%struct.TYPE_20__* %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %129, %117
  %134 = phi i1 [ true, %117 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %24, align 4
  %136 = call i32 @bc_init_num(%struct.TYPE_20__** %20)
  %137 = call i32 @bc_init_num(%struct.TYPE_20__** %21)
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %140 = call i32 @bc_sub(%struct.TYPE_20__* %138, %struct.TYPE_20__* %139, %struct.TYPE_20__** %20, i32 0)
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %25, align 4
  %144 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %146 = call i32 @bc_sub(%struct.TYPE_20__* %144, %struct.TYPE_20__* %145, %struct.TYPE_20__** %21, i32 0)
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %26, align 4
  %150 = load i32, i32* %24, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %133
  %153 = load i32, i32* @_zero_, align 4
  %154 = call i32 @BCG(i32 %153)
  %155 = call %struct.TYPE_20__* @bc_copy_num(i32 %154)
  store %struct.TYPE_20__* %155, %struct.TYPE_20__** %17, align 8
  br label %165

156:                                              ; preds = %133
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  call void @_bc_rec_mul(%struct.TYPE_20__* %157, i32 %160, %struct.TYPE_20__* %161, i32 %164, %struct.TYPE_20__** %17, i32 0)
  br label %165

165:                                              ; preds = %156, %152
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %167 = call i64 @bc_is_zero(%struct.TYPE_20__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %171 = call i64 @bc_is_zero(%struct.TYPE_20__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169, %165
  %174 = load i32, i32* @_zero_, align 4
  %175 = call i32 @BCG(i32 %174)
  %176 = call %struct.TYPE_20__* @bc_copy_num(i32 %175)
  store %struct.TYPE_20__* %176, %struct.TYPE_20__** %18, align 8
  br label %182

177:                                              ; preds = %169
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %179 = load i32, i32* %25, align 4
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %181 = load i32, i32* %26, align 4
  call void @_bc_rec_mul(%struct.TYPE_20__* %178, i32 %179, %struct.TYPE_20__* %180, i32 %181, %struct.TYPE_20__** %18, i32 0)
  br label %182

182:                                              ; preds = %177, %173
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %184 = call i64 @bc_is_zero(%struct.TYPE_20__* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %188 = call i64 @bc_is_zero(%struct.TYPE_20__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %186, %182
  %191 = load i32, i32* @_zero_, align 4
  %192 = call i32 @BCG(i32 %191)
  %193 = call %struct.TYPE_20__* @bc_copy_num(i32 %192)
  store %struct.TYPE_20__* %193, %struct.TYPE_20__** %19, align 8
  br label %203

194:                                              ; preds = %186
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  call void @_bc_rec_mul(%struct.TYPE_20__* %195, i32 %198, %struct.TYPE_20__* %199, i32 %202, %struct.TYPE_20__** %19, i32 0)
  br label %203

203:                                              ; preds = %194, %190
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %204, %205
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* %23, align 4
  %209 = call %struct.TYPE_20__* @bc_new_num(i32 %208, i32 0)
  %210 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  store %struct.TYPE_20__* %209, %struct.TYPE_20__** %210, align 8
  %211 = load i32, i32* %24, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %203
  %214 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %214, align 8
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %217 = load i32, i32* %22, align 4
  %218 = mul nsw i32 2, %217
  %219 = call i32 @_bc_shift_addsub(%struct.TYPE_20__* %215, %struct.TYPE_20__* %216, i32 %218, i32 0)
  %220 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %220, align 8
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %223 = load i32, i32* %22, align 4
  %224 = call i32 @_bc_shift_addsub(%struct.TYPE_20__* %221, %struct.TYPE_20__* %222, i32 %223, i32 0)
  br label %225

225:                                              ; preds = %213, %203
  %226 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %226, align 8
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %229 = load i32, i32* %22, align 4
  %230 = call i32 @_bc_shift_addsub(%struct.TYPE_20__* %227, %struct.TYPE_20__* %228, i32 %229, i32 0)
  %231 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %234 = call i32 @_bc_shift_addsub(%struct.TYPE_20__* %232, %struct.TYPE_20__* %233, i32 0, i32 0)
  %235 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %236 = load %struct.TYPE_20__*, %struct.TYPE_20__** %235, align 8
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %238 = load i32, i32* %22, align 4
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %241, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @_bc_shift_addsub(%struct.TYPE_20__* %236, %struct.TYPE_20__* %237, i32 %238, i32 %246)
  %248 = call i32 @bc_free_num(%struct.TYPE_20__** %14)
  %249 = call i32 @bc_free_num(%struct.TYPE_20__** %13)
  %250 = call i32 @bc_free_num(%struct.TYPE_20__** %16)
  %251 = call i32 @bc_free_num(%struct.TYPE_20__** %17)
  %252 = call i32 @bc_free_num(%struct.TYPE_20__** %15)
  %253 = call i32 @bc_free_num(%struct.TYPE_20__** %18)
  %254 = call i32 @bc_free_num(%struct.TYPE_20__** %19)
  %255 = call i32 @bc_free_num(%struct.TYPE_20__** %20)
  %256 = call i32 @bc_free_num(%struct.TYPE_20__** %21)
  br label %257

257:                                              ; preds = %225, %40
  ret void
}

declare dso_local i32 @_bc_simp_mul(%struct.TYPE_20__*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__**, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local %struct.TYPE_20__* @bc_copy_num(i32) #1

declare dso_local i32 @BCG(i32) #1

declare dso_local %struct.TYPE_20__* @new_sub_num(i32, i32, i64) #1

declare dso_local i32 @_bc_rm_leading_zeros(%struct.TYPE_20__*) #1

declare dso_local i64 @bc_is_zero(%struct.TYPE_20__*) #1

declare dso_local i32 @bc_init_num(%struct.TYPE_20__**) #1

declare dso_local i32 @bc_sub(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__**, i32) #1

declare dso_local %struct.TYPE_20__* @bc_new_num(i32, i32) #1

declare dso_local i32 @_bc_shift_addsub(%struct.TYPE_20__*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @bc_free_num(%struct.TYPE_20__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

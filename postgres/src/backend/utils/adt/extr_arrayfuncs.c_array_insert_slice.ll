; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_insert_slice.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_arrayfuncs.c_array_insert_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXDIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32, i32, i8)* @array_insert_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array_insert_slice(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7, i32 %8, i32 %9, i8 signext %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i8 %10, i8* %22, align 1
  %41 = load i32*, i32** %12, align 8
  %42 = call i8* @ARR_DATA_PTR(i32* %41)
  store i8* %42, i8** %23, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i8* @ARR_DATA_PTR(i32* %43)
  store i8* %44, i8** %24, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i8* @ARR_DATA_PTR(i32* %45)
  store i8* %46, i8** %25, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = call i32* @ARR_NULLBITMAP(i32* %47)
  store i32* %48, i32** %26, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32* @ARR_NULLBITMAP(i32* %49)
  store i32* %50, i32** %27, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32* @ARR_NULLBITMAP(i32* %51)
  store i32* %52, i32** %28, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = call i32 @ARR_NDIM(i32* %53)
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @ARR_DIMS(i32* %55)
  %57 = call i32 @ArrayGetNItems(i32 %54, i32 %56)
  store i32 %57, i32* %29, align 4
  %58 = load i32, i32* @MAXDIM, align 4
  %59 = zext i32 %58 to i64
  %60 = call i8* @llvm.stacksave()
  store i8* %60, i8** %33, align 8
  %61 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %34, align 8
  %62 = load i32, i32* @MAXDIM, align 4
  %63 = zext i32 %62 to i64
  %64 = alloca i32, i64 %63, align 16
  store i64 %63, i64* %35, align 8
  %65 = load i32, i32* @MAXDIM, align 4
  %66 = zext i32 %65 to i64
  %67 = alloca i32, i64 %66, align 16
  store i64 %66, i64* %36, align 8
  %68 = load i32, i32* @MAXDIM, align 4
  %69 = zext i32 %68 to i64
  %70 = alloca i32, i64 %69, align 16
  store i64 %69, i64* %37, align 8
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %16, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = load i32*, i32** %18, align 8
  %75 = call i32 @ArrayGetOffset(i32 %71, i32* %72, i32* %73, i32* %74)
  store i32 %75, i32* %30, align 4
  %76 = load i8*, i8** %23, align 8
  %77 = load i32, i32* %30, align 4
  %78 = load i8*, i8** %24, align 8
  %79 = load i32*, i32** %27, align 8
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i8, i8* %22, align 1
  %83 = call i32 @array_copy(i8* %76, i32 %77, i8* %78, i32 0, i32* %79, i32 %80, i32 %81, i8 signext %82)
  store i32 %83, i32* %40, align 4
  %84 = load i32, i32* %40, align 4
  %85 = load i8*, i8** %23, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %23, align 8
  %88 = load i32, i32* %40, align 4
  %89 = load i8*, i8** %24, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %24, align 8
  %92 = load i32*, i32** %26, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %11
  %95 = load i32*, i32** %26, align 8
  %96 = load i32*, i32** %27, align 8
  %97 = load i32, i32* %30, align 4
  %98 = call i32 @array_bitmap_copy(i32* %95, i32 0, i32* %96, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %94, %11
  %100 = load i32, i32* %30, align 4
  store i32 %100, i32* %31, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @mda_get_prod(i32 %101, i32* %102, i32* %61)
  %104 = load i32, i32* %15, align 4
  %105 = load i32*, i32** %18, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = call i32 @mda_get_range(i32 %104, i32* %64, i32* %105, i32* %106)
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @mda_get_offset_values(i32 %108, i32* %67, i32* %61, i32* %64)
  store i32 0, i32* %38, align 4
  br label %110

110:                                              ; preds = %118, %99
  %111 = load i32, i32* %38, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i32, i32* %38, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %70, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %38, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %38, align 4
  br label %110

121:                                              ; preds = %110
  store i32 0, i32* %32, align 4
  %122 = load i32, i32* %15, align 4
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %39, align 4
  br label %124

124:                                              ; preds = %215, %121
  %125 = load i32, i32* %39, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %67, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %176

130:                                              ; preds = %124
  %131 = load i8*, i8** %23, align 8
  %132 = load i32, i32* %39, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %67, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** %24, align 8
  %137 = load i32, i32* %31, align 4
  %138 = load i32*, i32** %27, align 8
  %139 = load i32, i32* %20, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i8, i8* %22, align 1
  %142 = call i32 @array_copy(i8* %131, i32 %135, i8* %136, i32 %137, i32* %138, i32 %139, i32 %140, i8 signext %141)
  store i32 %142, i32* %40, align 4
  %143 = load i32, i32* %40, align 4
  %144 = load i8*, i8** %23, align 8
  %145 = sext i32 %143 to i64
  %146 = getelementptr inbounds i8, i8* %144, i64 %145
  store i8* %146, i8** %23, align 8
  %147 = load i32, i32* %40, align 4
  %148 = load i8*, i8** %24, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %24, align 8
  %151 = load i32*, i32** %26, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %163

153:                                              ; preds = %130
  %154 = load i32*, i32** %26, align 8
  %155 = load i32, i32* %30, align 4
  %156 = load i32*, i32** %27, align 8
  %157 = load i32, i32* %31, align 4
  %158 = load i32, i32* %39, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %67, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @array_bitmap_copy(i32* %154, i32 %155, i32* %156, i32 %157, i32 %161)
  br label %163

163:                                              ; preds = %153, %130
  %164 = load i32, i32* %39, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %67, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %30, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %30, align 4
  %170 = load i32, i32* %39, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %67, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %31, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %31, align 4
  br label %176

176:                                              ; preds = %163, %124
  %177 = load i8*, i8** %23, align 8
  %178 = load i8*, i8** %25, align 8
  %179 = load i32, i32* %32, align 4
  %180 = load i32*, i32** %28, align 8
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %21, align 4
  %183 = load i8, i8* %22, align 1
  %184 = call i32 @array_copy(i8* %177, i32 1, i8* %178, i32 %179, i32* %180, i32 %181, i32 %182, i8 signext %183)
  store i32 %184, i32* %40, align 4
  %185 = load i32*, i32** %26, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %193

187:                                              ; preds = %176
  %188 = load i32*, i32** %26, align 8
  %189 = load i32, i32* %30, align 4
  %190 = load i32*, i32** %28, align 8
  %191 = load i32, i32* %32, align 4
  %192 = call i32 @array_bitmap_copy(i32* %188, i32 %189, i32* %190, i32 %191, i32 1)
  br label %193

193:                                              ; preds = %187, %176
  %194 = load i32, i32* %40, align 4
  %195 = load i8*, i8** %23, align 8
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i8, i8* %195, i64 %196
  store i8* %197, i8** %23, align 8
  %198 = load i32, i32* %40, align 4
  %199 = load i8*, i8** %25, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %25, align 8
  %202 = load i32, i32* %30, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %30, align 4
  %204 = load i32, i32* %32, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %32, align 4
  %206 = load i8*, i8** %24, align 8
  %207 = load i32, i32* %31, align 4
  %208 = load i32*, i32** %27, align 8
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load i8, i8* %22, align 1
  %212 = call i8* @array_seek(i8* %206, i32 %207, i32* %208, i32 1, i32 %209, i32 %210, i8 signext %211)
  store i8* %212, i8** %24, align 8
  %213 = load i32, i32* %31, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %31, align 4
  br label %215

215:                                              ; preds = %193
  %216 = load i32, i32* %15, align 4
  %217 = call i32 @mda_next_tuple(i32 %216, i32* %70, i32* %64)
  store i32 %217, i32* %39, align 4
  %218 = icmp ne i32 %217, -1
  br i1 %218, label %124, label %219

219:                                              ; preds = %215
  %220 = load i8*, i8** %23, align 8
  %221 = load i32, i32* %29, align 4
  %222 = load i32, i32* %31, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load i8*, i8** %24, align 8
  %225 = load i32, i32* %31, align 4
  %226 = load i32*, i32** %27, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* %21, align 4
  %229 = load i8, i8* %22, align 1
  %230 = call i32 @array_copy(i8* %220, i32 %223, i8* %224, i32 %225, i32* %226, i32 %227, i32 %228, i8 signext %229)
  %231 = load i32*, i32** %26, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %242

233:                                              ; preds = %219
  %234 = load i32*, i32** %26, align 8
  %235 = load i32, i32* %30, align 4
  %236 = load i32*, i32** %27, align 8
  %237 = load i32, i32* %31, align 4
  %238 = load i32, i32* %29, align 4
  %239 = load i32, i32* %31, align 4
  %240 = sub nsw i32 %238, %239
  %241 = call i32 @array_bitmap_copy(i32* %234, i32 %235, i32* %236, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %233, %219
  %243 = load i8*, i8** %33, align 8
  call void @llvm.stackrestore(i8* %243)
  ret void
}

declare dso_local i8* @ARR_DATA_PTR(i32*) #1

declare dso_local i32* @ARR_NULLBITMAP(i32*) #1

declare dso_local i32 @ArrayGetNItems(i32, i32) #1

declare dso_local i32 @ARR_NDIM(i32*) #1

declare dso_local i32 @ARR_DIMS(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ArrayGetOffset(i32, i32*, i32*, i32*) #1

declare dso_local i32 @array_copy(i8*, i32, i8*, i32, i32*, i32, i32, i8 signext) #1

declare dso_local i32 @array_bitmap_copy(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @mda_get_prod(i32, i32*, i32*) #1

declare dso_local i32 @mda_get_range(i32, i32*, i32*, i32*) #1

declare dso_local i32 @mda_get_offset_values(i32, i32*, i32*, i32*) #1

declare dso_local i8* @array_seek(i8*, i32, i32*, i32, i32, i32, i8 signext) #1

declare dso_local i32 @mda_next_tuple(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

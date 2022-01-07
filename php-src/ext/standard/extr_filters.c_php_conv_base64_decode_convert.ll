; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_base64_decode_convert.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_base64_decode_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@php_conv_base64_decode_convert.nbitsof_pack = internal constant i32 8, align 4
@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_UNEXPECTED_EOS = common dso_local global i32 0, align 4
@b64_tbl_dec = common dso_local global i32* null, align 8
@PHP_CONV_ERR_INVALID_SEQ = common dso_local global i32 0, align 4
@PHP_CONV_ERR_TOO_BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i64*, i8**, i64*)* @php_conv_base64_decode_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_base64_decode_convert(%struct.TYPE_3__* %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i64*, i64** %9, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25, %5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %39, i32* %6, align 4
  br label %222

40:                                               ; preds = %33
  %41 = load i32, i32* @PHP_CONV_ERR_UNEXPECTED_EOS, align 4
  store i32 %41, i32* %6, align 4
  br label %222

42:                                               ; preds = %25
  %43 = load i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i8**, i8*** %8, align 8
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %17, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %18, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %19, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %20, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %14, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %21, align 4
  store i32 0, i32* %15, align 4
  store i32 8, i32* %16, align 4
  br label %61

61:                                               ; preds = %174, %42
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp uge i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %16, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %16, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %87

74:                                               ; preds = %61
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = lshr i32 %78, %79
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @bmask(i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %74, %65
  %88 = load i32, i32* %16, align 4
  %89 = icmp ugt i32 %88, 0
  br i1 %89, label %90, label %157

90:                                               ; preds = %87
  %91 = load i64, i64* %19, align 8
  %92 = icmp ult i64 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %175

94:                                               ; preds = %90
  %95 = load i32*, i32** @b64_tbl_dec, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %17, align 8
  %98 = load i8, i8* %96, align 1
  %99 = zext i8 %98 to i32
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %22, align 4
  %103 = load i64, i64* %19, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %19, align 8
  %105 = load i32, i32* %22, align 4
  %106 = and i32 %105, 128
  %107 = load i32, i32* %21, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %22, align 4
  %110 = and i32 %109, 192
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %141, label %112

112:                                              ; preds = %94
  %113 = load i32, i32* %21, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @PHP_CONV_ERR_INVALID_SEQ, align 4
  store i32 %116, i32* %12, align 4
  br label %175

117:                                              ; preds = %112
  %118 = load i32, i32* %16, align 4
  %119 = icmp ule i32 6, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = sub i32 %121, 6
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %16, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* %15, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %140

128:                                              ; preds = %117
  %129 = load i32, i32* %16, align 4
  %130 = sub i32 6, %129
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %22, align 4
  %132 = load i32, i32* %14, align 4
  %133 = lshr i32 %131, %132
  %134 = load i32, i32* %15, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @bmask(i32 %137)
  %139 = and i32 %136, %138
  store i32 %139, i32* %13, align 4
  store i32 0, i32* %16, align 4
  br label %140

140:                                              ; preds = %128, %120
  br label %156

141:                                              ; preds = %94
  %142 = load i32, i32* %21, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load i32, i32* %16, align 4
  %146 = icmp eq i32 %145, 8
  br i1 %146, label %150, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %16, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %152

150:                                              ; preds = %147, %144
  %151 = load i32, i32* @PHP_CONV_ERR_INVALID_SEQ, align 4
  store i32 %151, i32* %12, align 4
  br label %175

152:                                              ; preds = %147
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 0
  store i32 1, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %141
  br label %156

156:                                              ; preds = %155, %140
  br label %157

157:                                              ; preds = %156, %87
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %21, align 4
  %160 = or i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %157
  %163 = load i64, i64* %20, align 8
  %164 = icmp ult i64 %163, 1
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %166, i32* %12, align 4
  br label %175

167:                                              ; preds = %162
  %168 = load i32, i32* %15, align 4
  %169 = trunc i32 %168 to i8
  %170 = load i8*, i8** %18, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %18, align 8
  store i8 %169, i8* %170, align 1
  %172 = load i64, i64* %20, align 8
  %173 = add i64 %172, -1
  store i64 %173, i64* %20, align 8
  store i32 0, i32* %15, align 4
  store i32 8, i32* %16, align 4
  br label %174

174:                                              ; preds = %167, %157
  br label %61

175:                                              ; preds = %165, %150, %115, %93
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp uge i32 %176, %177
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %16, align 4
  %183 = sub i32 %181, %182
  %184 = shl i32 %180, %183
  %185 = load i32, i32* %13, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %16, align 4
  %188 = sub i32 8, %187
  %189 = load i32, i32* %14, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %14, align 4
  br label %203

191:                                              ; preds = %175
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %14, align 4
  %195 = sub i32 %193, %194
  %196 = lshr i32 %192, %195
  %197 = load i32, i32* %13, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %13, align 4
  %199 = load i32, i32* %16, align 4
  %200 = sub i32 8, %199
  %201 = load i32, i32* %14, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %191, %179
  %204 = load i32, i32* %13, align 4
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %21, align 4
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 3
  store i32 %210, i32* %212, align 4
  %213 = load i8*, i8** %17, align 8
  %214 = load i8**, i8*** %8, align 8
  store i8* %213, i8** %214, align 8
  %215 = load i64, i64* %19, align 8
  %216 = load i64*, i64** %9, align 8
  store i64 %215, i64* %216, align 8
  %217 = load i8*, i8** %18, align 8
  %218 = load i8**, i8*** %10, align 8
  store i8* %217, i8** %218, align 8
  %219 = load i64, i64* %20, align 8
  %220 = load i64*, i64** %11, align 8
  store i64 %219, i64* %220, align 8
  %221 = load i32, i32* %12, align 4
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %203, %40, %38
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @bmask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

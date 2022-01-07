; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_base64_encode_flush.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_php_conv_base64_encode_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32*, i32* }

@PHP_CONV_ERR_SUCCESS = common dso_local global i32 0, align 4
@PHP_CONV_ERR_TOO_BIG = common dso_local global i32 0, align 4
@b64_tbl_enc = common dso_local global i8** null, align 8
@PHP_CONV_ERR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8**, i64*, i8**, i64*)* @php_conv_base64_encode_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_conv_base64_encode_flush(%struct.TYPE_3__* %0, i8** %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load volatile i32, i32* @PHP_CONV_ERR_SUCCESS, align 4
  store volatile i32 %16, i32* %12, align 4
  %17 = load i8**, i8*** %10, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %13, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %14, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %210 [
    i32 0, label %27
    i32 1, label %28
    i32 2, label %109
  ]

27:                                               ; preds = %5
  br label %212

28:                                               ; preds = %5
  %29 = load i32, i32* %15, align 4
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %31, label %66

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %31
  %37 = load i64, i64* %14, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %43, i32* %6, align 4
  br label %222

44:                                               ; preds = %36
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i8* %45, i32* %48, i64 %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %13, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %14, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %44, %31, %28
  %67 = load i64, i64* %14, align 8
  %68 = icmp ult i64 %67, 4
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store volatile i32 %70, i32* %12, align 4
  br label %213

71:                                               ; preds = %66
  %72 = load i8**, i8*** @b64_tbl_enc, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %72, i64 %79
  %81 = load i8*, i8** %80, align 8
  %82 = ptrtoint i8* %81 to i8
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %13, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i8**, i8*** @b64_tbl_enc, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = shl i32 %90, 4
  %92 = trunc i32 %91 to i8
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %85, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = ptrtoint i8* %95 to i8
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %13, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %13, align 8
  store i8 61, i8* %99, align 1
  %101 = load i8*, i8** %13, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %13, align 8
  store i8 61, i8* %101, align 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  store i32 0, i32* %104, align 4
  %105 = load i64, i64* %14, align 8
  %106 = sub i64 %105, 4
  store i64 %106, i64* %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sub i32 %107, 4
  store i32 %108, i32* %15, align 4
  br label %212

109:                                              ; preds = %5
  %110 = load i32, i32* %15, align 4
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %112, label %147

112:                                              ; preds = %109
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %147

117:                                              ; preds = %112
  %118 = load i64, i64* %14, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ult i64 %118, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store i32 %124, i32* %6, align 4
  br label %222

125:                                              ; preds = %117
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @memcpy(i8* %126, i32* %129, i64 %132)
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 %136
  store i8* %138, i8** %13, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %14, align 8
  %143 = sub i64 %142, %141
  store i64 %143, i64* %14, align 8
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %125, %112, %109
  %148 = load i64, i64* %14, align 8
  %149 = icmp ult i64 %148, 4
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load volatile i32, i32* @PHP_CONV_ERR_TOO_BIG, align 4
  store volatile i32 %151, i32* %12, align 4
  br label %213

152:                                              ; preds = %147
  %153 = load i8**, i8*** @b64_tbl_enc, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = ashr i32 %158, 2
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %153, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = ptrtoint i8* %162 to i8
  %164 = load i8*, i8** %13, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %13, align 8
  store i8 %163, i8* %164, align 1
  %166 = load i8**, i8*** @b64_tbl_enc, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = shl i32 %171, 4
  %173 = trunc i32 %172 to i8
  %174 = zext i8 %173 to i32
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = ashr i32 %179, 4
  %181 = or i32 %174, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %166, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = ptrtoint i8* %184 to i8
  %186 = load i8*, i8** %13, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %13, align 8
  store i8 %185, i8* %186, align 1
  %188 = load i8**, i8*** @b64_tbl_enc, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = shl i32 %193, 2
  %195 = trunc i32 %194 to i8
  %196 = zext i8 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %188, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %198 to i8
  %200 = load i8*, i8** %13, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %13, align 8
  store i8 %199, i8* %200, align 1
  %202 = load i8*, i8** %13, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %13, align 8
  store i8 61, i8* %202, align 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 1
  store i32 0, i32* %205, align 4
  %206 = load i64, i64* %14, align 8
  %207 = sub i64 %206, 4
  store i64 %207, i64* %14, align 8
  %208 = load i32, i32* %15, align 4
  %209 = sub i32 %208, 4
  store i32 %209, i32* %15, align 4
  br label %212

210:                                              ; preds = %5
  %211 = load volatile i32, i32* @PHP_CONV_ERR_UNKNOWN, align 4
  store volatile i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %210, %152, %71, %27
  br label %213

213:                                              ; preds = %212, %150, %69
  %214 = load i8*, i8** %13, align 8
  %215 = load i8**, i8*** %10, align 8
  store i8* %214, i8** %215, align 8
  %216 = load i64, i64* %14, align 8
  %217 = load i64*, i64** %11, align 8
  store i64 %216, i64* %217, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load volatile i32, i32* %12, align 4
  store i32 %221, i32* %6, align 4
  br label %222

222:                                              ; preds = %213, %123, %42
  %223 = load i32, i32* %6, align 4
  ret i32 %223
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

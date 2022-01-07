; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_do_operation.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_cdata_do_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@IS_OBJECT = common dso_local global i64 0, align 8
@zend_ffi_cdata_ce = common dso_local global i64 0, align 8
@ZEND_FFI_TYPE_POINTER = common dso_local global i64 0, align 8
@ZEND_FFI_TYPE_ARRAY = common dso_local global i64 0, align 8
@ZEND_ADD = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@ZEND_SUB = common dso_local global i64 0, align 8
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*, i32*)* @zend_ffi_cdata_do_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_ffi_cdata_do_operation(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  store i64 %0, i64* %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @ZVAL_DEREF(i32* %21)
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @ZVAL_DEREF(i32* %23)
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @Z_TYPE_P(i32* %25)
  %27 = load i64, i64* @IS_OBJECT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %204

29:                                               ; preds = %4
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @Z_OBJCE_P(i32* %30)
  %32 = load i64, i64* @zend_ffi_cdata_ce, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %204

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i64 @Z_OBJ_P(i32* %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %11, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %40)
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %12, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %203

53:                                               ; preds = %47, %34
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @ZEND_ADD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @zval_get_long(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @zend_ffi_add(%struct.TYPE_13__* %61, %struct.TYPE_12__* %62, i32 %63)
  %65 = call i32 @ZVAL_OBJ(i32* %60, i32 %64)
  %66 = load i32*, i32** %7, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = icmp eq i32* %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = call i32 @OBJ_RELEASE(i32* %71)
  br label %73

73:                                               ; preds = %69, %57
  %74 = load i32, i32* @SUCCESS, align 4
  store i32 %74, i32* %5, align 4
  br label %252

75:                                               ; preds = %53
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @ZEND_SUB, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %201

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = call i64 @Z_TYPE_P(i32* %80)
  %82 = load i64, i64* @IS_OBJECT, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %182

84:                                               ; preds = %79
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @Z_OBJCE_P(i32* %85)
  %87 = load i64, i64* @zend_ffi_cdata_ce, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %182

89:                                               ; preds = %84
  %90 = load i32*, i32** %9, align 8
  %91 = call i64 @Z_OBJ_P(i32* %90)
  %92 = inttoptr i64 %91 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %13, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %95)
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %14, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %89
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %181

108:                                              ; preds = %102, %89
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %118)
  store %struct.TYPE_12__* %119, %struct.TYPE_12__** %15, align 8
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = bitcast i8* %122 to i8**
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %17, align 8
  br label %134

125:                                              ; preds = %108
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %129)
  store %struct.TYPE_12__* %130, %struct.TYPE_12__** %15, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %17, align 8
  br label %134

134:                                              ; preds = %125, %114
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %134
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %144)
  store %struct.TYPE_12__* %145, %struct.TYPE_12__** %16, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = bitcast i8* %148 to i8**
  %150 = load i8*, i8** %149, align 8
  store i8* %150, i8** %18, align 8
  br label %160

151:                                              ; preds = %134
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %155)
  store %struct.TYPE_12__* %156, %struct.TYPE_12__** %16, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %18, align 8
  br label %160

160:                                              ; preds = %151, %140
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %163 = call i64 @zend_ffi_is_same_type(%struct.TYPE_12__* %161, %struct.TYPE_12__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load i32*, i32** %7, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load i8*, i8** %18, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  %177 = sdiv i32 %172, %176
  %178 = call i32 @ZVAL_LONG(i32* %166, i32 %177)
  %179 = load i32, i32* @SUCCESS, align 4
  store i32 %179, i32* %5, align 4
  br label %252

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %102
  br label %182

182:                                              ; preds = %181, %84, %79
  %183 = load i32*, i32** %9, align 8
  %184 = call i32 @zval_get_long(i32* %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32*, i32** %7, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %188 = load i32, i32* %10, align 4
  %189 = sub nsw i32 0, %188
  %190 = call i32 @zend_ffi_add(%struct.TYPE_13__* %186, %struct.TYPE_12__* %187, i32 %189)
  %191 = call i32 @ZVAL_OBJ(i32* %185, i32 %190)
  %192 = load i32*, i32** %7, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = icmp eq i32* %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %182
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 2
  %198 = call i32 @OBJ_RELEASE(i32* %197)
  br label %199

199:                                              ; preds = %195, %182
  %200 = load i32, i32* @SUCCESS, align 4
  store i32 %200, i32* %5, align 4
  br label %252

201:                                              ; preds = %75
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202, %47
  br label %250

204:                                              ; preds = %29, %4
  %205 = load i32*, i32** %9, align 8
  %206 = call i64 @Z_TYPE_P(i32* %205)
  %207 = load i64, i64* @IS_OBJECT, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %249

209:                                              ; preds = %204
  %210 = load i32*, i32** %9, align 8
  %211 = call i64 @Z_OBJCE_P(i32* %210)
  %212 = load i64, i64* @zend_ffi_cdata_ce, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %249

214:                                              ; preds = %209
  %215 = load i32*, i32** %9, align 8
  %216 = call i64 @Z_OBJ_P(i32* %215)
  %217 = inttoptr i64 %216 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %217, %struct.TYPE_13__** %19, align 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call %struct.TYPE_12__* @ZEND_FFI_TYPE(i32 %220)
  store %struct.TYPE_12__* %221, %struct.TYPE_12__** %20, align 8
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @ZEND_FFI_TYPE_POINTER, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %214
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @ZEND_FFI_TYPE_ARRAY, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %227, %214
  %234 = load i64, i64* %6, align 8
  %235 = load i64, i64* @ZEND_ADD, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %247

237:                                              ; preds = %233
  %238 = load i32*, i32** %8, align 8
  %239 = call i32 @zval_get_long(i32* %238)
  store i32 %239, i32* %10, align 4
  %240 = load i32*, i32** %7, align 8
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @zend_ffi_add(%struct.TYPE_13__* %241, %struct.TYPE_12__* %242, i32 %243)
  %245 = call i32 @ZVAL_OBJ(i32* %240, i32 %244)
  %246 = load i32, i32* @SUCCESS, align 4
  store i32 %246, i32* %5, align 4
  br label %252

247:                                              ; preds = %233
  br label %248

248:                                              ; preds = %247, %227
  br label %249

249:                                              ; preds = %248, %209, %204
  br label %250

250:                                              ; preds = %249, %203
  %251 = load i32, i32* @FAILURE, align 4
  store i32 %251, i32* %5, align 4
  br label %252

252:                                              ; preds = %250, %237, %199, %165, %73
  %253 = load i32, i32* %5, align 4
  ret i32 %253
}

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @Z_OBJCE_P(i32*) #1

declare dso_local i64 @Z_OBJ_P(i32*) #1

declare dso_local %struct.TYPE_12__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zval_get_long(i32*) #1

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @zend_ffi_add(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @OBJ_RELEASE(i32*) #1

declare dso_local i64 @zend_ffi_is_same_type(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

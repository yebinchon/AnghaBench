; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_expr_cast.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi.c_zend_ffi_expr_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ZEND_FFI_VAL_UINT32 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_UINT64 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_FLOAT = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_INT32 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_INT64 = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_DOUBLE = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_LONG_DOUBLE = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_CHAR = common dso_local global i8* null, align 8
@ZEND_FFI_VAL_ERROR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_ffi_expr_cast(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = call i32 @zend_ffi_finalize_type(%struct.TYPE_8__* %5)
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.TYPE_9__* @ZEND_FFI_TYPE(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %579 [
    i32 137, label %13
    i32 138, label %100
    i32 128, label %187
    i32 131, label %187
    i32 130, label %187
    i32 140, label %187
    i32 132, label %264
    i32 135, label %264
    i32 134, label %264
    i32 129, label %341
    i32 133, label %418
    i32 139, label %502
  ]

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %18 = icmp eq i8* %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %13
  %26 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  br label %99

34:                                               ; preds = %19
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  br label %98

55:                                               ; preds = %40
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %60 = icmp eq i8* %58, %59
  br i1 %60, label %73, label %61

61:                                               ; preds = %55
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %61, %55
  %74 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %97

77:                                               ; preds = %67
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %82 = icmp eq i8* %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  br label %96

92:                                               ; preds = %77
  %93 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %83
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97, %46
  br label %99

99:                                               ; preds = %98, %25
  br label %583

100:                                              ; preds = %2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %111 = icmp eq i8* %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106, %100
  %113 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  br label %186

121:                                              ; preds = %106
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %126 = icmp eq i8* %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %132 = icmp eq i8* %130, %131
  br i1 %132, label %133, label %142

133:                                              ; preds = %127, %121
  %134 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  br label %185

142:                                              ; preds = %127
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %153 = icmp eq i8* %151, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %159 = icmp eq i8* %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154, %148, %142
  %161 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  br label %184

164:                                              ; preds = %154
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %164
  %171 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  br label %183

179:                                              ; preds = %164
  %180 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %170
  br label %184

184:                                              ; preds = %183, %160
  br label %185

185:                                              ; preds = %184, %133
  br label %186

186:                                              ; preds = %185, %112
  br label %583

187:                                              ; preds = %2, %2, %2, %2
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %192 = icmp eq i8* %190, %191
  br i1 %192, label %211, label %193

193:                                              ; preds = %187
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %198 = icmp eq i8* %196, %197
  br i1 %198, label %211, label %199

199:                                              ; preds = %193
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %204 = icmp eq i8* %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %210 = icmp eq i8* %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %205, %199, %193, %187
  %212 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  store i8* %212, i8** %214, align 8
  br label %263

215:                                              ; preds = %205
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %220 = icmp eq i8* %218, %219
  br i1 %220, label %233, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %226 = icmp eq i8* %224, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %221
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %232 = icmp eq i8* %230, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %227, %221, %215
  %234 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  store i8* %234, i8** %236, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  br label %262

242:                                              ; preds = %227
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %247 = icmp eq i8* %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %242
  %249 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  store i8* %249, i8** %251, align 8
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 4
  br label %261

257:                                              ; preds = %242
  %258 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  store i8* %258, i8** %260, align 8
  br label %261

261:                                              ; preds = %257, %248
  br label %262

262:                                              ; preds = %261, %233
  br label %263

263:                                              ; preds = %262, %211
  br label %583

264:                                              ; preds = %2, %2, %2
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %269 = icmp eq i8* %267, %268
  br i1 %269, label %288, label %270

270:                                              ; preds = %264
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %275 = icmp eq i8* %273, %274
  br i1 %275, label %288, label %276

276:                                              ; preds = %270
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %281 = icmp eq i8* %279, %280
  br i1 %281, label %288, label %282

282:                                              ; preds = %276
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %287 = icmp eq i8* %285, %286
  br i1 %287, label %288, label %292

288:                                              ; preds = %282, %276, %270, %264
  %289 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 0
  store i8* %289, i8** %291, align 8
  br label %340

292:                                              ; preds = %282
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  %295 = load i8*, i8** %294, align 8
  %296 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %297 = icmp eq i8* %295, %296
  br i1 %297, label %310, label %298

298:                                              ; preds = %292
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %303 = icmp eq i8* %301, %302
  br i1 %303, label %310, label %304

304:                                              ; preds = %298
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %309 = icmp eq i8* %307, %308
  br i1 %309, label %310, label %319

310:                                              ; preds = %304, %298, %292
  %311 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  store i8* %311, i8** %313, align 8
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 4
  store i32 %316, i32* %318, align 4
  br label %339

319:                                              ; preds = %304
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %324 = icmp eq i8* %322, %323
  br i1 %324, label %325, label %334

325:                                              ; preds = %319
  %326 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  store i8* %326, i8** %328, align 8
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 4
  store i32 %331, i32* %333, align 4
  br label %338

334:                                              ; preds = %319
  %335 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 0
  store i8* %335, i8** %337, align 8
  br label %338

338:                                              ; preds = %334, %325
  br label %339

339:                                              ; preds = %338, %310
  br label %340

340:                                              ; preds = %339, %288
  br label %583

341:                                              ; preds = %2
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %342, i32 0, i32 0
  %344 = load i8*, i8** %343, align 8
  %345 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %346 = icmp eq i8* %344, %345
  br i1 %346, label %365, label %347

347:                                              ; preds = %341
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %352 = icmp eq i8* %350, %351
  br i1 %352, label %365, label %353

353:                                              ; preds = %347
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %358 = icmp eq i8* %356, %357
  br i1 %358, label %365, label %359

359:                                              ; preds = %353
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %364 = icmp eq i8* %362, %363
  br i1 %364, label %365, label %369

365:                                              ; preds = %359, %353, %347, %341
  %366 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 0
  store i8* %366, i8** %368, align 8
  br label %417

369:                                              ; preds = %359
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %370, i32 0, i32 0
  %372 = load i8*, i8** %371, align 8
  %373 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %374 = icmp eq i8* %372, %373
  br i1 %374, label %387, label %375

375:                                              ; preds = %369
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %380 = icmp eq i8* %378, %379
  br i1 %380, label %387, label %381

381:                                              ; preds = %375
  %382 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %386 = icmp eq i8* %384, %385
  br i1 %386, label %387, label %396

387:                                              ; preds = %381, %375, %369
  %388 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 0
  store i8* %388, i8** %390, align 8
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %394, i32 0, i32 2
  store i32 %393, i32* %395, align 4
  br label %416

396:                                              ; preds = %381
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %398 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %397, i32 0, i32 0
  %399 = load i8*, i8** %398, align 8
  %400 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %401 = icmp eq i8* %399, %400
  br i1 %401, label %402, label %411

402:                                              ; preds = %396
  %403 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %404 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %405 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %404, i32 0, i32 0
  store i8* %403, i8** %405, align 8
  %406 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %410 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %409, i32 0, i32 2
  store i32 %408, i32* %410, align 4
  br label %415

411:                                              ; preds = %396
  %412 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  store i8* %412, i8** %414, align 8
  br label %415

415:                                              ; preds = %411, %402
  br label %416

416:                                              ; preds = %415, %387
  br label %417

417:                                              ; preds = %416, %365
  br label %583

418:                                              ; preds = %2
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 0
  %421 = load i8*, i8** %420, align 8
  %422 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %423 = icmp eq i8* %421, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %418
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 0
  %427 = load i8*, i8** %426, align 8
  %428 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %429 = icmp eq i8* %427, %428
  br i1 %429, label %430, label %439

430:                                              ; preds = %424, %418
  %431 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %432 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %432, i32 0, i32 0
  store i8* %431, i8** %433, align 8
  %434 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 1
  store i32 %436, i32* %438, align 8
  br label %501

439:                                              ; preds = %424
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 0
  %442 = load i8*, i8** %441, align 8
  %443 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %444 = icmp eq i8* %442, %443
  br i1 %444, label %451, label %445

445:                                              ; preds = %439
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8
  %449 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %450 = icmp eq i8* %448, %449
  br i1 %450, label %451, label %460

451:                                              ; preds = %445, %439
  %452 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %453 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 0
  store i8* %452, i8** %454, align 8
  %455 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 4
  %458 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %458, i32 0, i32 1
  store i32 %457, i32* %459, align 8
  br label %500

460:                                              ; preds = %445
  %461 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = load i8*, i8** %462, align 8
  %464 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %465 = icmp eq i8* %463, %464
  br i1 %465, label %478, label %466

466:                                              ; preds = %460
  %467 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 0
  %469 = load i8*, i8** %468, align 8
  %470 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %471 = icmp eq i8* %469, %470
  br i1 %471, label %478, label %472

472:                                              ; preds = %466
  %473 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %473, i32 0, i32 0
  %475 = load i8*, i8** %474, align 8
  %476 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %477 = icmp eq i8* %475, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %472, %466, %460
  %479 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %480 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i32 0, i32 0
  store i8* %479, i8** %481, align 8
  %482 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 3
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 1
  store i32 %484, i32* %486, align 8
  br label %499

487:                                              ; preds = %472
  %488 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %488, i32 0, i32 0
  %490 = load i8*, i8** %489, align 8
  %491 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %492 = icmp eq i8* %490, %491
  br i1 %492, label %493, label %494

493:                                              ; preds = %487
  br label %498

494:                                              ; preds = %487
  %495 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %496 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %497 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %496, i32 0, i32 0
  store i8* %495, i8** %497, align 8
  br label %498

498:                                              ; preds = %494, %493
  br label %499

499:                                              ; preds = %498, %478
  br label %500

500:                                              ; preds = %499, %451
  br label %501

501:                                              ; preds = %500, %430
  br label %583

502:                                              ; preds = %2
  %503 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 0
  %505 = load i8*, i8** %504, align 8
  %506 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %507 = icmp eq i8* %505, %506
  br i1 %507, label %526, label %508

508:                                              ; preds = %502
  %509 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 0
  %511 = load i8*, i8** %510, align 8
  %512 = load i8*, i8** @ZEND_FFI_VAL_UINT64, align 8
  %513 = icmp eq i8* %511, %512
  br i1 %513, label %526, label %514

514:                                              ; preds = %508
  %515 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %515, i32 0, i32 0
  %517 = load i8*, i8** %516, align 8
  %518 = load i8*, i8** @ZEND_FFI_VAL_INT32, align 8
  %519 = icmp eq i8* %517, %518
  br i1 %519, label %526, label %520

520:                                              ; preds = %514
  %521 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %521, i32 0, i32 0
  %523 = load i8*, i8** %522, align 8
  %524 = load i8*, i8** @ZEND_FFI_VAL_INT64, align 8
  %525 = icmp eq i8* %523, %524
  br i1 %525, label %526, label %530

526:                                              ; preds = %520, %514, %508, %502
  %527 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %528 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %529 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %528, i32 0, i32 0
  store i8* %527, i8** %529, align 8
  br label %578

530:                                              ; preds = %520
  %531 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %532 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %531, i32 0, i32 0
  %533 = load i8*, i8** %532, align 8
  %534 = load i8*, i8** @ZEND_FFI_VAL_FLOAT, align 8
  %535 = icmp eq i8* %533, %534
  br i1 %535, label %548, label %536

536:                                              ; preds = %530
  %537 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %537, i32 0, i32 0
  %539 = load i8*, i8** %538, align 8
  %540 = load i8*, i8** @ZEND_FFI_VAL_DOUBLE, align 8
  %541 = icmp eq i8* %539, %540
  br i1 %541, label %548, label %542

542:                                              ; preds = %536
  %543 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = load i8*, i8** @ZEND_FFI_VAL_LONG_DOUBLE, align 8
  %547 = icmp eq i8* %545, %546
  br i1 %547, label %548, label %557

548:                                              ; preds = %542, %536, %530
  %549 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %550 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %551 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %550, i32 0, i32 0
  store i8* %549, i8** %551, align 8
  %552 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %553 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 8
  %555 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %556 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %555, i32 0, i32 2
  store i32 %554, i32* %556, align 4
  br label %577

557:                                              ; preds = %542
  %558 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 0
  %560 = load i8*, i8** %559, align 8
  %561 = load i8*, i8** @ZEND_FFI_VAL_CHAR, align 8
  %562 = icmp eq i8* %560, %561
  br i1 %562, label %563, label %572

563:                                              ; preds = %557
  %564 = load i8*, i8** @ZEND_FFI_VAL_UINT32, align 8
  %565 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %566 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %565, i32 0, i32 0
  store i8* %564, i8** %566, align 8
  %567 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 8
  %570 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %571 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %570, i32 0, i32 2
  store i32 %569, i32* %571, align 4
  br label %576

572:                                              ; preds = %557
  %573 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %574 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i32 0, i32 0
  store i8* %573, i8** %575, align 8
  br label %576

576:                                              ; preds = %572, %563
  br label %577

577:                                              ; preds = %576, %548
  br label %578

578:                                              ; preds = %577, %526
  br label %583

579:                                              ; preds = %2
  %580 = load i8*, i8** @ZEND_FFI_VAL_ERROR, align 8
  %581 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %582 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %581, i32 0, i32 0
  store i8* %580, i8** %582, align 8
  br label %583

583:                                              ; preds = %579, %578, %501, %417, %340, %263, %186, %99
  %584 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %585 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 4
  %587 = call i32 @zend_ffi_type_dtor(i32 %586)
  ret void
}

declare dso_local i32 @zend_ffi_finalize_type(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @ZEND_FFI_TYPE(i32) #1

declare dso_local i32 @zend_ffi_type_dtor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

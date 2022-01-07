; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_mrb_pack_pack.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_mrb_pack_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpl = type { i32 }

@PACK_DIR_INVALID = common dso_local global i32 0, align 4
@PACK_DIR_NUL = common dso_local global i32 0, align 4
@PACK_FLAG_WIDTH = common dso_local global i32 0, align 4
@PACK_TYPE_INTEGER = common dso_local global i32 0, align 4
@PACK_TYPE_FLOAT = common dso_local global i32 0, align 4
@PACK_TYPE_STRING = common dso_local global i32 0, align 4
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't convert %T into String\00", align 1
@E_RANGE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"negative (or overflowed) template size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_pack_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_pack_pack(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmpl, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @prepare_tmpl(i32* %16, %struct.tmpl* %8)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @mrb_str_new(i32* %18, i32* null, i32 128)
  store i32 %19, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %229, %34, %29, %2
  %21 = call i64 @has_tmpl(%struct.tmpl* %8)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %230

23:                                               ; preds = %20
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @read_tmpl(i32* %24, %struct.tmpl* %8, i32* %11, i32* %14, i32* %13, i32* %9, i32* %10)
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @PACK_DIR_INVALID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %20

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @PACK_DIR_NUL, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 (...) @mrb_nil_value()
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @pack_x(i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %12, align 4
  br label %20

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %219, %47
  %49 = load i64, i64* %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @RARRAY_LEN(i32 %50)
  %52 = icmp slt i64 %49, %51
  br i1 %52, label %53, label %222

53:                                               ; preds = %48
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @PACK_FLAG_WIDTH, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %222

62:                                               ; preds = %56, %53
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @mrb_ary_ref(i32* %63, i32 %64, i64 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @PACK_TYPE_INTEGER, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @mrb_to_int(i32* %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %106

74:                                               ; preds = %62
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @PACK_TYPE_FLOAT, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @mrb_float_p(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @mrb_to_flo(i32* %83, i32 %84)
  store i32 %85, i32* %15, align 4
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @mrb_float_value(i32* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %82, %78
  br label %105

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @PACK_TYPE_STRING, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @mrb_string_p(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* @E_TYPE_ERROR, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @mrb_raisef(i32* %99, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %94
  br label %104

104:                                              ; preds = %103, %90
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %70
  %107 = load i32, i32* %11, align 4
  switch i32 %107, label %202 [
    i32 136, label %108
    i32 130, label %117
    i32 132, label %126
    i32 131, label %135
    i32 137, label %144
    i32 133, label %154
    i32 129, label %164
    i32 135, label %174
    i32 134, label %183
    i32 128, label %192
  ]

108:                                              ; preds = %106
  %109 = load i32*, i32** %3, align 8
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @pack_c(i32* %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %12, align 4
  br label %203

117:                                              ; preds = %106
  %118 = load i32*, i32** %3, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @pack_s(i32* %118, i32 %119, i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %203

126:                                              ; preds = %106
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @pack_l(i32* %127, i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %203

135:                                              ; preds = %106
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @pack_q(i32* %136, i32 %137, i32 %138, i32 %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, %141
  store i32 %143, i32* %12, align 4
  br label %203

144:                                              ; preds = %106
  %145 = load i32*, i32** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @pack_m(i32* %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %12, align 4
  br label %203

154:                                              ; preds = %106
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @pack_h(i32* %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %203

164:                                              ; preds = %106
  %165 = load i32*, i32** %3, align 8
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @pack_a(i32* %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %12, align 4
  br label %203

174:                                              ; preds = %106
  %175 = load i32*, i32** %3, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* %6, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %10, align 4
  %180 = call i32 @pack_double(i32* %175, i32 %176, i32 %177, i32 %178, i32 %179)
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %12, align 4
  br label %203

183:                                              ; preds = %106
  %184 = load i32*, i32** %3, align 8
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @pack_float(i32* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %12, align 4
  br label %203

192:                                              ; preds = %106
  %193 = load i32*, i32** %3, align 8
  %194 = load i32, i32* %5, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %10, align 4
  %199 = call i32 @pack_utf8(i32* %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %12, align 4
  br label %203

202:                                              ; preds = %106
  br label %203

203:                                              ; preds = %202, %192, %183, %174, %164, %154, %144, %135, %126, %117, %108
  %204 = load i32, i32* %11, align 4
  %205 = icmp eq i32 %204, 129
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load i32, i32* %11, align 4
  %208 = icmp eq i32 %207, 137
  br i1 %208, label %209, label %212

209:                                              ; preds = %206, %203
  %210 = load i64, i64* %7, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %7, align 8
  br label %222

212:                                              ; preds = %206
  %213 = load i32, i32* %9, align 4
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %215, %212
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %7, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %7, align 8
  br label %48

222:                                              ; preds = %209, %61, %48
  %223 = load i32, i32* %12, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i32*, i32** %3, align 8
  %227 = load i32, i32* @E_RANGE_ERROR, align 4
  %228 = call i32 @mrb_raise(i32* %226, i32 %227, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %229

229:                                              ; preds = %225, %222
  br label %20

230:                                              ; preds = %20
  %231 = load i32*, i32** %3, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @mrb_str_resize(i32* %231, i32 %232, i32 %233)
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i32 @prepare_tmpl(i32*, %struct.tmpl*) #1

declare dso_local i32 @mrb_str_new(i32*, i32*, i32) #1

declare dso_local i64 @has_tmpl(%struct.tmpl*) #1

declare dso_local i32 @read_tmpl(i32*, %struct.tmpl*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @pack_x(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_ary_ref(i32*, i32, i64) #1

declare dso_local i32 @mrb_to_int(i32*, i32) #1

declare dso_local i32 @mrb_float_p(i32) #1

declare dso_local i32 @mrb_to_flo(i32*, i32) #1

declare dso_local i32 @mrb_float_value(i32*, i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_raisef(i32*, i32, i8*, i32) #1

declare dso_local i32 @pack_c(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_s(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_l(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_q(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_m(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_h(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_a(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pack_double(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_float(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pack_utf8(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_resize(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

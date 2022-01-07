; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_parsenum.c_mp_parse_num_integer.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_parsenum.c_mp_parse_num_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"int() arg 2 must be >= 2 and <= 36\00", align 1
@MICROPY_ERROR_REPORTING = common dso_local global i64 0, align 8
@MICROPY_ERROR_REPORTING_TERSE = common dso_local global i64 0, align 8
@mp_type_ValueError = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"invalid syntax for integer\00", align 1
@MICROPY_ERROR_REPORTING_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"invalid syntax for integer with base %d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"invalid syntax for integer with base %d: \00", align 1
@mp_type_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_parse_num_integer(i8* noalias %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %23 = load i8*, i8** %6, align 8
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 36
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %29
  %36 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %50, %37
  %39 = load i8*, i8** %10, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = call i64 @unichar_isspace(i8 signext %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %42, %38
  %48 = phi i1 [ false, %38 ], [ %46, %42 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %10, align 8
  br label %38

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = icmp ult i8* %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %53
  %58 = load i8*, i8** %10, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 43
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %10, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  store i32 1, i32* %12, align 4
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %62
  br label %75

75:                                               ; preds = %74, %53
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = call i32 @mp_parse_num_base(i8* %76, i32 %82, i32* %8)
  %84 = load i8*, i8** %10, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %87 = load i8*, i8** %10, align 8
  store i8* %87, i8** %15, align 8
  br label %88

88:                                               ; preds = %158, %75
  %89 = load i8*, i8** %10, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp ult i8* %89, %90
  br i1 %91, label %92, label %161

92:                                               ; preds = %88
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %16, align 1
  %95 = load i8, i8* %16, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sle i32 48, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i8, i8* %16, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp sle i32 %100, 57
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8, i8* %16, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %16, align 1
  br label %132

107:                                              ; preds = %98, %92
  %108 = load i8, i8* %16, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 95
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %158

112:                                              ; preds = %107
  %113 = load i8, i8* %16, align 1
  %114 = sext i8 %113 to i32
  %115 = or i32 %114, 32
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %16, align 1
  %117 = load i8, i8* %16, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sle i32 97, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i8, i8* %16, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sle i32 %122, 122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i8, i8* %16, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 87
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %16, align 1
  br label %130

129:                                              ; preds = %120, %112
  br label %161

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131, %102
  %133 = load i8, i8* %16, align 1
  %134 = sext i8 %133 to i32
  %135 = load i32, i32* %8, align 4
  %136 = trunc i32 %135 to i8
  %137 = sext i8 %136 to i32
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  br label %161

140:                                              ; preds = %132
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i64 @mp_small_int_mul_overflow(i32 %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %198

146:                                              ; preds = %140
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %8, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i8, i8* %16, align 1
  %151 = sext i8 %150 to i32
  %152 = add nsw i32 %149, %151
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @MP_SMALL_INT_FITS(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %146
  br label %198

157:                                              ; preds = %146
  br label %158

158:                                              ; preds = %157, %111
  %159 = load i8*, i8** %10, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %10, align 8
  br label %88

161:                                              ; preds = %139, %129, %88
  %162 = load i32, i32* %12, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* %14, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @MP_OBJ_NEW_SMALL_INT(i32 %168)
  store i32 %169, i32* %13, align 4
  br label %170

170:                                              ; preds = %198, %167
  %171 = load i8*, i8** %10, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = icmp eq i8* %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  br label %210

175:                                              ; preds = %170
  br label %176

176:                                              ; preds = %188, %175
  %177 = load i8*, i8** %10, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = icmp ult i8* %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i8*, i8** %10, align 8
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @unichar_isspace(i8 signext %182)
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %180, %176
  %186 = phi i1 [ false, %176 ], [ %184, %180 ]
  br i1 %186, label %187, label %191

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187
  %189 = load i8*, i8** %10, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %10, align 8
  br label %176

191:                                              ; preds = %185
  %192 = load i8*, i8** %10, align 8
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ne i8* %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %210

196:                                              ; preds = %191
  %197 = load i32, i32* %13, align 4
  store i32 %197, i32* %5, align 4
  br label %247

198:                                              ; preds = %156, %145
  %199 = load i8*, i8** %15, align 8
  store i8* %199, i8** %17, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = load i8*, i8** %15, align 8
  %202 = ptrtoint i8* %200 to i64
  %203 = ptrtoint i8* %201 to i64
  %204 = sub i64 %202, %203
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @mp_obj_new_int_from_str_len(i8** %17, i32 %205, i32 %206, i32 %207)
  store i32 %208, i32* %13, align 4
  %209 = load i8*, i8** %17, align 8
  store i8* %209, i8** %10, align 8
  br label %170

210:                                              ; preds = %195, %174
  %211 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %212 = load i64, i64* @MICROPY_ERROR_REPORTING_TERSE, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %210
  %215 = call i32 @mp_obj_new_exception_msg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %215, i32* %18, align 4
  %216 = load i32, i32* %18, align 4
  %217 = load i32*, i32** %9, align 8
  %218 = call i32 @raise_exc(i32 %216, i32* %217)
  br label %247

219:                                              ; preds = %210
  %220 = load i64, i64* @MICROPY_ERROR_REPORTING, align 8
  %221 = load i64, i64* @MICROPY_ERROR_REPORTING_NORMAL, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @mp_obj_new_exception_msg_varg(i32* @mp_type_ValueError, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %224)
  store i32 %225, i32* %19, align 4
  %226 = load i32, i32* %19, align 4
  %227 = load i32*, i32** %9, align 8
  %228 = call i32 @raise_exc(i32 %226, i32* %227)
  br label %246

229:                                              ; preds = %219
  %230 = call i32 @vstr_init_print(i32* %20, i32 50, i32* %21)
  %231 = load i32, i32* %8, align 4
  %232 = call i32 @mp_printf(i32* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %231)
  %233 = load i8*, i8** %15, align 8
  %234 = load i8*, i8** %11, align 8
  %235 = load i8*, i8** %15, align 8
  %236 = ptrtoint i8* %234 to i64
  %237 = ptrtoint i8* %235 to i64
  %238 = sub i64 %236, %237
  %239 = trunc i64 %238 to i32
  %240 = call i32 @mp_str_print_quoted(i32* %21, i8* %233, i32 %239, i32 1)
  %241 = call i32 @mp_obj_new_str_from_vstr(i32* @mp_type_str, i32* %20)
  %242 = call i32 @mp_obj_new_exception_arg1(i32* @mp_type_ValueError, i32 %241)
  store i32 %242, i32* %22, align 4
  %243 = load i32, i32* %22, align 4
  %244 = load i32*, i32** %9, align 8
  %245 = call i32 @raise_exc(i32 %243, i32* %244)
  br label %246

246:                                              ; preds = %229, %223
  br label %247

247:                                              ; preds = %196, %246, %214
  %248 = load i32, i32* %5, align 4
  ret i32 %248
}

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i64 @unichar_isspace(i8 signext) #1

declare dso_local i32 @mp_parse_num_base(i8*, i32, i32*) #1

declare dso_local i64 @mp_small_int_mul_overflow(i32, i32) #1

declare dso_local i32 @MP_SMALL_INT_FITS(i32) #1

declare dso_local i32 @MP_OBJ_NEW_SMALL_INT(i32) #1

declare dso_local i32 @mp_obj_new_int_from_str_len(i8**, i32, i32, i32) #1

declare dso_local i32 @mp_obj_new_exception_msg(i32*, i8*) #1

declare dso_local i32 @raise_exc(i32, i32*) #1

declare dso_local i32 @mp_obj_new_exception_msg_varg(i32*, i8*, i32) #1

declare dso_local i32 @vstr_init_print(i32*, i32, i32*) #1

declare dso_local i32 @mp_printf(i32*, i8*, i32) #1

declare dso_local i32 @mp_str_print_quoted(i32*, i8*, i32, i32) #1

declare dso_local i32 @mp_obj_new_exception_arg1(i32*, i32) #1

declare dso_local i32 @mp_obj_new_str_from_vstr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

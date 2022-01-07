; ModuleID = '/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_split.c'
source_filename = "/home/carl/AnghaBench/micropython/py/extr_objstr.c_mp_obj_str_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_const_none = common dso_local global i64 0, align 8
@s = common dso_local global i32* null, align 8
@len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"empty separator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mp_obj_str_split(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  %14 = load i64*, i64** %4, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32* @mp_obj_get_type(i64 %16)
  store i32* %17, i32** %5, align 8
  store i64 -1, i64* %6, align 8
  %18 = load i64, i64* @mp_const_none, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp ugt i64 %19, 1
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load i64*, i64** %4, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp ugt i64 %25, 2
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @mp_obj_get_int(i64 %30)
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %27, %21
  br label %33

33:                                               ; preds = %32, %2
  %34 = call i64 @mp_obj_new_list(i32 0, i32* null)
  store i64 %34, i64* %8, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32*, i32** @s, align 8
  %39 = load i32, i32* @len, align 4
  %40 = call i32 @GET_STR_DATA_LEN(i64 %37, i32* %38, i32 %39)
  %41 = load i32*, i32** @s, align 8
  %42 = load i32, i32* @len, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %9, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @mp_const_none, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %147

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %60, %48
  %50 = load i32*, i32** @s, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ult i32* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** @s, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @unichar_isspace(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i32*, i32** @s, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** @s, align 8
  br label %49

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %128, %63
  %65 = load i32*, i32** @s, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = icmp ult i32* %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i1 [ false, %64 ], [ %70, %68 ]
  br i1 %72, label %73, label %129

73:                                               ; preds = %71
  %74 = load i32*, i32** @s, align 8
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %87, %73
  %76 = load i32*, i32** @s, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ult i32* %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32*, i32** @s, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @unichar_isspace(i32 %81)
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %79, %75
  %86 = phi i1 [ false, %75 ], [ %84, %79 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i32*, i32** @s, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** @s, align 8
  br label %75

90:                                               ; preds = %85
  %91 = load i64, i64* %8, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** @s, align 8
  %95 = load i32*, i32** %10, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i32 @mp_obj_new_str_of_type(i32* %92, i32* %93, i32 %100)
  %102 = call i32 @mp_obj_list_append(i64 %91, i32 %101)
  %103 = load i32*, i32** @s, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = icmp uge i32* %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  br label %129

107:                                              ; preds = %90
  br label %108

108:                                              ; preds = %119, %107
  %109 = load i32*, i32** @s, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = icmp ult i32* %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32*, i32** @s, align 8
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @unichar_isspace(i32 %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %112, %108
  %118 = phi i1 [ false, %108 ], [ %116, %112 ]
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = load i32*, i32** @s, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** @s, align 8
  br label %108

122:                                              ; preds = %117
  %123 = load i64, i64* %6, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i64, i64* %6, align 8
  %127 = add nsw i64 %126, -1
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %125, %122
  br label %64

129:                                              ; preds = %106, %71
  %130 = load i32*, i32** @s, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = icmp ult i32* %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i64, i64* %8, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i32*, i32** @s, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i32*, i32** @s, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  %143 = trunc i64 %142 to i32
  %144 = call i32 @mp_obj_new_str_of_type(i32* %135, i32* %136, i32 %143)
  %145 = call i32 @mp_obj_list_append(i64 %134, i32 %144)
  br label %146

146:                                              ; preds = %133, %129
  br label %215

147:                                              ; preds = %33
  %148 = load i64, i64* %7, align 8
  %149 = call i32* @mp_obj_get_type(i64 %148)
  %150 = load i32*, i32** %5, align 8
  %151 = icmp ne i32* %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @bad_implicit_conversion(i64 %153)
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i64, i64* %7, align 8
  %157 = call i8* @mp_obj_str_get_data(i64 %156, i64* %11)
  store i8* %157, i8** %12, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = call i32 @mp_raise_ValueError(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %155
  br label %163

163:                                              ; preds = %213, %162
  %164 = load i32*, i32** @s, align 8
  store i32* %164, i32** %13, align 8
  br label %165

165:                                              ; preds = %184, %163
  %166 = load i64, i64* %6, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = load i32*, i32** @s, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32*, i32** %9, align 8
  %173 = icmp ugt i32* %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %165
  %175 = load i32*, i32** %9, align 8
  store i32* %175, i32** @s, align 8
  br label %187

176:                                              ; preds = %168
  %177 = load i32*, i32** @s, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = load i64, i64* %11, align 8
  %180 = call i64 @memcmp(i32* %177, i8* %178, i64 %179)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %187

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183
  %185 = load i32*, i32** @s, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** @s, align 8
  br label %165

187:                                              ; preds = %182, %174
  %188 = load i64, i64* %8, align 8
  %189 = load i32*, i32** %5, align 8
  %190 = load i32*, i32** %13, align 8
  %191 = load i32*, i32** @s, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = ptrtoint i32* %191 to i64
  %194 = ptrtoint i32* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 4
  %197 = trunc i64 %196 to i32
  %198 = call i32 @mp_obj_new_str_of_type(i32* %189, i32* %190, i32 %197)
  %199 = call i32 @mp_obj_list_append(i64 %188, i32 %198)
  %200 = load i32*, i32** @s, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = icmp uge i32* %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %187
  br label %214

204:                                              ; preds = %187
  %205 = load i64, i64* %11, align 8
  %206 = load i32*, i32** @s, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 %205
  store i32* %207, i32** @s, align 8
  %208 = load i64, i64* %6, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load i64, i64* %6, align 8
  %212 = add nsw i64 %211, -1
  store i64 %212, i64* %6, align 8
  br label %213

213:                                              ; preds = %210, %204
  br label %163

214:                                              ; preds = %203
  br label %215

215:                                              ; preds = %214, %146
  %216 = load i64, i64* %8, align 8
  ret i64 %216
}

declare dso_local i32* @mp_obj_get_type(i64) #1

declare dso_local i64 @mp_obj_get_int(i64) #1

declare dso_local i64 @mp_obj_new_list(i32, i32*) #1

declare dso_local i32 @GET_STR_DATA_LEN(i64, i32*, i32) #1

declare dso_local i64 @unichar_isspace(i32) #1

declare dso_local i32 @mp_obj_list_append(i64, i32) #1

declare dso_local i32 @mp_obj_new_str_of_type(i32*, i32*, i32) #1

declare dso_local i32 @bad_implicit_conversion(i64) #1

declare dso_local i8* @mp_obj_str_get_data(i64, i64*) #1

declare dso_local i32 @mp_raise_ValueError(i8*) #1

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

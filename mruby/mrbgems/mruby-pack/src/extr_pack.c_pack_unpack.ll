; ModuleID = '/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_unpack.c'
source_filename = "/home/carl/AnghaBench/mruby/mrbgems/mruby-pack/src/extr_pack.c_pack_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpl = type { i32 }

@PACK_DIR_INVALID = common dso_local global i32 0, align 4
@PACK_DIR_NUL = common dso_local global i32 0, align 4
@PACK_FLAG_COUNT2 = common dso_local global i32 0, align 4
@E_RUNTIME_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mruby-pack's bug\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @pack_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_unpack(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tmpl, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @prepare_tmpl(i32* %18, %struct.tmpl* %9)
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @RSTRING_LEN(i32 %20)
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %16, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @mrb_ary_new(i32* %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %224, %102, %39, %34, %3
  %26 = call i64 @has_tmpl(%struct.tmpl* %9)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %225

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @read_tmpl(i32* %29, %struct.tmpl* %9, i32* %12, i32* %14, i32* %13, i32* %10, i32* %11)
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @PACK_DIR_INVALID, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %25

35:                                               ; preds = %28
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @PACK_DIR_NUL, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %15, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @unpack_x(i32* %40, i8* %41, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %15, align 4
  br label %25

53:                                               ; preds = %35
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @PACK_FLAG_COUNT2, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @RSTRING_PTR(i32 %60)
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %17, align 8
  %66 = load i32, i32* %12, align 4
  switch i32 %66, label %102 [
    i32 133, label %67
    i32 129, label %79
    i32 137, label %91
  ]

67:                                               ; preds = %59
  %68 = load i32*, i32** %5, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @unpack_h(i32* %68, i8* %69, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %15, align 4
  br label %102

79:                                               ; preds = %59
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @unpack_a(i32* %80, i8* %81, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  br label %102

91:                                               ; preds = %59
  %92 = load i32*, i32** %5, align 8
  %93 = load i8*, i8** %17, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = sub nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @unpack_m(i32* %92, i8* %93, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %59, %91, %79, %67
  br label %25

103:                                              ; preds = %54
  br label %104

104:                                              ; preds = %219, %103
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %220

107:                                              ; preds = %104
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %118, %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  %117 = icmp sgt i32 %115, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (...) @mrb_nil_value()
  %122 = call i32 @mrb_ary_push(i32* %119, i32 %120, i32 %121)
  br label %114

123:                                              ; preds = %114
  br label %220

124:                                              ; preds = %107
  %125 = load i32, i32* %6, align 4
  %126 = call i64 @RSTRING_PTR(i32 %125)
  %127 = inttoptr i64 %126 to i8*
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8* %130, i8** %17, align 8
  %131 = load i32, i32* %12, align 4
  switch i32 %131, label %209 [
    i32 136, label %132
    i32 130, label %143
    i32 132, label %154
    i32 131, label %165
    i32 134, label %176
    i32 135, label %187
    i32 128, label %198
  ]

132:                                              ; preds = %124
  %133 = load i32*, i32** %5, align 8
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @unpack_c(i32* %133, i8* %134, i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %15, align 4
  br label %213

143:                                              ; preds = %124
  %144 = load i32*, i32** %5, align 8
  %145 = load i8*, i8** %17, align 8
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %15, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @unpack_s(i32* %144, i8* %145, i32 %148, i32 %149, i32 %150)
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %15, align 4
  br label %213

154:                                              ; preds = %124
  %155 = load i32*, i32** %5, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = load i32, i32* %16, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @unpack_l(i32* %155, i8* %156, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = add nsw i32 %163, %162
  store i32 %164, i32* %15, align 4
  br label %213

165:                                              ; preds = %124
  %166 = load i32*, i32** %5, align 8
  %167 = load i8*, i8** %17, align 8
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %15, align 4
  %170 = sub nsw i32 %168, %169
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 @unpack_q(i32* %166, i8* %167, i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %15, align 4
  br label %213

176:                                              ; preds = %124
  %177 = load i32*, i32** %5, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %15, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %11, align 4
  %184 = call i32 @unpack_float(i32* %177, i8* %178, i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %15, align 4
  br label %213

187:                                              ; preds = %124
  %188 = load i32*, i32** %5, align 8
  %189 = load i8*, i8** %17, align 8
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %15, align 4
  %192 = sub nsw i32 %190, %191
  %193 = load i32, i32* %8, align 4
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @unpack_double(i32* %188, i8* %189, i32 %192, i32 %193, i32 %194)
  %196 = load i32, i32* %15, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %15, align 4
  br label %213

198:                                              ; preds = %124
  %199 = load i32*, i32** %5, align 8
  %200 = load i8*, i8** %17, align 8
  %201 = load i32, i32* %16, align 4
  %202 = load i32, i32* %15, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %11, align 4
  %206 = call i32 @unpack_utf8(i32* %199, i8* %200, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %15, align 4
  br label %213

209:                                              ; preds = %124
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* @E_RUNTIME_ERROR, align 4
  %212 = call i32 @mrb_raise(i32* %210, i32 %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %213

213:                                              ; preds = %209, %198, %187, %176, %165, %154, %143, %132
  %214 = load i32, i32* %10, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, -1
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %216, %213
  br label %104

220:                                              ; preds = %123, %104
  %221 = load i32, i32* %7, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  br label %225

224:                                              ; preds = %220
  br label %25

225:                                              ; preds = %223, %25
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %239

228:                                              ; preds = %225
  %229 = load i32, i32* %8, align 4
  %230 = call i64 @RARRAY_LEN(i32 %229)
  %231 = icmp sgt i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %228
  %233 = load i32, i32* %8, align 4
  %234 = call i32* @RARRAY_PTR(i32 %233)
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %4, align 4
  br label %241

237:                                              ; preds = %228
  %238 = call i32 (...) @mrb_nil_value()
  store i32 %238, i32* %4, align 4
  br label %241

239:                                              ; preds = %225
  %240 = load i32, i32* %8, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %237, %232
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local i32 @prepare_tmpl(i32*, %struct.tmpl*) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i64 @has_tmpl(%struct.tmpl*) #1

declare dso_local i32 @read_tmpl(i32*, %struct.tmpl*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @unpack_x(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @RSTRING_PTR(i32) #1

declare dso_local i32 @unpack_h(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @unpack_a(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @unpack_m(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @unpack_c(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_s(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_l(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_q(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_float(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_double(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @unpack_utf8(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i64 @RARRAY_LEN(i32) #1

declare dso_local i32* @RARRAY_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_chomp_bang.c'
source_filename = "/home/carl/AnghaBench/mruby/src/extr_string.c_mrb_str_chomp_bang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RString = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"|S\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @mrb_str_chomp_bang to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_str_chomp_bang(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.RString*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.RString* @mrb_str_ptr(i32 %14)
  store %struct.RString* %15, %struct.RString** %13, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @mrb_get_args(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i64 %17, i64* %12, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.RString*, %struct.RString** %13, align 8
  %20 = call i32 @mrb_str_modify_keep_ascii(i32* %18, %struct.RString* %19)
  %21 = load %struct.RString*, %struct.RString** %13, align 8
  %22 = call i64 @RSTR_LEN(%struct.RString* %21)
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %91

25:                                               ; preds = %2
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 (...) @mrb_nil_value()
  store i32 %29, i32* %3, align 4
  br label %223

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %184, %30
  %32 = load %struct.RString*, %struct.RString** %13, align 8
  %33 = call i8* @RSTR_PTR(%struct.RString* %32)
  %34 = load i64, i64* %11, align 8
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %66

40:                                               ; preds = %31
  %41 = load %struct.RString*, %struct.RString** %13, align 8
  %42 = load %struct.RString*, %struct.RString** %13, align 8
  %43 = call i64 @RSTR_LEN(%struct.RString* %42)
  %44 = sub i64 %43, 1
  %45 = call i32 @RSTR_SET_LEN(%struct.RString* %41, i64 %44)
  %46 = load %struct.RString*, %struct.RString** %13, align 8
  %47 = call i64 @RSTR_LEN(%struct.RString* %46)
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load %struct.RString*, %struct.RString** %13, align 8
  %51 = call i8* @RSTR_PTR(%struct.RString* %50)
  %52 = load %struct.RString*, %struct.RString** %13, align 8
  %53 = call i64 @RSTR_LEN(%struct.RString* %52)
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 13
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.RString*, %struct.RString** %13, align 8
  %61 = load %struct.RString*, %struct.RString** %13, align 8
  %62 = call i64 @RSTR_LEN(%struct.RString* %61)
  %63 = sub i64 %62, 1
  %64 = call i32 @RSTR_SET_LEN(%struct.RString* %60, i64 %63)
  br label %65

65:                                               ; preds = %59, %49, %40
  br label %84

66:                                               ; preds = %31
  %67 = load %struct.RString*, %struct.RString** %13, align 8
  %68 = call i8* @RSTR_PTR(%struct.RString* %67)
  %69 = load i64, i64* %11, align 8
  %70 = sub nsw i64 %69, 1
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 13
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.RString*, %struct.RString** %13, align 8
  %77 = load %struct.RString*, %struct.RString** %13, align 8
  %78 = call i64 @RSTR_LEN(%struct.RString* %77)
  %79 = sub i64 %78, 1
  %80 = call i32 @RSTR_SET_LEN(%struct.RString* %76, i64 %79)
  br label %83

81:                                               ; preds = %66
  %82 = call i32 (...) @mrb_nil_value()
  store i32 %82, i32* %3, align 4
  br label %223

83:                                               ; preds = %75
  br label %84

84:                                               ; preds = %83, %65
  %85 = load %struct.RString*, %struct.RString** %13, align 8
  %86 = call i8* @RSTR_PTR(%struct.RString* %85)
  %87 = load %struct.RString*, %struct.RString** %13, align 8
  %88 = call i64 @RSTR_LEN(%struct.RString* %87)
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %3, align 4
  br label %223

91:                                               ; preds = %2
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = call i64 @mrb_nil_p(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %91
  %99 = call i32 (...) @mrb_nil_value()
  store i32 %99, i32* %3, align 4
  br label %223

100:                                              ; preds = %94
  %101 = load %struct.RString*, %struct.RString** %13, align 8
  %102 = call i8* @RSTR_PTR(%struct.RString* %101)
  store i8* %102, i8** %8, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i64 @RSTRING_LEN(i32 %103)
  store i64 %104, i64* %10, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %153

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %137, %107
  %109 = load i64, i64* %11, align 8
  %110 = icmp sgt i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i8*, i8** %8, align 8
  %113 = load i64, i64* %11, align 8
  %114 = sub nsw i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br label %119

119:                                              ; preds = %111, %108
  %120 = phi i1 [ false, %108 ], [ %118, %111 ]
  br i1 %120, label %121, label %138

121:                                              ; preds = %119
  %122 = load i64, i64* %11, align 8
  %123 = add nsw i64 %122, -1
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %11, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i8*, i8** %8, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub nsw i64 %128, 1
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 13
  br i1 %133, label %134, label %137

134:                                              ; preds = %126
  %135 = load i64, i64* %11, align 8
  %136 = add nsw i64 %135, -1
  store i64 %136, i64* %11, align 8
  br label %137

137:                                              ; preds = %134, %126, %121
  br label %108

138:                                              ; preds = %119
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.RString*, %struct.RString** %13, align 8
  %141 = call i64 @RSTR_LEN(%struct.RString* %140)
  %142 = icmp ult i64 %139, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load %struct.RString*, %struct.RString** %13, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @RSTR_SET_LEN(%struct.RString* %144, i64 %145)
  %147 = load i8*, i8** %8, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i32, i32* %5, align 4
  store i32 %150, i32* %3, align 4
  br label %223

151:                                              ; preds = %138
  %152 = call i32 (...) @mrb_nil_value()
  store i32 %152, i32* %3, align 4
  br label %223

153:                                              ; preds = %100
  %154 = load i64, i64* %10, align 8
  %155 = load i64, i64* %11, align 8
  %156 = icmp sgt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 (...) @mrb_nil_value()
  store i32 %158, i32* %3, align 4
  br label %223

159:                                              ; preds = %153
  %160 = load i32, i32* %6, align 4
  %161 = call i64* @RSTRING_PTR(i32 %160)
  %162 = load i64, i64* %10, align 8
  %163 = sub nsw i64 %162, 1
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %7, align 8
  %166 = load i64, i64* %10, align 8
  %167 = icmp eq i64 %166, 1
  br i1 %167, label %168, label %178

168:                                              ; preds = %159
  %169 = load i64, i64* %7, align 8
  %170 = icmp eq i64 %169, 10
  br i1 %170, label %171, label %178

171:                                              ; preds = %168
  %172 = load i32, i32* %6, align 4
  %173 = call i64* @RSTRING_PTR(i32 %172)
  %174 = load i64, i64* %10, align 8
  %175 = sub nsw i64 %174, 1
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  store i64 %177, i64* %7, align 8
  br label %178

178:                                              ; preds = %171, %168, %159
  %179 = load i64, i64* %10, align 8
  %180 = icmp eq i64 %179, 1
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i64, i64* %7, align 8
  %183 = icmp eq i64 %182, 10
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %31

185:                                              ; preds = %181, %178
  %186 = load i8*, i8** %8, align 8
  %187 = load i64, i64* %11, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load i64, i64* %10, align 8
  %190 = sub i64 0, %189
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  store i8* %191, i8** %9, align 8
  %192 = load i8*, i8** %8, align 8
  %193 = load i64, i64* %11, align 8
  %194 = sub nsw i64 %193, 1
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i64
  %198 = load i64, i64* %7, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %221

200:                                              ; preds = %185
  %201 = load i64, i64* %10, align 8
  %202 = icmp sle i64 %201, 1
  br i1 %202, label %210, label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %6, align 4
  %205 = call i64* @RSTRING_PTR(i32 %204)
  %206 = load i8*, i8** %9, align 8
  %207 = load i64, i64* %10, align 8
  %208 = call i64 @memcmp(i64* %205, i8* %206, i64 %207)
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %221

210:                                              ; preds = %203, %200
  %211 = load %struct.RString*, %struct.RString** %13, align 8
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* %10, align 8
  %214 = sub nsw i64 %212, %213
  %215 = call i32 @RSTR_SET_LEN(%struct.RString* %211, i64 %214)
  %216 = load i8*, i8** %8, align 8
  %217 = load %struct.RString*, %struct.RString** %13, align 8
  %218 = call i64 @RSTR_LEN(%struct.RString* %217)
  %219 = getelementptr inbounds i8, i8* %216, i64 %218
  store i8 0, i8* %219, align 1
  %220 = load i32, i32* %5, align 4
  store i32 %220, i32* %3, align 4
  br label %223

221:                                              ; preds = %203, %185
  %222 = call i32 (...) @mrb_nil_value()
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %221, %210, %157, %151, %143, %98, %84, %81, %28
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local %struct.RString* @mrb_str_ptr(i32) #1

declare dso_local i64 @mrb_get_args(i32*, i8*, i32*) #1

declare dso_local i32 @mrb_str_modify_keep_ascii(i32*, %struct.RString*) #1

declare dso_local i64 @RSTR_LEN(%struct.RString*) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i8* @RSTR_PTR(%struct.RString*) #1

declare dso_local i32 @RSTR_SET_LEN(%struct.RString*, i64) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i64* @RSTRING_PTR(i32) #1

declare dso_local i64 @memcmp(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

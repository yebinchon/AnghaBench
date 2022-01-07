; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_equal_values.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_engine.c_equal_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@NO_HINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @equal_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equal_values(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @jsval_type(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @jsval_type(i32 %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @is_number(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @is_number(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27, %4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @jsval_strict_equal(i32 %32, i32 %33, i32* %34)
  store i32 %35, i32* %5, align 4
  br label %230

36:                                               ; preds = %27, %23
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @is_object_instance(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @get_object(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 (...) @jsval_null()
  %47 = load i32, i32* %8, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @equal_values(i32* %45, i32 %46, i32 %47, i32* %48)
  store i32 %49, i32* %5, align 4
  br label %230

50:                                               ; preds = %40, %36
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @is_object_instance(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @get_object(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (...) @jsval_null()
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @equal_values(i32* %59, i32 %60, i32 %61, i32* %62)
  store i32 %63, i32* %5, align 4
  br label %230

64:                                               ; preds = %54, %50
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @is_null(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @is_undefined(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @is_undefined(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = call i64 @is_null(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %68
  %81 = load i32, i32* @TRUE, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32, i32* @S_OK, align 4
  store i32 %83, i32* %5, align 4
  br label %230

84:                                               ; preds = %76, %72
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @is_string(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @is_number(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @to_number(i32* %93, i32 %94, double* %10)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @FAILED(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %5, align 4
  br label %230

101:                                              ; preds = %92
  %102 = load i32*, i32** %6, align 8
  %103 = load double, double* %10, align 8
  %104 = fptosi double %103 to i32
  %105 = call i32 @jsval_number(i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @equal_values(i32* %102, i32 %105, i32 %106, i32* %107)
  store i32 %108, i32* %5, align 4
  br label %230

109:                                              ; preds = %88, %84
  %110 = load i32, i32* %8, align 4
  %111 = call i64 @is_string(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %134

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = call i64 @is_number(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @to_number(i32* %118, i32 %119, double* %12)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = call i64 @FAILED(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %5, align 4
  br label %230

126:                                              ; preds = %117
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load double, double* %12, align 8
  %130 = fptosi double %129 to i32
  %131 = call i32 @jsval_number(i32 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @equal_values(i32* %127, i32 %128, i32 %131, i32* %132)
  store i32 %133, i32* %5, align 4
  br label %230

134:                                              ; preds = %113, %109
  %135 = load i32, i32* %8, align 4
  %136 = call i64 @is_bool(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i64 @get_bool(i32 %141)
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1, i32 0
  %146 = call i32 @jsval_number(i32 %145)
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @equal_values(i32* %139, i32 %140, i32 %146, i32* %147)
  store i32 %148, i32* %5, align 4
  br label %230

149:                                              ; preds = %134
  %150 = load i32, i32* %7, align 4
  %151 = call i64 @is_bool(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %149
  %154 = load i32*, i32** %6, align 8
  %155 = load i32, i32* %7, align 4
  %156 = call i64 @get_bool(i32 %155)
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 1, i32 0
  %160 = call i32 @jsval_number(i32 %159)
  %161 = load i32, i32* %8, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @equal_values(i32* %154, i32 %160, i32 %161, i32* %162)
  store i32 %163, i32* %5, align 4
  br label %230

164:                                              ; preds = %149
  %165 = load i32, i32* %8, align 4
  %166 = call i64 @is_object_instance(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %195

168:                                              ; preds = %164
  %169 = load i32, i32* %7, align 4
  %170 = call i64 @is_string(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %7, align 4
  %174 = call i64 @is_number(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %172, %168
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @NO_HINT, align 4
  %180 = call i32 @to_primitive(i32* %177, i32 %178, i32* %14, i32 %179)
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = call i64 @FAILED(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i32, i32* %15, align 4
  store i32 %185, i32* %5, align 4
  br label %230

186:                                              ; preds = %176
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @equal_values(i32* %187, i32 %188, i32 %189, i32* %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @jsval_release(i32 %192)
  %194 = load i32, i32* %15, align 4
  store i32 %194, i32* %5, align 4
  br label %230

195:                                              ; preds = %172, %164
  %196 = load i32, i32* %7, align 4
  %197 = call i64 @is_object_instance(i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %226

199:                                              ; preds = %195
  %200 = load i32, i32* %8, align 4
  %201 = call i64 @is_string(i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %8, align 4
  %205 = call i64 @is_number(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %226

207:                                              ; preds = %203, %199
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @NO_HINT, align 4
  %211 = call i32 @to_primitive(i32* %208, i32 %209, i32* %16, i32 %210)
  store i32 %211, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = call i64 @FAILED(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %207
  %216 = load i32, i32* %17, align 4
  store i32 %216, i32* %5, align 4
  br label %230

217:                                              ; preds = %207
  %218 = load i32*, i32** %6, align 8
  %219 = load i32, i32* %16, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32*, i32** %9, align 8
  %222 = call i32 @equal_values(i32* %218, i32 %219, i32 %220, i32* %221)
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %16, align 4
  %224 = call i32 @jsval_release(i32 %223)
  %225 = load i32, i32* %17, align 4
  store i32 %225, i32* %5, align 4
  br label %230

226:                                              ; preds = %203, %195
  %227 = load i32, i32* @FALSE, align 4
  %228 = load i32*, i32** %9, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* @S_OK, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %226, %217, %215, %186, %184, %153, %138, %126, %124, %101, %99, %80, %58, %44, %31
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i64 @jsval_type(i32) #1

declare dso_local i64 @is_number(i32) #1

declare dso_local i32 @jsval_strict_equal(i32, i32, i32*) #1

declare dso_local i64 @is_object_instance(i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @jsval_null(...) #1

declare dso_local i64 @is_null(i32) #1

declare dso_local i64 @is_undefined(i32) #1

declare dso_local i64 @is_string(i32) #1

declare dso_local i32 @to_number(i32*, i32, double*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsval_number(i32) #1

declare dso_local i64 @is_bool(i32) #1

declare dso_local i64 @get_bool(i32) #1

declare dso_local i32 @to_primitive(i32*, i32, i32*, i32) #1

declare dso_local i32 @jsval_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

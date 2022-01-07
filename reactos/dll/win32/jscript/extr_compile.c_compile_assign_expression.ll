; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_assign_expression.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_compile.c_compile_assign_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@EXPR_CALL = common dso_local global i64 0, align 8
@fdexNameEnsure = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@OP_LAST = common dso_local global i64 0, align 8
@OP_call_member = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@OP_push_acc = common dso_local global i64 0, align 8
@OP_refval = common dso_local global i64 0, align 8
@OP_throw_ref = common dso_local global i32 0, align 4
@JS_E_ILLEGAL_ASSIGN = common dso_local global i32 0, align 4
@OP_assign_call = common dso_local global i32 0, align 4
@OP_assign = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i64)* @compile_assign_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compile_assign_expression(i32* %0, %struct.TYPE_13__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXPR_CALL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %118

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = bitcast %struct.TYPE_16__* %25 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %11, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @is_memberid_expr(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %115

34:                                               ; preds = %22
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %115

39:                                               ; preds = %34
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  %44 = load i32, i32* @fdexNameEnsure, align 4
  %45 = call i32 @compile_memberid_expression(i32* %40, %struct.TYPE_16__* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @FAILED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %236

51:                                               ; preds = %39
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %12, align 8
  br label %55

55:                                               ; preds = %73, %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = icmp ne %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load i64, i64* @TRUE, align 8
  %64 = call i32 @compile_expression(i32* %59, %struct.TYPE_16__* %62, i64 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @FAILED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %236

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  store %struct.TYPE_14__* %76, %struct.TYPE_14__** %12, align 8
  br label %55

77:                                               ; preds = %55
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @OP_LAST, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* @OP_call_member, align 8
  %84 = call i32 @push_instr(i32* %82, i64 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %88, i32* %4, align 4
  br label %236

89:                                               ; preds = %81
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call %struct.TYPE_15__* @instr_ptr(i32* %91, i32 %92)
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  store i32 %90, i32* %98, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call %struct.TYPE_15__* @instr_ptr(i32* %99, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load i32*, i32** %5, align 8
  %108 = load i64, i64* @OP_push_acc, align 8
  %109 = call i32 @push_instr(i32* %107, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %89
  %112 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %112, i32* %4, align 4
  br label %236

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %77
  br label %117

115:                                              ; preds = %34, %22
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %8, align 8
  br label %117

117:                                              ; preds = %115, %114
  br label %153

118:                                              ; preds = %3
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @is_memberid_expr(i64 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %150

126:                                              ; preds = %118
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = load i32, i32* @fdexNameEnsure, align 4
  %132 = call i32 @compile_memberid_expression(i32* %127, %struct.TYPE_16__* %130, i32 %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @FAILED(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %236

138:                                              ; preds = %126
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @OP_LAST, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %138
  %143 = load i32*, i32** %5, align 8
  %144 = load i64, i64* @OP_refval, align 8
  %145 = call i32 @push_instr(i32* %143, i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %148, i32* %4, align 4
  br label %236

149:                                              ; preds = %142, %138
  br label %152

150:                                              ; preds = %118
  %151 = load i64, i64* @TRUE, align 8
  store i64 %151, i64* %8, align 8
  br label %152

152:                                              ; preds = %150, %149
  br label %153

153:                                              ; preds = %152, %117
  %154 = load i64, i64* %8, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %196

156:                                              ; preds = %153
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %159, align 8
  %161 = load i64, i64* @TRUE, align 8
  %162 = call i32 @compile_expression(i32* %157, %struct.TYPE_16__* %160, i64 %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i64 @FAILED(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %156
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %4, align 4
  br label %236

168:                                              ; preds = %156
  %169 = load i32*, i32** %5, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = load i64, i64* @TRUE, align 8
  %174 = call i32 @compile_expression(i32* %169, %struct.TYPE_16__* %172, i64 %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i64 @FAILED(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %168
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %4, align 4
  br label %236

180:                                              ; preds = %168
  %181 = load i64, i64* %7, align 8
  %182 = load i64, i64* @OP_LAST, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32*, i32** %5, align 8
  %186 = load i64, i64* %7, align 8
  %187 = call i32 @push_instr(i32* %185, i64 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %190, i32* %4, align 4
  br label %236

191:                                              ; preds = %184, %180
  %192 = load i32*, i32** %5, align 8
  %193 = load i32, i32* @OP_throw_ref, align 4
  %194 = load i32, i32* @JS_E_ILLEGAL_ASSIGN, align 4
  %195 = call i32 @push_instr_uint(i32* %192, i32 %193, i32 %194)
  store i32 %195, i32* %4, align 4
  br label %236

196:                                              ; preds = %153
  %197 = load i32*, i32** %5, align 8
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = load i64, i64* @TRUE, align 8
  %202 = call i32 @compile_expression(i32* %197, %struct.TYPE_16__* %200, i64 %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = call i64 @FAILED(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %196
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %4, align 4
  br label %236

208:                                              ; preds = %196
  %209 = load i64, i64* %7, align 8
  %210 = load i64, i64* @OP_LAST, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i32*, i32** %5, align 8
  %214 = load i64, i64* %7, align 8
  %215 = call i32 @push_instr(i32* %213, i64 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %212
  %218 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %218, i32* %4, align 4
  br label %236

219:                                              ; preds = %212, %208
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* @OP_assign_call, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i32 @push_instr_uint(i32* %223, i32 %224, i32 %225)
  store i32 %226, i32* %4, align 4
  br label %236

227:                                              ; preds = %219
  %228 = load i32*, i32** %5, align 8
  %229 = load i64, i64* @OP_assign, align 8
  %230 = call i32 @push_instr(i32* %228, i64 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %233, i32* %4, align 4
  br label %236

234:                                              ; preds = %227
  %235 = load i32, i32* @S_OK, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %234, %232, %222, %217, %206, %191, %189, %178, %166, %147, %136, %111, %87, %68, %49
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i64 @is_memberid_expr(i64) #1

declare dso_local i32 @compile_memberid_expression(i32*, %struct.TYPE_16__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @compile_expression(i32*, %struct.TYPE_16__*, i64) #1

declare dso_local i32 @push_instr(i32*, i64) #1

declare dso_local %struct.TYPE_15__* @instr_ptr(i32*, i32) #1

declare dso_local i32 @push_instr_uint(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

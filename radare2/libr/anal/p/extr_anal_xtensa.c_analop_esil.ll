; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_analop_esil.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_xtensa.c_analop_esil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"a0,pc,=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64, i32, %struct.TYPE_27__*)* @analop_esil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analop_esil(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, %struct.TYPE_27__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.TYPE_27__* %5, %struct.TYPE_27__** %12, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %219 [
    i32 26, label %14
    i32 41, label %14
    i32 43, label %14
    i32 44, label %14
    i32 45, label %14
    i32 42, label %14
    i32 46, label %14
    i32 47, label %14
    i32 48, label %14
    i32 32, label %22
    i32 90, label %30
    i32 33, label %30
    i32 0, label %38
    i32 34, label %38
    i32 453, label %42
    i32 36, label %42
    i32 100, label %42
    i32 99, label %42
    i32 101, label %42
    i32 27, label %50
    i32 39, label %50
    i32 98, label %65
    i32 35, label %65
    i32 82, label %69
    i32 83, label %69
    i32 84, label %69
    i32 31, label %69
    i32 86, label %69
    i32 85, label %77
    i32 40, label %85
    i32 49, label %86
    i32 50, label %86
    i32 51, label %86
    i32 52, label %94
    i32 53, label %94
    i32 54, label %94
    i32 55, label %94
    i32 58, label %94
    i32 59, label %94
    i32 56, label %102
    i32 57, label %102
    i32 60, label %110
    i32 61, label %110
    i32 62, label %110
    i32 63, label %110
    i32 64, label %110
    i32 65, label %110
    i32 66, label %118
    i32 67, label %118
    i32 68, label %118
    i32 69, label %118
    i32 70, label %126
    i32 71, label %126
    i32 72, label %134
    i32 73, label %134
    i32 28, label %134
    i32 29, label %134
    i32 74, label %134
    i32 75, label %134
    i32 78, label %142
    i32 79, label %150
    i32 7, label %154
    i32 76, label %155
    i32 80, label %155
    i32 81, label %163
    i32 77, label %163
    i32 91, label %171
    i32 92, label %171
    i32 93, label %171
    i32 94, label %171
    i32 96, label %179
    i32 95, label %179
    i32 102, label %187
    i32 103, label %187
    i32 111, label %195
    i32 113, label %195
    i32 106, label %203
    i32 107, label %211
    i32 109, label %211
  ]

14:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %21 = call i32 @esil_add_sub(i32 %15, i32 %16, i32 %17, i64 %18, i32 %19, %struct.TYPE_27__* %20)
  br label %219

22:                                               ; preds = %6
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i64, i64* %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %29 = call i32 @esil_move(i32 %23, i32 %24, i32 %25, i64 %26, i32 %27, %struct.TYPE_27__* %28)
  br label %219

30:                                               ; preds = %6, %6
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %37 = call i32 @esil_move_imm(i32 %31, i32 %32, i32 %33, i64 %34, i32 %35, %struct.TYPE_27__* %36)
  br label %219

38:                                               ; preds = %6, %6
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = call i32 @r_strbuf_setf(i32* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %219

42:                                               ; preds = %6, %6, %6, %6, %6
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %49 = call i32 @esil_store_imm(i32 %43, i32 %44, i32 %45, i64 %46, i32 %47, %struct.TYPE_27__* %48)
  br label %219

50:                                               ; preds = %6, %6
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %57 = call i32 @xtensa_check_stack_op(i32 %51, i32 %52, i32 %53, i64 %54, i32 %55, %struct.TYPE_27__* %56)
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i64, i64* %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %64 = call i32 @esil_add_imm(i32 %58, i32 %59, i32 %60, i64 %61, i32 %62, %struct.TYPE_27__* %63)
  br label %219

65:                                               ; preds = %6, %6
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 0
  %68 = call i32 @r_strbuf_setf(i32* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %219

69:                                               ; preds = %6, %6, %6, %6, %6
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %76 = call i32 @esil_load_imm(i32 %70, i32 %71, i32 %72, i64 %73, i32 %74, %struct.TYPE_27__* %75)
  br label %219

77:                                               ; preds = %6
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %84 = call i32 @esil_load_relative(i32 %78, i32 %79, i32 %80, i64 %81, i32 %82, %struct.TYPE_27__* %83)
  br label %219

85:                                               ; preds = %6
  br label %219

86:                                               ; preds = %6, %6, %6
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i64, i64* %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %93 = call i32 @esil_bitwise_op(i32 %87, i32 %88, i32 %89, i64 %90, i32 %91, %struct.TYPE_27__* %92)
  br label %219

94:                                               ; preds = %6, %6, %6, %6, %6, %6
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %101 = call i32 @esil_branch_compare_imm(i32 %95, i32 %96, i32 %97, i64 %98, i32 %99, %struct.TYPE_27__* %100)
  br label %219

102:                                              ; preds = %6, %6
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i64, i64* %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %109 = call i32 @esil_branch_check_bit_imm(i32 %103, i32 %104, i32 %105, i64 %106, i32 %107, %struct.TYPE_27__* %108)
  br label %219

110:                                              ; preds = %6, %6, %6, %6, %6, %6
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i64, i64* %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %117 = call i32 @esil_branch_compare(i32 %111, i32 %112, i32 %113, i64 %114, i32 %115, %struct.TYPE_27__* %116)
  br label %219

118:                                              ; preds = %6, %6, %6, %6
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i64, i64* %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %125 = call i32 @esil_branch_check_mask(i32 %119, i32 %120, i32 %121, i64 %122, i32 %123, %struct.TYPE_27__* %124)
  br label %219

126:                                              ; preds = %6, %6
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i64, i64* %10, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %133 = call i32 @esil_branch_check_bit(i32 %127, i32 %128, i32 %129, i64 %130, i32 %131, %struct.TYPE_27__* %132)
  br label %219

134:                                              ; preds = %6, %6, %6, %6, %6, %6
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = load i64, i64* %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %141 = call i32 @esil_branch_compare_single(i32 %135, i32 %136, i32 %137, i64 %138, i32 %139, %struct.TYPE_27__* %140)
  br label %219

142:                                              ; preds = %6
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i64, i64* %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %149 = call i32 @esil_extract_unsigned(i32 %143, i32 %144, i32 %145, i64 %146, i32 %147, %struct.TYPE_27__* %148)
  br label %219

150:                                              ; preds = %6
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = call i32 @r_strbuf_setf(i32* %152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %219

154:                                              ; preds = %6
  br label %219

155:                                              ; preds = %6, %6
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i64, i64* %10, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %162 = call i32 @esil_call(i32 %156, i32 %157, i32 %158, i64 %159, i32 %160, %struct.TYPE_27__* %161)
  br label %219

163:                                              ; preds = %6, %6
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load i64, i64* %10, align 8
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %170 = call i32 @esil_callx(i32 %164, i32 %165, i32 %166, i64 %167, i32 %168, %struct.TYPE_27__* %169)
  br label %219

171:                                              ; preds = %6, %6, %6, %6
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* %9, align 4
  %175 = load i64, i64* %10, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %178 = call i32 @esil_move_conditional(i32 %172, i32 %173, i32 %174, i64 %175, i32 %176, %struct.TYPE_27__* %177)
  br label %219

179:                                              ; preds = %6, %6
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i64, i64* %10, align 8
  %184 = load i32, i32* %11, align 4
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %186 = call i32 @esil_abs_neg(i32 %180, i32 %181, i32 %182, i64 %183, i32 %184, %struct.TYPE_27__* %185)
  br label %219

187:                                              ; preds = %6, %6
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load i64, i64* %10, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %194 = call i32 @esil_set_shift_amount(i32 %188, i32 %189, i32 %190, i64 %191, i32 %192, %struct.TYPE_27__* %193)
  br label %219

195:                                              ; preds = %6, %6
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load i64, i64* %10, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %202 = call i32 @esil_shift_logic_imm(i32 %196, i32 %197, i32 %198, i64 %199, i32 %200, %struct.TYPE_27__* %201)
  br label %219

203:                                              ; preds = %6
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %9, align 4
  %207 = load i64, i64* %10, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %210 = call i32 @esil_set_shift_amount_imm(i32 %204, i32 %205, i32 %206, i64 %207, i32 %208, %struct.TYPE_27__* %209)
  br label %219

211:                                              ; preds = %6, %6
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = load i64, i64* %10, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %218 = call i32 @esil_shift_logic_sar(i32 %212, i32 %213, i32 %214, i64 %215, i32 %216, %struct.TYPE_27__* %217)
  br label %219

219:                                              ; preds = %6, %211, %203, %195, %187, %179, %171, %163, %155, %154, %150, %142, %134, %126, %118, %110, %102, %94, %86, %85, %77, %69, %65, %50, %42, %38, %30, %22, %14
  ret void
}

declare dso_local i32 @esil_add_sub(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_move(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_move_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @r_strbuf_setf(i32*, i8*) #1

declare dso_local i32 @esil_store_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @xtensa_check_stack_op(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_add_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_load_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_load_relative(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_bitwise_op(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_branch_compare_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_branch_check_bit_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_branch_compare(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_branch_check_mask(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_branch_check_bit(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_branch_compare_single(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_extract_unsigned(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_call(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_callx(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_move_conditional(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_abs_neg(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_set_shift_amount(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_shift_logic_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_set_shift_amount_imm(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @esil_shift_logic_sar(i32, i32, i32, i64, i32, %struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

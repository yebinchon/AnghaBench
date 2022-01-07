; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_tw.c_mbfl_filt_conv_wchar_euctw.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_euc_tw.c_mbfl_filt_conv_wchar_euctw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 (i32, i32)* }

@ucs_a1_cns11643_table_min = common dso_local global i32 0, align 4
@ucs_a1_cns11643_table_max = common dso_local global i32 0, align 4
@ucs_a1_cns11643_table = common dso_local global i32* null, align 8
@ucs_a2_cns11643_table_min = common dso_local global i32 0, align 4
@ucs_a2_cns11643_table_max = common dso_local global i32 0, align 4
@ucs_a2_cns11643_table = common dso_local global i32* null, align 8
@ucs_a3_cns11643_table_min = common dso_local global i32 0, align 4
@ucs_a3_cns11643_table_max = common dso_local global i32 0, align 4
@ucs_a3_cns11643_table = common dso_local global i32* null, align 8
@ucs_i_cns11643_table_min = common dso_local global i32 0, align 4
@ucs_i_cns11643_table_max = common dso_local global i32 0, align 4
@ucs_i_cns11643_table = common dso_local global i32* null, align 8
@ucs_r_cns11643_table_min = common dso_local global i32 0, align 4
@ucs_r_cns11643_table_max = common dso_local global i32 0, align 4
@ucs_r_cns11643_table = common dso_local global i32* null, align 8
@MBFL_WCSPLANE_MASK = common dso_local global i32 0, align 4
@MBFL_WCSPLANE_CNS11643 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_conv_wchar_euctw(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ucs_a1_cns11643_table_min, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ucs_a1_cns11643_table_max, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32*, i32** @ucs_a1_cns11643_table, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @ucs_a1_cns11643_table_min, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %91

23:                                               ; preds = %11, %2
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @ucs_a2_cns11643_table_min, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ucs_a2_cns11643_table_max, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32*, i32** @ucs_a2_cns11643_table, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ucs_a2_cns11643_table_min, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %90

39:                                               ; preds = %27, %23
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @ucs_a3_cns11643_table_min, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ucs_a3_cns11643_table_max, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32*, i32** @ucs_a3_cns11643_table, align 8
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @ucs_a3_cns11643_table_min, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %48, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  br label %89

55:                                               ; preds = %43, %39
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @ucs_i_cns11643_table_min, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ucs_i_cns11643_table_max, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i32*, i32** @ucs_i_cns11643_table, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @ucs_i_cns11643_table_min, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %88

71:                                               ; preds = %59, %55
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @ucs_r_cns11643_table_min, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @ucs_r_cns11643_table_max, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = load i32*, i32** @ucs_r_cns11643_table, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @ucs_r_cns11643_table_min, align 4
  %83 = sub nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %80, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %79, %75, %71
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88, %47
  br label %90

90:                                               ; preds = %89, %31
  br label %91

91:                                               ; preds = %90, %15
  %92 = load i32, i32* %6, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %116

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* @MBFL_WCSPLANE_CNS11643, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @MBFL_WCSPLANE_MASK, align 4
  %105 = and i32 %103, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %102, %94
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 0, i32* %6, align 4
  br label %115

110:                                              ; preds = %106
  %111 = load i32, i32* %6, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 -1, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %115

115:                                              ; preds = %114, %109
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32, i32* %6, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %213

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, 2031616
  %122 = ashr i32 %121, 16
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp sle i32 %123, 1
  br i1 %124, label %125, label %164

125:                                              ; preds = %119
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 128
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32 (i32, i32)*, i32 (i32, i32)** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %131(i32 %132, i32 %135)
  %137 = call i32 @CK(i32 %136)
  br label %163

138:                                              ; preds = %125
  %139 = load i32, i32* %6, align 4
  %140 = and i32 %139, 65535
  %141 = or i32 %140, 32896
  store i32 %141, i32* %6, align 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32 (i32, i32)*, i32 (i32, i32)** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = ashr i32 %145, 8
  %147 = and i32 %146, 255
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 %144(i32 %147, i32 %150)
  %152 = call i32 @CK(i32 %151)
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32 (i32, i32)*, i32 (i32, i32)** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = and i32 %156, 255
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 %155(i32 %157, i32 %160)
  %162 = call i32 @CK(i32 %161)
  br label %163

163:                                              ; preds = %138, %128
  br label %212

164:                                              ; preds = %119
  %165 = load i32, i32* %7, align 4
  %166 = shl i32 %165, 16
  %167 = add i32 -1902116864, %166
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 65535
  %170 = or i32 %169, 32896
  %171 = or i32 %167, %170
  store i32 %171, i32* %6, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32 (i32, i32)*, i32 (i32, i32)** %173, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i32 %174(i32 142, i32 %177)
  %179 = call i32 @CK(i32 %178)
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32 (i32, i32)*, i32 (i32, i32)** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = ashr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 %182(i32 %185, i32 %188)
  %190 = call i32 @CK(i32 %189)
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load i32, i32* %6, align 4
  %195 = ashr i32 %194, 8
  %196 = and i32 %195, 255
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 %193(i32 %196, i32 %199)
  %201 = call i32 @CK(i32 %200)
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32 (i32, i32)*, i32 (i32, i32)** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = and i32 %205, 255
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 %204(i32 %206, i32 %209)
  %211 = call i32 @CK(i32 %210)
  br label %212

212:                                              ; preds = %164, %163
  br label %218

213:                                              ; preds = %116
  %214 = load i32, i32* %3, align 4
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = call i32 @mbfl_filt_conv_illegal_output(i32 %214, %struct.TYPE_4__* %215)
  %217 = call i32 @CK(i32 %216)
  br label %218

218:                                              ; preds = %213, %212
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @CK(i32) #1

declare dso_local i32 @mbfl_filt_conv_illegal_output(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

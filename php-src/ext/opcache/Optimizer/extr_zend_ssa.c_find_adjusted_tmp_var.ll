; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_find_adjusted_tmp_var.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_ssa.c_find_adjusted_tmp_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i64, %struct.TYPE_12__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@IS_TMP_VAR = common dso_local global i64 0, align 8
@ZEND_POST_DEC = common dso_local global i64 0, align 8
@IS_CV = common dso_local global i64 0, align 8
@ZEND_POST_INC = common dso_local global i64 0, align 8
@ZEND_ADD = common dso_local global i64 0, align 8
@IS_CONST = common dso_local global i64 0, align 8
@IS_LONG = common dso_local global i64 0, align 8
@ZEND_LONG_MIN = common dso_local global i32 0, align 4
@ZEND_SUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i64, %struct.TYPE_11__*, i64, i32*)* @find_adjusted_tmp_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_adjusted_tmp_var(%struct.TYPE_10__* %0, i64 %1, %struct.TYPE_11__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %12, align 8
  br label %15

15:                                               ; preds = %36, %5
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp ne %struct.TYPE_11__* %16, %19
  br i1 %20, label %21, label %210

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 -1
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %12, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IS_TMP_VAR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %21
  br label %15

37:                                               ; preds = %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZEND_POST_DEC, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IS_CV, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  store i32 -1, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @EX_VAR_TO_NUM(i32 %54)
  store i32 %55, i32* %6, align 4
  br label %211

56:                                               ; preds = %43
  br label %209

57:                                               ; preds = %37
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ZEND_POST_INC, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IS_CV, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32*, i32** %11, align 8
  store i32 1, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @EX_VAR_TO_NUM(i32 %74)
  store i32 %75, i32* %6, align 4
  br label %211

76:                                               ; preds = %63
  br label %208

77:                                               ; preds = %57
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ZEND_ADD, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %165

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IS_CV, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %123

89:                                               ; preds = %83
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IS_CONST, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %89
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32* @CRT_CONSTANT_EX(%struct.TYPE_10__* %96, %struct.TYPE_11__* %97, i32 %101)
  store i32* %102, i32** %13, align 8
  %103 = load i32*, i32** %13, align 8
  %104 = call i64 @Z_TYPE_P(i32* %103)
  %105 = load i64, i64* @IS_LONG, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %95
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @Z_LVAL_P(i32* %108)
  %110 = load i32, i32* @ZEND_LONG_MIN, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %107
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @Z_LVAL_P(i32* %113)
  %115 = sub nsw i32 0, %114
  %116 = load i32*, i32** %11, align 8
  store i32 %115, i32* %116, align 4
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @EX_VAR_TO_NUM(i32 %120)
  store i32 %121, i32* %6, align 4
  br label %211

122:                                              ; preds = %107, %95
  br label %164

123:                                              ; preds = %89, %83
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @IS_CV, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %163

129:                                              ; preds = %123
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IS_CONST, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %163

135:                                              ; preds = %129
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32* @CRT_CONSTANT_EX(%struct.TYPE_10__* %136, %struct.TYPE_11__* %137, i32 %141)
  store i32* %142, i32** %13, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = call i64 @Z_TYPE_P(i32* %143)
  %145 = load i64, i64* @IS_LONG, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %135
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @Z_LVAL_P(i32* %148)
  %150 = load i32, i32* @ZEND_LONG_MIN, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load i32*, i32** %13, align 8
  %154 = call i32 @Z_LVAL_P(i32* %153)
  %155 = sub nsw i32 0, %154
  %156 = load i32*, i32** %11, align 8
  store i32 %155, i32* %156, align 4
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @EX_VAR_TO_NUM(i32 %160)
  store i32 %161, i32* %6, align 4
  br label %211

162:                                              ; preds = %147, %135
  br label %163

163:                                              ; preds = %162, %129, %123
  br label %164

164:                                              ; preds = %163, %122
  br label %207

165:                                              ; preds = %77
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ZEND_SUB, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %206

171:                                              ; preds = %165
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IS_CV, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %171
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @IS_CONST, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %205

183:                                              ; preds = %177
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32* @CRT_CONSTANT_EX(%struct.TYPE_10__* %184, %struct.TYPE_11__* %185, i32 %189)
  store i32* %190, i32** %13, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = call i64 @Z_TYPE_P(i32* %191)
  %193 = load i64, i64* @IS_LONG, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %183
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @Z_LVAL_P(i32* %196)
  %198 = load i32*, i32** %11, align 8
  store i32 %197, i32* %198, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @EX_VAR_TO_NUM(i32 %202)
  store i32 %203, i32* %6, align 4
  br label %211

204:                                              ; preds = %183
  br label %205

205:                                              ; preds = %204, %177, %171
  br label %206

206:                                              ; preds = %205, %165
  br label %207

207:                                              ; preds = %206, %164
  br label %208

208:                                              ; preds = %207, %76
  br label %209

209:                                              ; preds = %208, %56
  br label %210

210:                                              ; preds = %209, %15
  store i32 -1, i32* %6, align 4
  br label %211

211:                                              ; preds = %210, %195, %152, %112, %69, %49
  %212 = load i32, i32* %6, align 4
  ret i32 %212
}

declare dso_local i32 @EX_VAR_TO_NUM(i32) #1

declare dso_local i32* @CRT_CONSTANT_EX(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

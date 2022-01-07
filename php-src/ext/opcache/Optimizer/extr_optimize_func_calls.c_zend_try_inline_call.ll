; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_optimize_func_calls.c_zend_try_inline_call.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_optimize_func_calls.c_zend_try_inline_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64, i64, %struct.TYPE_14__*, i32* }

@ZEND_USER_FUNCTION = common dso_local global i64 0, align 8
@ZEND_ACC_ABSTRACT = common dso_local global i32 0, align 4
@ZEND_ACC_HAS_TYPE_HINTS = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT_CLONE = common dso_local global i32 0, align 4
@ZEND_RETURN = common dso_local global i64 0, align 8
@IS_CONST = common dso_local global i64 0, align 8
@ZEND_ACC_VARIADIC = common dso_local global i32 0, align 4
@ZEND_INIT_METHOD_CALL = common dso_local global i64 0, align 8
@IS_UNUSED = common dso_local global i64 0, align 8
@IS_CONSTANT_AST = common dso_local global i64 0, align 8
@ZEND_QM_ASSIGN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_15__*)* @zend_try_inline_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_try_inline_call(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZEND_USER_FUNCTION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %206

18:                                               ; preds = %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ZEND_ACC_ABSTRACT, align 4
  %24 = load i32, i32* @ZEND_ACC_HAS_TYPE_HINTS, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %206, label %28

28:                                               ; preds = %18
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ZEND_ACC_TRAIT_CLONE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %206, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp uge i64 %39, %43
  br i1 %44, label %45, label %206

45:                                               ; preds = %36
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ZEND_RETURN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %206

59:                                               ; preds = %45
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i64 %67
  store %struct.TYPE_14__* %68, %struct.TYPE_14__** %9, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IS_CONST, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %205

74:                                               ; preds = %59
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %11, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ZEND_ACC_VARIADIC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %11, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %11, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ZEND_INIT_METHOD_CALL, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %74
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IS_UNUSED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %206

102:                                              ; preds = %95, %74
  store i64 0, i64* %10, align 8
  br label %103

103:                                              ; preds = %118, %102
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = call i64 @ZEND_ARG_SEND_MODE(i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %206

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %103

121:                                              ; preds = %103
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %124, %128
  br i1 %129, label %130, label %168

130:                                              ; preds = %121
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %10, align 8
  br label %134

134:                                              ; preds = %160, %130
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 3
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i64 %141
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @CRT_CONSTANT_EX(%struct.TYPE_13__* %136, %struct.TYPE_14__* %142, i32 %151)
  %153 = call i64 @Z_TYPE_P(i32 %152)
  %154 = load i64, i64* @IS_CONSTANT_AST, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %134
  br label %206

157:                                              ; preds = %134
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %160

160:                                              ; preds = %157
  %161 = load i64, i64* %10, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = icmp ult i64 %161, %165
  br i1 %166, label %134, label %167

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %121
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %170 = call i64 @RETURN_VALUE_USED(%struct.TYPE_14__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %198

172:                                              ; preds = %168
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @CRT_CONSTANT_EX(%struct.TYPE_13__* %174, %struct.TYPE_14__* %175, i32 %179)
  %181 = call i32 @ZVAL_COPY(i32* %12, i32 %180)
  %182 = load i64, i64* @ZEND_QM_ASSIGN, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  store i64 %182, i64* %184, align 8
  %185 = load i64, i64* @IS_CONST, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @zend_optimizer_add_literal(i32* %188, i32* %12)
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @SET_UNUSED(i32 %196)
  br label %201

198:                                              ; preds = %168
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %200 = call i32 @MAKE_NOP(%struct.TYPE_14__* %199)
  br label %201

201:                                              ; preds = %198, %172
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i64 -1
  %204 = call i32 @zend_delete_call_instructions(%struct.TYPE_14__* %203)
  br label %205

205:                                              ; preds = %201, %59
  br label %206

206:                                              ; preds = %101, %116, %156, %205, %45, %36, %28, %18, %4
  ret void
}

declare dso_local i64 @ZEND_ARG_SEND_MODE(i32*) #1

declare dso_local i64 @Z_TYPE_P(i32) #1

declare dso_local i32 @CRT_CONSTANT_EX(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @RETURN_VALUE_USED(%struct.TYPE_14__*) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32) #1

declare dso_local i32 @zend_optimizer_add_literal(i32*, i32*) #1

declare dso_local i32 @SET_UNUSED(i32) #1

declare dso_local i32 @MAKE_NOP(%struct.TYPE_14__*) #1

declare dso_local i32 @zend_delete_call_instructions(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

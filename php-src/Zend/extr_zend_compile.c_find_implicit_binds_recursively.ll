; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_find_implicit_binds_recursively.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_find_implicit_binds_recursively.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_15__ = type { %struct.TYPE_16__** }

@ZEND_AST_VAR = common dso_local global i64 0, align 8
@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"this\00", align 1
@ZEND_AST_CLOSURE = common dso_local global i64 0, align 8
@ZEND_AST_ARROW_FUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_16__*)* @find_implicit_binds_recursively to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_implicit_binds_recursively(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %173

19:                                               ; preds = %2
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ZEND_AST_VAR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %28, i64 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %5, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %25
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = call i32 @zend_ast_get_zval(%struct.TYPE_16__* %37)
  %39 = call i64 @Z_TYPE_P(i32 %38)
  %40 = load i64, i64* @IS_STRING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = call i32* @zend_ast_get_str(%struct.TYPE_16__* %43)
  store i32* %44, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i64 @zend_is_auto_global(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %173

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @zend_string_equals_literal(i32* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %173

54:                                               ; preds = %49
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @zend_hash_add_empty_element(i32* %56, i32* %57)
  br label %64

59:                                               ; preds = %36, %25
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  call void @find_implicit_binds_recursively(%struct.TYPE_17__* %62, %struct.TYPE_16__* %63)
  br label %64

64:                                               ; preds = %59, %54
  br label %173

65:                                               ; preds = %19
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = call i64 @zend_ast_is_list(%struct.TYPE_16__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = call %struct.TYPE_14__* @zend_ast_get_list(%struct.TYPE_16__* %70)
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %7, align 8
  store i64 0, i64* %8, align 8
  br label %72

72:                                               ; preds = %86, %69
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %82, i64 %83
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  call void @find_implicit_binds_recursively(%struct.TYPE_17__* %79, %struct.TYPE_16__* %85)
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %72

89:                                               ; preds = %72
  br label %172

90:                                               ; preds = %65
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZEND_AST_CLOSURE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %131

96:                                               ; preds = %90
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = bitcast %struct.TYPE_16__* %97 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %9, align 8
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %101, i64 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  store %struct.TYPE_16__* %103, %struct.TYPE_16__** %10, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %105 = icmp ne %struct.TYPE_16__* %104, null
  br i1 %105, label %106, label %130

106:                                              ; preds = %96
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %108 = call %struct.TYPE_14__* @zend_ast_get_list(%struct.TYPE_16__* %107)
  store %struct.TYPE_14__* %108, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %109

109:                                              ; preds = %126, %106
  %110 = load i64, i64* %12, align 8
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %120, i64 %121
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = call i32* @zend_ast_get_str(%struct.TYPE_16__* %123)
  %125 = call i32 @zend_hash_add_empty_element(i32* %117, i32* %124)
  br label %126

126:                                              ; preds = %115
  %127 = load i64, i64* %12, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %12, align 8
  br label %109

129:                                              ; preds = %109
  br label %130

130:                                              ; preds = %129, %96
  br label %171

131:                                              ; preds = %90
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @ZEND_AST_ARROW_FUNC, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %131
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %139 = bitcast %struct.TYPE_16__* %138 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %139, %struct.TYPE_15__** %13, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %143, i64 2
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  call void @find_implicit_binds_recursively(%struct.TYPE_17__* %140, %struct.TYPE_16__* %145)
  br label %170

146:                                              ; preds = %131
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %148 = call i32 @zend_ast_is_special(%struct.TYPE_16__* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %169, label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %152 = call i64 @zend_ast_get_num_children(%struct.TYPE_16__* %151)
  store i64 %152, i64* %15, align 8
  store i64 0, i64* %14, align 8
  br label %153

153:                                              ; preds = %165, %150
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* %15, align 8
  %156 = icmp ult i64 %154, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %160, align 8
  %162 = load i64, i64* %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %161, i64 %162
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  call void @find_implicit_binds_recursively(%struct.TYPE_17__* %158, %struct.TYPE_16__* %164)
  br label %165

165:                                              ; preds = %157
  %166 = load i64, i64* %14, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %14, align 8
  br label %153

168:                                              ; preds = %153
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169, %137
  br label %171

171:                                              ; preds = %170, %130
  br label %172

172:                                              ; preds = %171, %89
  br label %173

173:                                              ; preds = %18, %48, %53, %172, %64
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32) #1

declare dso_local i32 @zend_ast_get_zval(%struct.TYPE_16__*) #1

declare dso_local i32* @zend_ast_get_str(%struct.TYPE_16__*) #1

declare dso_local i64 @zend_is_auto_global(i32*) #1

declare dso_local i64 @zend_string_equals_literal(i32*, i8*) #1

declare dso_local i32 @zend_hash_add_empty_element(i32*, i32*) #1

declare dso_local i64 @zend_ast_is_list(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_14__* @zend_ast_get_list(%struct.TYPE_16__*) #1

declare dso_local i32 @zend_ast_is_special(%struct.TYPE_16__*) #1

declare dso_local i64 @zend_ast_get_num_children(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

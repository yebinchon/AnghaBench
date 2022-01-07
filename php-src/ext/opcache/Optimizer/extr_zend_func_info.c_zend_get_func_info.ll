; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_func_info.c_zend_get_func_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_func_info.c_zend_get_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, %struct.TYPE_15__*, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_21__*, i32*)*, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@ZEND_INTERNAL_FUNCTION = common dso_local global i64 0, align 8
@func_info = common dso_local global i32 0, align 4
@MAY_BE_NULL = common dso_local global i32 0, align 4
@ZEND_ACC_HAS_RETURN_TYPE = common dso_local global i32 0, align 4
@MAY_BE_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_ANY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_REF = common dso_local global i32 0, align 4
@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_RCN = common dso_local global i32 0, align 4
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@MAY_BE_REF = common dso_local global i32 0, align 4
@ZEND_ACC_GENERATOR = common dso_local global i32 0, align 4
@func = common dso_local global %struct.TYPE_14__* null, align 8
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zend_get_func_info(%struct.TYPE_21__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZEND_INTERNAL_FUNCTION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %119

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CRT_CONSTANT_EX(i32 %24, %struct.TYPE_15__* %27, i32 %32)
  %34 = call i32* @Z_STR_P(i32 %33)
  store i32* %34, i32** %9, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %79, label %42

42:                                               ; preds = %21
  %43 = load i32*, i32** %9, align 8
  %44 = call i32* @zend_hash_find_ex(i32* @func_info, i32* %43, i32 1)
  store i32* %44, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.TYPE_22__* @Z_PTR_P(i32* %47)
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %10, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @zend_optimizer_is_disabled_func(i32 %51, i32 %54)
  %56 = call i64 @UNEXPECTED(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @MAY_BE_NULL, align 4
  store i32 %59, i32* %6, align 4
  br label %77

60:                                               ; preds = %46
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_21__*, i32*)* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %67, align 8
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 %68(%struct.TYPE_21__* %69, i32* %70)
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %60
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %65
  br label %77

77:                                               ; preds = %76, %58
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %168

79:                                               ; preds = %42, %21
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ZEND_ACC_HAS_RETURN_TYPE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %79
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @zend_fetch_arg_info_type(i32* null, i64 %92, i32** %11)
  store i32 %93, i32* %6, align 4
  br label %106

94:                                               ; preds = %79
  %95 = load i32, i32* @MAY_BE_ANY, align 4
  %96 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @MAY_BE_RC1, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @MAY_BE_RCN, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %94, %87
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @MAY_BE_REF, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %106
  br label %166

119:                                              ; preds = %2
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = bitcast %struct.TYPE_19__* %120 to i32*
  %122 = call %struct.TYPE_20__* @ZEND_FUNC_INFO(i32* %121)
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %12, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %124 = icmp ne %struct.TYPE_20__* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %125, %119
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %165, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @MAY_BE_ANY, align 4
  %135 = load i32, i32* @MAY_BE_ARRAY_KEY_ANY, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @MAY_BE_ARRAY_OF_ANY, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @MAY_BE_ARRAY_OF_REF, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @MAY_BE_RC1, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @MAY_BE_RCN, align 4
  %144 = or i32 %142, %143
  store i32 %144, i32* %6, align 4
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %133
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ZEND_ACC_GENERATOR, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %152
  %161 = load i32, i32* @MAY_BE_REF, align 4
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %160, %152, %133
  br label %165

165:                                              ; preds = %164, %130
  br label %166

166:                                              ; preds = %165, %118
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %166, %77
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32* @Z_STR_P(i32) #1

declare dso_local i32 @CRT_CONSTANT_EX(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32* @zend_hash_find_ex(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_22__* @Z_PTR_P(i32*) #1

declare dso_local i64 @UNEXPECTED(i32) #1

declare dso_local i32 @zend_optimizer_is_disabled_func(i32, i32) #1

declare dso_local i32 @zend_fetch_arg_info_type(i32*, i64, i32**) #1

declare dso_local %struct.TYPE_20__* @ZEND_FUNC_INFO(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

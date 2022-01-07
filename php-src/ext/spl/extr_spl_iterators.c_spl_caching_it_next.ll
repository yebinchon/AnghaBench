; ModuleID = '/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_caching_it_next.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/spl/extr_spl_iterators.c_spl_caching_it_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@CIT_VALID = common dso_local global i32 0, align 4
@CIT_FULL_CACHE = common dso_local global i32 0, align 4
@DIT_RecursiveCachingIterator = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"haschildren\00", align 1
@exception = common dso_local global i32 0, align 4
@CIT_CATCH_GET_CHILD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"getchildren\00", align 1
@CIT_PUBLIC = common dso_local global i32 0, align 4
@spl_ce_RecursiveCachingIterator = common dso_local global i32 0, align 4
@CIT_TOSTRING_USE_INNER = common dso_local global i32 0, align 4
@CIT_CALL_TOSTRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @spl_caching_it_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spl_caching_it_next(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = call i64 @spl_dual_it_fetch(%struct.TYPE_13__* %10, i32 1)
  %12 = load i64, i64* @SUCCESS, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %218

14:                                               ; preds = %1
  %15 = load i32, i32* @CIT_VALID, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %15
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CIT_FULL_CACHE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %14
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  store i32* %33, i32** %3, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  store i32* %36, i32** %4, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ZVAL_DEREF(i32* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @Z_TRY_ADDREF_P(i32* %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @Z_ARRVAL(i32 %45)
  %47 = load i32*, i32** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @array_set_zval_key(i32 %46, i32* %47, i32* %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @zval_ptr_dtor(i32* %50)
  br label %52

52:                                               ; preds = %30, %14
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DIT_RecursiveCachingIterator, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %155

58:                                               ; preds = %52
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @Z_OBJ(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @zend_call_method_with_0_params(i32 %63, i32 %67, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %5)
  %69 = load i32, i32* @exception, align 4
  %70 = call i64 @EG(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %58
  %73 = call i32 @zval_ptr_dtor(i32* %5)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CIT_CATCH_GET_CHILD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 (...) @zend_clear_exception()
  br label %85

84:                                               ; preds = %72
  br label %227

85:                                               ; preds = %82
  br label %154

86:                                               ; preds = %58
  %87 = call i64 @zend_is_true(i32* %5)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %135

89:                                               ; preds = %86
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @Z_OBJ(i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @zend_call_method_with_0_params(i32 %94, i32 %98, i32* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %100 = load i32, i32* @exception, align 4
  %101 = call i64 @EG(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %89
  %104 = call i32 @zval_ptr_dtor(i32* %6)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @CIT_CATCH_GET_CHILD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %103
  %114 = call i32 (...) @zend_clear_exception()
  br label %117

115:                                              ; preds = %103
  %116 = call i32 @zval_ptr_dtor(i32* %5)
  br label %227

117:                                              ; preds = %113
  br label %134

118:                                              ; preds = %89
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CIT_PUBLIC, align 4
  %125 = and i32 %123, %124
  %126 = call i32 @ZVAL_LONG(i32* %7, i32 %125)
  %127 = load i32, i32* @spl_ce_RecursiveCachingIterator, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = call i32 @spl_instantiate_arg_ex2(i32 %127, i32* %131, i32* %6, i32* %7)
  %133 = call i32 @zval_ptr_dtor(i32* %6)
  br label %134

134:                                              ; preds = %118, %117
  br label %135

135:                                              ; preds = %134, %86
  %136 = call i32 @zval_ptr_dtor(i32* %5)
  %137 = load i32, i32* @exception, align 4
  %138 = call i64 @EG(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CIT_CATCH_GET_CHILD, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %140
  %150 = call i32 (...) @zend_clear_exception()
  br label %152

151:                                              ; preds = %140
  br label %227

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153, %85
  br label %155

155:                                              ; preds = %154, %52
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @CIT_TOSTRING_USE_INNER, align 4
  %162 = load i32, i32* @CIT_CALL_TOSTRING, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %215

166:                                              ; preds = %155
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @CIT_TOSTRING_USE_INNER, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %166
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = call i32 @ZVAL_COPY_VALUE(i32* %179, i32* %182)
  br label %193

184:                                              ; preds = %166
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = call i32 @ZVAL_COPY_VALUE(i32* %188, i32* %191)
  br label %193

193:                                              ; preds = %184, %175
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = call i32 @zend_make_printable_zval(i32* %197, i32* %9)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = call i32 @ZVAL_COPY_VALUE(i32* %205, i32* %9)
  br label %214

207:                                              ; preds = %193
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @Z_TRY_ADDREF(i32 %212)
  br label %214

214:                                              ; preds = %207, %201
  br label %215

215:                                              ; preds = %214, %155
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %217 = call i32 @spl_dual_it_next(%struct.TYPE_13__* %216, i32 0)
  br label %227

218:                                              ; preds = %1
  %219 = load i32, i32* @CIT_VALID, align 4
  %220 = xor i32 %219, -1
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %220
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %84, %115, %151, %218, %215
  ret void
}

declare dso_local i64 @spl_dual_it_fetch(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ZVAL_DEREF(i32*) #1

declare dso_local i32 @Z_TRY_ADDREF_P(i32*) #1

declare dso_local i32 @array_set_zval_key(i32, i32*, i32*) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @zend_call_method_with_0_params(i32, i32, i32*, i8*, i32*) #1

declare dso_local i32 @Z_OBJ(i32) #1

declare dso_local i64 @EG(i32) #1

declare dso_local i32 @zend_clear_exception(...) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i32) #1

declare dso_local i32 @spl_instantiate_arg_ex2(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @zend_make_printable_zval(i32*, i32*) #1

declare dso_local i32 @Z_TRY_ADDREF(i32) #1

declare dso_local i32 @spl_dual_it_next(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

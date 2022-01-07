; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_generators.c_calc_gc_buffer_size.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_generators.c_calc_gc_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }

@func = common dso_local global i32 0, align 4
@ZEND_CALL_HAS_SYMBOL_TABLE = common dso_local global i32 0, align 4
@ZEND_CALL_FREE_EXTRA_ARGS = common dso_local global i32 0, align 4
@ZEND_CALL_RELEASE_THIS = common dso_local global i32 0, align 4
@ZEND_CALL_CLOSURE = common dso_local global i32 0, align 4
@ZEND_LIVE_MASK = common dso_local global i64 0, align 8
@ZEND_LIVE_TMPVAR = common dso_local global i64 0, align 8
@ZEND_LIVE_LOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @calc_gc_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_gc_buffer_size(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  store i64 4, i64* %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %150

15:                                               ; preds = %1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %4, align 8
  %19 = load i32, i32* @func, align 4
  %20 = call %struct.TYPE_11__* @EX(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %5, align 8
  %22 = call i32 (...) @EX_CALL_INFO()
  %23 = load i32, i32* @ZEND_CALL_HAS_SYMBOL_TABLE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %26, %15
  %33 = call i32 (...) @EX_CALL_INFO()
  %34 = load i32, i32* @ZEND_CALL_FREE_EXTRA_ARGS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = call i64 (...) @EX_NUM_ARGS()
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %37, %32
  %46 = call i32 (...) @EX_CALL_INFO()
  %47 = load i32, i32* @ZEND_CALL_RELEASE_THIS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %3, align 8
  %54 = call i32 (...) @EX_CALL_INFO()
  %55 = load i32, i32* @ZEND_CALL_CLOSURE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %3, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %125

69:                                               ; preds = %45
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = sub nsw i64 %76, 1
  store i64 %77, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %78

78:                                               ; preds = %121, %69
  %79 = load i64, i64* %6, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp ult i64 %79, %82
  br i1 %83, label %84, label %124

84:                                               ; preds = %78
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i64 %88
  store %struct.TYPE_14__* %89, %struct.TYPE_14__** %8, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ugt i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %124

96:                                               ; preds = %84
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %96
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ZEND_LIVE_MASK, align 8
  %107 = and i64 %105, %106
  store i64 %107, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @ZEND_LIVE_TMPVAR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @ZEND_LIVE_LOOP, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111, %102
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %3, align 8
  br label %118

118:                                              ; preds = %115, %111
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %6, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %6, align 8
  br label %78

124:                                              ; preds = %95, %78
  br label %125

125:                                              ; preds = %124, %45
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %10, align 8
  br label %137

137:                                              ; preds = %141, %131
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %140 = icmp ne %struct.TYPE_15__* %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %137
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %145 = call %struct.TYPE_15__* @zend_generator_get_child(%struct.TYPE_17__* %143, %struct.TYPE_15__* %144)
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %10, align 8
  %146 = load i64, i64* %3, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %3, align 8
  br label %137

148:                                              ; preds = %137
  br label %149

149:                                              ; preds = %148, %125
  br label %150

150:                                              ; preds = %149, %1
  %151 = load i64, i64* %3, align 8
  ret i64 %151
}

declare dso_local %struct.TYPE_11__* @EX(i32) #1

declare dso_local i32 @EX_CALL_INFO(...) #1

declare dso_local i64 @EX_NUM_ARGS(...) #1

declare dso_local %struct.TYPE_15__* @zend_generator_get_child(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

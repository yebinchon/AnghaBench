; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_func_info.c_zend_range_info.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_zend_func_info.c_zend_range_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@MAY_BE_RC1 = common dso_local global i32 0, align 4
@MAY_BE_FALSE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_KEY_LONG = common dso_local global i32 0, align 4
@MAY_BE_STRING = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_LONG = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_DOUBLE = common dso_local global i32 0, align 4
@MAY_BE_ARRAY_OF_STRING = common dso_local global i32 0, align 4
@MAY_BE_DOUBLE = common dso_local global i32 0, align 4
@MAY_BE_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @zend_range_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zend_range_info(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %139

19:                                               ; preds = %14, %2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_ssa_op1_info(i32 %22, i32* %23, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_ssa_op1_info(i32 %33, i32* %34, i32 %40)
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %42 = load i32, i32* @MAY_BE_RC1, align 4
  %43 = load i32, i32* @MAY_BE_FALSE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MAY_BE_ARRAY, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %65

53:                                               ; preds = %19
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_ssa_op1_info(i32 %56, i32* %57, i32 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %53, %19
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @MAY_BE_STRING, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @MAY_BE_STRING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i32, i32* @MAY_BE_ARRAY_OF_LONG, align 4
  %77 = load i32, i32* @MAY_BE_ARRAY_OF_DOUBLE, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @MAY_BE_ARRAY_OF_STRING, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %75, %70, %65
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %86 = load i32, i32* @MAY_BE_STRING, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %104, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %93 = load i32, i32* @MAY_BE_STRING, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %100 = load i32, i32* @MAY_BE_STRING, align 4
  %101 = or i32 %99, %100
  %102 = and i32 %98, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97, %90, %83
  %105 = load i32, i32* @MAY_BE_ARRAY_OF_DOUBLE, align 4
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @MAY_BE_ANY, align 4
  %111 = load i32, i32* @MAY_BE_STRING, align 4
  %112 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %113 = or i32 %111, %112
  %114 = sub nsw i32 %110, %113
  %115 = and i32 %109, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %108
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @MAY_BE_ANY, align 4
  %120 = load i32, i32* @MAY_BE_STRING, align 4
  %121 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %122 = or i32 %120, %121
  %123 = sub nsw i32 %119, %122
  %124 = and i32 %118, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %117
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @MAY_BE_ANY, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @MAY_BE_DOUBLE, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @MAY_BE_ARRAY_OF_LONG, align 4
  %134 = load i32, i32* %9, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %132, %126
  br label %137

137:                                              ; preds = %136, %117, %108
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %3, align 4
  br label %153

139:                                              ; preds = %14
  %140 = load i32, i32* @MAY_BE_RC1, align 4
  %141 = load i32, i32* @MAY_BE_FALSE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @MAY_BE_ARRAY, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MAY_BE_ARRAY_KEY_LONG, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @MAY_BE_ARRAY_OF_LONG, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @MAY_BE_ARRAY_OF_DOUBLE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @MAY_BE_ARRAY_OF_STRING, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %139, %137
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @_ssa_op1_info(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

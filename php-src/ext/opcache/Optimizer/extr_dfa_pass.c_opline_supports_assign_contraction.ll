; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dfa_pass.c_opline_supports_assign_contraction.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_dfa_pass.c_opline_supports_assign_contraction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@ZEND_NEW = common dso_local global i64 0, align 8
@ZEND_DO_ICALL = common dso_local global i64 0, align 8
@ZEND_DO_UCALL = common dso_local global i64 0, align 8
@ZEND_DO_FCALL = common dso_local global i64 0, align 8
@ZEND_DO_FCALL_BY_NAME = common dso_local global i64 0, align 8
@MAY_BE_NULL = common dso_local global i64 0, align 8
@MAY_BE_FALSE = common dso_local global i64 0, align 8
@MAY_BE_TRUE = common dso_local global i64 0, align 8
@MAY_BE_LONG = common dso_local global i64 0, align 8
@MAY_BE_DOUBLE = common dso_local global i64 0, align 8
@MAY_BE_ANY = common dso_local global i64 0, align 8
@ZEND_POST_INC = common dso_local global i64 0, align 8
@ZEND_POST_DEC = common dso_local global i64 0, align 8
@IS_CV = common dso_local global i64 0, align 8
@ZEND_INIT_ARRAY = common dso_local global i64 0, align 8
@ZEND_CAST = common dso_local global i64 0, align 8
@IS_ARRAY = common dso_local global i64 0, align 8
@IS_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*, i32, i64)* @opline_supports_assign_contraction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opline_supports_assign_contraction(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ZEND_NEW, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %169

18:                                               ; preds = %4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZEND_DO_ICALL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ZEND_DO_UCALL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ZEND_DO_FCALL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZEND_DO_FCALL_BY_NAME, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %36, %30, %24, %18
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* @MAY_BE_NULL, align 8
  %52 = load i64, i64* @MAY_BE_FALSE, align 8
  %53 = or i64 %51, %52
  %54 = load i64, i64* @MAY_BE_TRUE, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* @MAY_BE_LONG, align 8
  %57 = or i64 %55, %56
  %58 = load i64, i64* @MAY_BE_DOUBLE, align 8
  %59 = or i64 %57, %58
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @MAY_BE_ANY, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* %11, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %62, %64
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %169

69:                                               ; preds = %36
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ZEND_POST_INC, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ZEND_POST_DEC, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %75, %69
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IS_CV, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %94, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = icmp ne i64 %91, %92
  br label %94

94:                                               ; preds = %87, %81
  %95 = phi i1 [ true, %81 ], [ %93, %87 ]
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %169

97:                                               ; preds = %75
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZEND_INIT_ARRAY, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %97
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @IS_CV, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %116, label %109

109:                                              ; preds = %103
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %109, %103
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IS_CV, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 5
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp ne i64 %126, %127
  br label %129

129:                                              ; preds = %122, %116
  %130 = phi i1 [ true, %116 ], [ %128, %122 ]
  br label %131

131:                                              ; preds = %129, %109
  %132 = phi i1 [ false, %109 ], [ %130, %129 ]
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %5, align 4
  br label %169

134:                                              ; preds = %97
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @ZEND_CAST, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %168

140:                                              ; preds = %134
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IS_ARRAY, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @IS_OBJECT, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %146, %140
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IS_CV, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %9, align 8
  %164 = icmp ne i64 %162, %163
  br label %165

165:                                              ; preds = %158, %152
  %166 = phi i1 [ true, %152 ], [ %164, %158 ]
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %5, align 4
  br label %169

168:                                              ; preds = %146, %134
  store i32 1, i32* %5, align 4
  br label %169

169:                                              ; preds = %168, %165, %131, %94, %42, %17
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

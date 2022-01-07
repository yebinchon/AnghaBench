; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_escape_analysis.c_is_allocation_def.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_escape_analysis.c_is_allocation_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@IS_CONST = common dso_local global i32 0, align 4
@ZEND_ACC_INHERITED = common dso_local global i32 0, align 4
@ZEND_ACC_IMPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@ZEND_ACC_EXPLICIT_ABSTRACT_CLASS = common dso_local global i32 0, align 4
@ZEND_ACC_INTERFACE = common dso_local global i32 0, align 4
@ZEND_ACC_TRAIT = common dso_local global i32 0, align 4
@ZEND_ACC_CONSTANTS_UPDATED = common dso_local global i32 0, align 4
@IS_ARRAY = common dso_local global i32 0, align 4
@IS_CV = common dso_local global i32 0, align 4
@MAY_BE_ARRAY = common dso_local global i32 0, align 4
@MAY_BE_UNDEF = common dso_local global i32 0, align 4
@MAY_BE_NULL = common dso_local global i32 0, align 4
@MAY_BE_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32, i32*)* @is_allocation_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_allocation_def(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i64 %20
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %12, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i64 %26
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %13, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %148

33:                                               ; preds = %5
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %147 [
    i32 130, label %37
    i32 129, label %38
    i32 128, label %106
    i32 134, label %134
  ]

37:                                               ; preds = %33
  store i32 1, i32* %6, align 4
  br label %200

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IS_CONST, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %105

44:                                               ; preds = %38
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @CRT_CONSTANT(i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = call i32 @Z_STR_P(i32 %50)
  %52 = call %struct.TYPE_13__* @get_class_entry(i32* %45, i32 %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %14, align 8
  %53 = load i32, i32* @ZEND_ACC_INHERITED, align 4
  %54 = load i32, i32* @ZEND_ACC_IMPLICIT_ABSTRACT_CLASS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ZEND_ACC_EXPLICIT_ABSTRACT_CLASS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @ZEND_ACC_INTERFACE, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @ZEND_ACC_TRAIT, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %15, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %104

64:                                               ; preds = %44
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %104, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %104, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %84
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ZEND_ACC_CONSTANTS_UPDATED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  store i32 1, i32* %6, align 4
  br label %200

104:                                              ; preds = %96, %89, %84, %79, %74, %69, %64, %44
  br label %105

105:                                              ; preds = %104, %38
  br label %147

106:                                              ; preds = %33
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @IS_CONST, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CRT_CONSTANT(i32 %115)
  %117 = call i32 @Z_TYPE_P(i32 %116)
  %118 = load i32, i32* @IS_ARRAY, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  br label %200

121:                                              ; preds = %112, %106
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @IS_CV, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %121
  %128 = call i32 (...) @OP1_INFO()
  %129 = load i32, i32* @MAY_BE_ARRAY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 1, i32* %6, align 4
  br label %200

133:                                              ; preds = %127, %121
  br label %147

134:                                              ; preds = %33
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @IS_CV, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = call i32 (...) @OP1_INFO()
  %142 = load i32, i32* @MAY_BE_ARRAY, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 1, i32* %6, align 4
  br label %200

146:                                              ; preds = %140, %134
  br label %147

147:                                              ; preds = %33, %146, %133, %105
  br label %199

148:                                              ; preds = %5
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %198

154:                                              ; preds = %148
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %197 [
    i32 134, label %158
    i32 133, label %186
    i32 132, label %186
    i32 131, label %186
  ]

158:                                              ; preds = %154
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @IS_CONST, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @CRT_CONSTANT(i32 %167)
  %169 = call i32 @Z_TYPE_P(i32 %168)
  %170 = load i32, i32* @IS_ARRAY, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 1, i32* %6, align 4
  br label %200

173:                                              ; preds = %164, %158
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @IS_CV, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = call i32 (...) @OP2_INFO()
  %181 = load i32, i32* @MAY_BE_ARRAY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  store i32 1, i32* %6, align 4
  br label %200

185:                                              ; preds = %179, %173
  br label %197

186:                                              ; preds = %154, %154, %154
  %187 = call i32 (...) @OP1_INFO()
  %188 = load i32, i32* @MAY_BE_UNDEF, align 4
  %189 = load i32, i32* @MAY_BE_NULL, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* @MAY_BE_FALSE, align 4
  %192 = or i32 %190, %191
  %193 = and i32 %187, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %186
  store i32 1, i32* %6, align 4
  br label %200

196:                                              ; preds = %186
  br label %197

197:                                              ; preds = %154, %196, %185
  br label %198

198:                                              ; preds = %197, %148
  br label %199

199:                                              ; preds = %198, %147
  store i32 0, i32* %6, align 4
  br label %200

200:                                              ; preds = %199, %195, %184, %172, %145, %132, %120, %103, %37
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local %struct.TYPE_13__* @get_class_entry(i32*, i32) #1

declare dso_local i32 @Z_STR_P(i32) #1

declare dso_local i32 @CRT_CONSTANT(i32) #1

declare dso_local i32 @Z_TYPE_P(i32) #1

declare dso_local i32 @OP1_INFO(...) #1

declare dso_local i32 @OP2_INFO(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

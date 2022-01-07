; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_escape_analysis.c_is_escape_use.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_escape_analysis.c_is_escape_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32, i32 }

@IS_CV = common dso_local global i32 0, align 4
@MAY_BE_OBJECT = common dso_local global i32 0, align 4
@ZEND_ARRAY_ELEMENT_REF = common dso_local global i32 0, align 4
@MAY_BE_REF = common dso_local global i32 0, align 4
@IS_UNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32)* @is_escape_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_escape_use(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %16
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %10, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %22
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %11, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %121

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %119 [
    i32 148, label %33
    i32 128, label %34
    i32 135, label %48
    i32 134, label %48
    i32 139, label %48
    i32 137, label %48
    i32 140, label %48
    i32 138, label %48
    i32 142, label %49
    i32 146, label %50
    i32 144, label %50
    i32 141, label %50
    i32 147, label %50
    i32 145, label %50
    i32 143, label %50
    i32 129, label %51
    i32 130, label %51
    i32 131, label %51
    i32 132, label %51
    i32 136, label %52
    i32 149, label %52
    i32 133, label %67
  ]

33:                                               ; preds = %29
  br label %120

34:                                               ; preds = %29
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IS_CV, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = call i32 (...) @OP1_INFO()
  %42 = load i32, i32* @MAY_BE_OBJECT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %195

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46, %34
  br label %120

48:                                               ; preds = %29, %29, %29, %29, %29, %29
  br label %120

49:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %195

50:                                               ; preds = %29, %29, %29, %29, %29, %29
  br label %120

51:                                               ; preds = %29, %29, %29, %29
  br label %120

52:                                               ; preds = %29, %29
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ZEND_ARRAY_ELEMENT_REF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %195

60:                                               ; preds = %52
  %61 = call i32 (...) @OP1_INFO()
  %62 = load i32, i32* @MAY_BE_OBJECT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %195

66:                                               ; preds = %60
  br label %120

67:                                               ; preds = %29
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i64 -1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 147
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 -1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 145
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %195

80:                                               ; preds = %73, %67
  %81 = call i32 (...) @OP1_INFO()
  %82 = load i32, i32* @MAY_BE_OBJECT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 1, i32* %5, align 4
  br label %195

86:                                               ; preds = %80
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 -1
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %11, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 -1
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %10, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IS_CV, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %117, label %96

96:                                               ; preds = %86
  %97 = call i32 (...) @OP1_INFO()
  %98 = load i32, i32* @MAY_BE_REF, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp uge i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106, %96, %86
  store i32 1, i32* %5, align 4
  br label %195

118:                                              ; preds = %106, %101
  br label %120

119:                                              ; preds = %29
  store i32 1, i32* %5, align 4
  br label %195

120:                                              ; preds = %118, %66, %51, %50, %48, %47, %33
  br label %121

121:                                              ; preds = %120, %4
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %181

127:                                              ; preds = %121
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %179 [
    i32 148, label %131
  ]

131:                                              ; preds = %127
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IS_CV, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %158, label %137

137:                                              ; preds = %131
  %138 = call i32 (...) @OP1_INFO()
  %139 = load i32, i32* @MAY_BE_REF, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %158, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp uge i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %142
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147, %137, %131
  store i32 1, i32* %5, align 4
  br label %195

159:                                              ; preds = %147, %142
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IS_CV, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IS_UNUSED, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %165, %159
  %172 = call i32 (...) @OP2_INFO()
  %173 = load i32, i32* @MAY_BE_OBJECT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 1, i32* %5, align 4
  br label %195

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %165
  br label %180

179:                                              ; preds = %127
  store i32 1, i32* %5, align 4
  br label %195

180:                                              ; preds = %178
  br label %181

181:                                              ; preds = %180, %121
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %181
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  switch i32 %190, label %192 [
    i32 148, label %191
    i32 128, label %191
    i32 136, label %191
    i32 149, label %191
  ]

191:                                              ; preds = %187, %187, %187, %187
  br label %193

192:                                              ; preds = %187
  store i32 1, i32* %5, align 4
  br label %195

193:                                              ; preds = %191
  br label %194

194:                                              ; preds = %193, %181
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %194, %192, %179, %176, %158, %119, %117, %85, %79, %65, %59, %49, %45
  %196 = load i32, i32* %5, align 4
  ret i32 %196
}

declare dso_local i32 @OP1_INFO(...) #1

declare dso_local i32 @OP2_INFO(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

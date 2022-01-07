; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_opcode.c_emit_live_range.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_opcode.c_emit_live_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@ZEND_LIVE_SILENCE = common dso_local global i64 0, align 8
@ZEND_LIVE_ROPE = common dso_local global i64 0, align 8
@ZEND_LIVE_LOOP = common dso_local global i64 0, align 8
@ZEND_DO_FCALL = common dso_local global i32 0, align 4
@ZEND_LIVE_NEW = common dso_local global i64 0, align 8
@ZEND_LIVE_TMPVAR = common dso_local global i64 0, align 8
@ZEND_FREE = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i64, i64, i64, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*)* @emit_live_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_live_range(%struct.TYPE_13__* %0, i64 %1, i64 %2, i64 %3, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* %4, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %10, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i64 %22
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %11, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i64 %28
  store %struct.TYPE_14__* %29, %struct.TYPE_14__** %13, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %99 [
    i32 153, label %33
    i32 152, label %33
    i32 129, label %33
    i32 131, label %35
    i32 132, label %35
    i32 150, label %35
    i32 149, label %35
    i32 142, label %35
    i32 147, label %35
    i32 143, label %35
    i32 151, label %36
    i32 128, label %40
    i32 141, label %44
    i32 140, label %44
    i32 130, label %48
    i32 148, label %113
  ]

33:                                               ; preds = %5, %5, %5
  %34 = call i32 @ZEND_ASSERT(i32 0)
  br label %234

35:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  br label %234

36:                                               ; preds = %5
  %37 = load i64, i64* @ZEND_LIVE_SILENCE, align 8
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %227

40:                                               ; preds = %5
  %41 = load i64, i64* @ZEND_LIVE_ROPE, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 -1
  store %struct.TYPE_14__* %43, %struct.TYPE_14__** %11, align 8
  br label %227

44:                                               ; preds = %5, %5
  %45 = load i64, i64* @ZEND_LIVE_LOOP, align 8
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %8, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %8, align 8
  br label %227

48:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %16, align 8
  br label %50

50:                                               ; preds = %83, %48
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i64 1
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %54 = icmp ult %struct.TYPE_14__* %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %50
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 1
  store %struct.TYPE_14__* %57, %struct.TYPE_14__** %11, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZEND_DO_FCALL, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load i32, i32* %15, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %84

69:                                               ; preds = %65
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %15, align 4
  br label %83

72:                                               ; preds = %55
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %82 [
    i32 138, label %76
    i32 137, label %76
    i32 135, label %76
    i32 139, label %76
    i32 133, label %76
    i32 136, label %76
    i32 134, label %76
    i32 130, label %76
    i32 145, label %79
    i32 144, label %79
    i32 146, label %79
  ]

76:                                               ; preds = %72, %72, %72, %72, %72, %72, %72, %72
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %82

79:                                               ; preds = %72, %72, %72
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %72, %79, %76
  br label %83

83:                                               ; preds = %82, %69
  br label %50

84:                                               ; preds = %68, %50
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @ZEND_LIVE_NEW, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add i64 %88, 1
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  %92 = call i32 @emit_live_range_raw(%struct.TYPE_13__* %85, i64 %86, i64 %87, i64 %89, i64 %91)
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  %95 = load i64, i64* %9, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %234

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %5, %98
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* @ZEND_LIVE_TMPVAR, align 8
  store i64 %102, i64* %14, align 8
  %103 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %10, align 8
  %104 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* %103, null
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %10, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %109 = call i32 %106(%struct.TYPE_13__* %107, %struct.TYPE_14__* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %234

112:                                              ; preds = %105, %99
  br label %227

113:                                              ; preds = %5
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %116, %117
  %119 = call i32 @ZEND_CALL_VAR_NUM(i32* null, i64 %118)
  %120 = sext i32 %119 to i64
  store i64 %120, i64* %17, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %18, align 8
  %122 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %10, align 8
  %123 = icmp ne i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %113
  %125 = load i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, %struct.TYPE_14__*)** %10, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = call i32 %125(%struct.TYPE_13__* %126, %struct.TYPE_14__* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  br label %234

131:                                              ; preds = %124, %113
  br label %132

132:                                              ; preds = %139, %131
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i64 -1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ZEND_FREE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 -1
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %18, align 8
  br label %132

142:                                              ; preds = %132
  %143 = load i64, i64* @ZEND_LIVE_TMPVAR, align 8
  store i64 %143, i64* %14, align 8
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = ptrtoint %struct.TYPE_14__* %144 to i64
  %149 = ptrtoint %struct.TYPE_14__* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 32
  store i64 %151, i64* %8, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %9, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %142
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %157 = load i64, i64* %7, align 8
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* %8, align 8
  %160 = load i64, i64* %9, align 8
  %161 = call i32 @emit_live_range_raw(%struct.TYPE_13__* %156, i64 %157, i64 %158, i64 %159, i64 %160)
  br label %162

162:                                              ; preds = %155, %142
  br label %163

163:                                              ; preds = %200, %162
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 -1
  store %struct.TYPE_14__* %165, %struct.TYPE_14__** %13, align 8
  br label %166

166:                                              ; preds = %163
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IS_TMP_VAR, align 4
  %171 = load i32, i32* @IS_VAR, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %166
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %17, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %200, label %182

182:                                              ; preds = %175, %166
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @IS_TMP_VAR, align 4
  %187 = load i32, i32* @IS_VAR, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %17, align 8
  %197 = icmp eq i64 %195, %196
  br label %198

198:                                              ; preds = %191, %182
  %199 = phi i1 [ false, %182 ], [ %197, %191 ]
  br label %200

200:                                              ; preds = %198, %175
  %201 = phi i1 [ true, %175 ], [ %199, %198 ]
  %202 = xor i1 %201, true
  br i1 %202, label %163, label %203

203:                                              ; preds = %200
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i64 1
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %207, align 8
  %209 = ptrtoint %struct.TYPE_14__* %205 to i64
  %210 = ptrtoint %struct.TYPE_14__* %208 to i64
  %211 = sub i64 %209, %210
  %212 = sdiv exact i64 %211, 32
  store i64 %212, i64* %8, align 8
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = ptrtoint %struct.TYPE_14__* %213 to i64
  %218 = ptrtoint %struct.TYPE_14__* %216 to i64
  %219 = sub i64 %217, %218
  %220 = sdiv exact i64 %219, 32
  store i64 %220, i64* %9, align 8
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* %14, align 8
  %224 = load i64, i64* %8, align 8
  %225 = load i64, i64* %9, align 8
  %226 = call i32 @emit_live_range_raw(%struct.TYPE_13__* %221, i64 %222, i64 %223, i64 %224, i64 %225)
  br label %234

227:                                              ; preds = %112, %44, %40, %36
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %229 = load i64, i64* %7, align 8
  %230 = load i64, i64* %14, align 8
  %231 = load i64, i64* %8, align 8
  %232 = load i64, i64* %9, align 8
  %233 = call i32 @emit_live_range_raw(%struct.TYPE_13__* %228, i64 %229, i64 %230, i64 %231, i64 %232)
  br label %234

234:                                              ; preds = %227, %203, %130, %111, %97, %35, %33
  ret void
}

declare dso_local i32 @ZEND_ASSERT(i32) #1

declare dso_local i32 @emit_live_range_raw(%struct.TYPE_13__*, i64, i64, i64, i64) #1

declare dso_local i32 @ZEND_CALL_VAR_NUM(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

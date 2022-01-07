; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_ApplySelectedField.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_datetime.c_DATETIME_ApplySelectedField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }

@DTHT_DATEFIELD = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@GDT_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @DATETIME_ApplySelectedField to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DATETIME_ApplySelectedField(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DTHT_DATEFIELD, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %6, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = bitcast %struct.TYPE_9__* %7 to i8*
  %18 = bitcast %struct.TYPE_9__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %1
  br label %239

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 136
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 128
  br i1 %46, label %47, label %53

47:                                               ; preds = %38, %29
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %5, align 4
  br label %76

53:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = mul nsw i32 %61, 10
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %62, %69
  %71 = sub nsw i32 %70, 48
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %60
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %54

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %47
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %210 [
    i32 137, label %86
    i32 129, label %86
    i32 144, label %107
    i32 145, label %107
    i32 139, label %121
    i32 131, label %121
    i32 141, label %125
    i32 133, label %125
    i32 143, label %128
    i32 135, label %128
    i32 142, label %169
    i32 134, label %169
    i32 140, label %172
    i32 132, label %172
    i32 138, label %175
    i32 130, label %175
    i32 136, label %178
    i32 128, label %178
  ]

86:                                               ; preds = %76, %76
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %8, align 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = srem i32 %92, 100
  %94 = sub nsw i32 %90, %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %94, %95
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %99 = call i32 @DATETIME_IsDateInValidRange(%struct.TYPE_10__* %98, %struct.TYPE_9__* %7)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %6, align 8
  br label %106

103:                                              ; preds = %86
  %104 = load i32, i32* %8, align 4
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %101
  br label %210

107:                                              ; preds = %76, %76
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %5, align 4
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %113 = call i32 @DATETIME_IsDateInValidRange(%struct.TYPE_10__* %112, %struct.TYPE_9__* %7)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i64, i64* @TRUE, align 8
  store i64 %116, i64* %6, align 8
  br label %120

117:                                              ; preds = %107
  %118 = load i32, i32* %8, align 4
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %115
  br label %210

121:                                              ; preds = %76, %76
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = load i64, i64* @TRUE, align 8
  store i64 %124, i64* %6, align 8
  br label %210

125:                                              ; preds = %76, %76
  %126 = load i32, i32* %5, align 4
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %126, i32* %127, align 4
  br label %210

128:                                              ; preds = %76, %76
  %129 = load i32, i32* %5, align 4
  %130 = icmp sge i32 %129, 24
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %132, 20
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %5, align 4
  %136 = icmp sge i32 %135, 13
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 %138, i32* %139, align 4
  br label %168

140:                                              ; preds = %134
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = icmp sge i32 %145, 12
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 12
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 12
  br label %154

154:                                              ; preds = %151, %150
  %155 = phi i32 [ 12, %150 ], [ %153, %151 ]
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 %155, i32* %156, align 4
  br label %166

157:                                              ; preds = %143
  %158 = load i32, i32* %5, align 4
  %159 = icmp eq i32 %158, 12
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %163

161:                                              ; preds = %157
  %162 = load i32, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %160
  %164 = phi i32 [ 0, %160 ], [ %162, %161 ]
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 %164, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %154
  br label %167

167:                                              ; preds = %166, %140
  br label %168

168:                                              ; preds = %167, %137
  br label %210

169:                                              ; preds = %76, %76
  %170 = load i32, i32* %5, align 4
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  store i32 %170, i32* %171, align 4
  br label %210

172:                                              ; preds = %76, %76
  %173 = load i32, i32* %5, align 4
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 4
  store i32 %173, i32* %174, align 4
  br label %210

175:                                              ; preds = %76, %76
  %176 = load i32, i32* %5, align 4
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 5
  store i32 %176, i32* %177, align 4
  br label %210

178:                                              ; preds = %76, %76
  %179 = load i32, i32* %5, align 4
  %180 = icmp eq i32 %179, 97
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %5, align 4
  %183 = icmp eq i32 %182, 65
  br i1 %183, label %184, label %193

184:                                              ; preds = %181, %178
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp sge i32 %186, 12
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, 12
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %188, %184
  br label %209

193:                                              ; preds = %181
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %194, 112
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %5, align 4
  %198 = icmp eq i32 %197, 80
  br i1 %198, label %199, label %208

199:                                              ; preds = %196, %193
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp slt i32 %201, 12
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 12
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %203, %199
  br label %208

208:                                              ; preds = %207, %196
  br label %209

209:                                              ; preds = %208, %192
  br label %210

210:                                              ; preds = %76, %209, %175, %172, %169, %168, %125, %121, %120, %106
  %211 = load i64, i64* %6, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %231

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i64 @MONTHCAL_MonthLength(i32 %218, i32 %220)
  %222 = icmp sgt i64 %216, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %213
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @MONTHCAL_MonthLength(i32 %225, i32 %227)
  %229 = trunc i64 %228 to i32
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 2
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %223, %213, %210
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %233 = load i32, i32* @GDT_VALID, align 4
  %234 = call i64 @DATETIME_SetSystemTime(%struct.TYPE_10__* %232, i32 %233, %struct.TYPE_9__* %7)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %238 = call i32 @DATETIME_SendDateTimeChangeNotify(%struct.TYPE_10__* %237)
  br label %239

239:                                              ; preds = %28, %236, %231
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DATETIME_IsDateInValidRange(%struct.TYPE_10__*, %struct.TYPE_9__*) #2

declare dso_local i64 @MONTHCAL_MonthLength(i32, i32) #2

declare dso_local i64 @DATETIME_SetSystemTime(%struct.TYPE_10__*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @DATETIME_SendDateTimeChangeNotify(%struct.TYPE_10__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

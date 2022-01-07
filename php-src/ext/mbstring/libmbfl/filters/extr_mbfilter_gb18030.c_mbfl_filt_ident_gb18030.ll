; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_gb18030.c_mbfl_filt_ident_gb18030.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_gb18030.c_mbfl_filt_ident_gb18030.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_gb18030 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_gb18030(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 8
  %10 = and i32 %9, 255
  store i32 %10, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %12, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 %20, 128
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %19
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %37

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = shl i32 %31, 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %25
  br label %230

38:                                               ; preds = %2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %184

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 129
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 132
  br i1 %48, label %55, label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 144
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp sle i32 %53, 227
  br i1 %54, label %55, label %64

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %3, align 4
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = icmp sle i32 %59, 57
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 2, i32* %63, align 4
  br label %183

64:                                               ; preds = %58, %55, %52, %49
  %65 = load i32, i32* %5, align 4
  %66 = icmp sge i32 %65, 170
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp sle i32 %68, 175
  br i1 %69, label %76, label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %5, align 4
  %72 = icmp sge i32 %71, 248
  br i1 %72, label %73, label %85

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = icmp sle i32 %74, 254
  br i1 %75, label %76, label %85

76:                                               ; preds = %73, %67
  %77 = load i32, i32* %3, align 4
  %78 = icmp sge i32 %77, 161
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = icmp sle i32 %80, 254
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %182

85:                                               ; preds = %79, %76, %73, %70
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %86, 161
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp sle i32 %89, 167
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = icmp sge i32 %92, 64
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32, i32* %3, align 4
  %96 = icmp slt i32 %95, 161
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 127
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 4
  br label %181

103:                                              ; preds = %97, %94, %91, %88, %85
  %104 = load i32, i32* %5, align 4
  %105 = icmp sge i32 %104, 161
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp sle i32 %107, 169
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load i32, i32* %3, align 4
  %111 = icmp sge i32 %110, 161
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = icmp sle i32 %113, 254
  br i1 %114, label %172, label %115

115:                                              ; preds = %112, %109, %106, %103
  %116 = load i32, i32* %5, align 4
  %117 = icmp sge i32 %116, 176
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = icmp sle i32 %119, 247
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %3, align 4
  %123 = icmp sge i32 %122, 161
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* %3, align 4
  %126 = icmp sle i32 %125, 254
  br i1 %126, label %172, label %127

127:                                              ; preds = %124, %121, %118, %115
  %128 = load i32, i32* %5, align 4
  %129 = icmp sge i32 %128, 129
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = icmp sle i32 %131, 160
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i32, i32* %3, align 4
  %135 = icmp sge i32 %134, 64
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %3, align 4
  %138 = icmp sle i32 %137, 254
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 127
  br i1 %141, label %172, label %142

142:                                              ; preds = %139, %136, %133, %130, %127
  %143 = load i32, i32* %5, align 4
  %144 = icmp sge i32 %143, 170
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32, i32* %5, align 4
  %147 = icmp sle i32 %146, 254
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* %3, align 4
  %150 = icmp sge i32 %149, 64
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* %3, align 4
  %153 = icmp sle i32 %152, 160
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %3, align 4
  %156 = icmp ne i32 %155, 127
  br i1 %156, label %172, label %157

157:                                              ; preds = %154, %151, %148, %145, %142
  %158 = load i32, i32* %5, align 4
  %159 = icmp sge i32 %158, 168
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load i32, i32* %5, align 4
  %162 = icmp sle i32 %161, 169
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load i32, i32* %3, align 4
  %165 = icmp sge i32 %164, 64
  br i1 %165, label %166, label %175

166:                                              ; preds = %163
  %167 = load i32, i32* %3, align 4
  %168 = icmp sle i32 %167, 160
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* %3, align 4
  %171 = icmp ne i32 %170, 127
  br i1 %171, label %172, label %175

172:                                              ; preds = %169, %154, %139, %124, %112
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 4
  br label %180

175:                                              ; preds = %169, %166, %163, %160, %157
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32 0, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %172
  br label %181

181:                                              ; preds = %180, %100
  br label %182

182:                                              ; preds = %181, %82
  br label %183

183:                                              ; preds = %182, %61
  br label %229

184:                                              ; preds = %38
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %204

189:                                              ; preds = %184
  %190 = load i32, i32* %3, align 4
  %191 = icmp sgt i32 %190, 128
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = load i32, i32* %3, align 4
  %194 = icmp slt i32 %193, 255
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  store i32 3, i32* %197, align 4
  br label %203

198:                                              ; preds = %192, %189
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 0, i32* %202, align 4
  br label %203

203:                                              ; preds = %198, %195
  br label %228

204:                                              ; preds = %184
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 3
  br i1 %208, label %209, label %224

209:                                              ; preds = %204
  %210 = load i32, i32* %3, align 4
  %211 = icmp sge i32 %210, 48
  br i1 %211, label %212, label %218

212:                                              ; preds = %209
  %213 = load i32, i32* %3, align 4
  %214 = icmp slt i32 %213, 64
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  store i32 0, i32* %217, align 4
  br label %223

218:                                              ; preds = %212, %209
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 4
  br label %223

223:                                              ; preds = %218, %215
  br label %227

224:                                              ; preds = %204
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i32 1, i32* %226, align 4
  br label %227

227:                                              ; preds = %224, %223
  br label %228

228:                                              ; preds = %227, %203
  br label %229

229:                                              ; preds = %228, %183
  br label %230

230:                                              ; preds = %229, %37
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

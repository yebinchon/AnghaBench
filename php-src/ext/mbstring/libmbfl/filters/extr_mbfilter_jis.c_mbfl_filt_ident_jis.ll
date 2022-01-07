; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_ident_jis.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_jis.c_mbfl_filt_ident_jis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @mbfl_filt_ident_jis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbfl_filt_ident_jis(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %5

5:                                                ; preds = %181, %151, %127, %101, %73, %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 15
  switch i32 %9, label %191 [
    i32 0, label %10
    i32 1, label %66
    i32 2, label %85
    i32 3, label %110
    i32 4, label %136
    i32 5, label %160
  ]

10:                                               ; preds = %5
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 27
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %15, align 4
  br label %65

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 14
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 32, i32* %23, align 4
  br label %64

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 15
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %63

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 144
  br i1 %39, label %40, label %51

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %3, align 4
  %42 = icmp sgt i32 %41, 32
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 127
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %62

51:                                               ; preds = %43, %40, %35
  %52 = load i32, i32* %3, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 128
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %61

58:                                               ; preds = %54, %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %57
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %27
  br label %64

64:                                               ; preds = %63, %21
  br label %65

65:                                               ; preds = %64, %13
  br label %194

66:                                               ; preds = %5
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, -16
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %71, 27
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %5

74:                                               ; preds = %66
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 33
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = icmp sgt i32 %78, 126
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %74
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83
  br label %194

85:                                               ; preds = %5
  %86 = load i32, i32* %3, align 4
  %87 = icmp eq i32 %86, 36
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %109

93:                                               ; preds = %85
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 40
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 3
  store i32 %100, i32* %98, align 4
  br label %108

101:                                              ; preds = %93
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, -16
  store i32 %107, i32* %105, align 4
  br label %5

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108, %88
  br label %194

110:                                              ; preds = %5
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, 64
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %114, 66
  br i1 %115, label %116, label %119

116:                                              ; preds = %113, %110
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  store i32 128, i32* %118, align 4
  br label %135

119:                                              ; preds = %113
  %120 = load i32, i32* %3, align 4
  %121 = icmp eq i32 %120, 40
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %134

127:                                              ; preds = %119
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  store i32 1, i32* %129, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, -16
  store i32 %133, i32* %131, align 4
  br label %5

134:                                              ; preds = %122
  br label %135

135:                                              ; preds = %134, %116
  br label %194

136:                                              ; preds = %5
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 64
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = icmp eq i32 %140, 66
  br i1 %141, label %142, label %145

142:                                              ; preds = %139, %136
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 128, i32* %144, align 4
  br label %159

145:                                              ; preds = %139
  %146 = load i32, i32* %3, align 4
  %147 = icmp eq i32 %146, 68
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 0
  store i32 144, i32* %150, align 4
  br label %158

151:                                              ; preds = %145
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, -16
  store i32 %157, i32* %155, align 4
  br label %5

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %142
  br label %194

160:                                              ; preds = %5
  %161 = load i32, i32* %3, align 4
  %162 = icmp eq i32 %161, 66
  br i1 %162, label %166, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %3, align 4
  %165 = icmp eq i32 %164, 72
  br i1 %165, label %166, label %169

166:                                              ; preds = %163, %160
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 0, i32* %168, align 4
  br label %190

169:                                              ; preds = %163
  %170 = load i32, i32* %3, align 4
  %171 = icmp eq i32 %170, 74
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 16, i32* %174, align 4
  br label %189

175:                                              ; preds = %169
  %176 = load i32, i32* %3, align 4
  %177 = icmp eq i32 %176, 73
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  store i32 32, i32* %180, align 4
  br label %188

181:                                              ; preds = %175
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 1
  store i32 1, i32* %183, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = and i32 %186, -16
  store i32 %187, i32* %185, align 4
  br label %5

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %172
  br label %190

190:                                              ; preds = %189, %166
  br label %194

191:                                              ; preds = %5
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  store i32 0, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %190, %159, %135, %109, %84, %65
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

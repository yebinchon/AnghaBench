; ModuleID = '/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_mbfl_filt_ident_2022jpms.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mbstring/libmbfl/filters/extr_mbfilter_iso2022_jp_ms.c_mbfl_filt_ident_2022jpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbfl_filt_ident_2022jpms(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  br label %5

5:                                                ; preds = %164, %137, %113, %87, %59, %2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 15
  switch i32 %9, label %174 [
    i32 0, label %10
    i32 1, label %52
    i32 2, label %71
    i32 3, label %96
    i32 4, label %122
    i32 5, label %146
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
  br label %51

18:                                               ; preds = %10
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 128
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 160
  br i1 %27, label %28, label %39

28:                                               ; preds = %23, %18
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 32
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 128
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %50

39:                                               ; preds = %31, %28, %23
  %40 = load i32, i32* %3, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %42, %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %45
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %13
  br label %177

52:                                               ; preds = %5
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -16
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 27
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %5

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 33
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = icmp sgt i32 %64, 126
  br i1 %65, label %66, label %69

66:                                               ; preds = %63, %60
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %63
  br label %70

70:                                               ; preds = %69
  br label %177

71:                                               ; preds = %5
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %72, 36
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %95

79:                                               ; preds = %71
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 40
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 3
  store i32 %86, i32* %84, align 4
  br label %94

87:                                               ; preds = %79
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, -16
  store i32 %93, i32* %91, align 4
  br label %5

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %74
  br label %177

96:                                               ; preds = %5
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 64
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %3, align 4
  %101 = icmp eq i32 %100, 66
  br i1 %101, label %102, label %105

102:                                              ; preds = %99, %96
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 128, i32* %104, align 4
  br label %121

105:                                              ; preds = %99
  %106 = load i32, i32* %3, align 4
  %107 = icmp eq i32 %106, 40
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %120

113:                                              ; preds = %105
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, -16
  store i32 %119, i32* %117, align 4
  br label %5

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %102
  br label %177

122:                                              ; preds = %5
  %123 = load i32, i32* %3, align 4
  %124 = icmp eq i32 %123, 64
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = icmp eq i32 %126, 66
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 128, i32* %130, align 4
  br label %145

131:                                              ; preds = %125
  %132 = load i32, i32* %3, align 4
  %133 = icmp eq i32 %132, 63
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  store i32 160, i32* %136, align 4
  br label %144

137:                                              ; preds = %131
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, -16
  store i32 %143, i32* %141, align 4
  br label %5

144:                                              ; preds = %134
  br label %145

145:                                              ; preds = %144, %128
  br label %177

146:                                              ; preds = %5
  %147 = load i32, i32* %3, align 4
  %148 = icmp eq i32 %147, 66
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 0, i32* %151, align 4
  br label %173

152:                                              ; preds = %146
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %153, 74
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i32 0, i32* %157, align 4
  br label %172

158:                                              ; preds = %152
  %159 = load i32, i32* %3, align 4
  %160 = icmp eq i32 %159, 73
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  store i32 32, i32* %163, align 4
  br label %171

164:                                              ; preds = %158
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, -16
  store i32 %170, i32* %168, align 4
  br label %5

171:                                              ; preds = %161
  br label %172

172:                                              ; preds = %171, %155
  br label %173

173:                                              ; preds = %172, %149
  br label %177

174:                                              ; preds = %5
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %173, %145, %121, %95, %70, %51
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

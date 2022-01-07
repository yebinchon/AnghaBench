; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageRectangle.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd.c_gdImageRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageRectangle(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %36, i32 %37, i32 %38, i32 %39)
  br label %231

41:                                               ; preds = %32, %28, %6
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %53, %49
  %58 = load i32, i32* %13, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %181

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = ashr i32 %61, 1
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %21, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %21, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %21, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %16, align 4
  br label %78

78:                                               ; preds = %97, %60
  %79 = load i32, i32* %16, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp sgt i32 %79, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load i32, i32* %17, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %15, align 4
  br label %86

86:                                               ; preds = %91, %83
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %92, i32 %93, i32 %94, i32 %95)
  br label %86

97:                                               ; preds = %86
  br label %78

98:                                               ; preds = %78
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %121, %98
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %20, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load i32, i32* %17, align 4
  %109 = sub nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %115, %107
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %116, i32 %117, i32 %118, i32 %119)
  br label %110

121:                                              ; preds = %110
  br label %102

122:                                              ; preds = %102
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %123, %124
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %150, %122
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %130, %131
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %127
  %135 = load i32, i32* %17, align 4
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %144, %134
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %140, %141
  %143 = icmp slt i32 %138, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %145, i32 %146, i32 %147, i32 %148)
  br label %137

150:                                              ; preds = %137
  br label %127

151:                                              ; preds = %127
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %152, %153
  %155 = sub nsw i32 %154, 1
  store i32 %155, i32* %16, align 4
  br label %156

156:                                              ; preds = %179, %151
  %157 = load i32, i32* %16, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %159, %160
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %163, label %180

163:                                              ; preds = %156
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %13, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  br label %168

168:                                              ; preds = %173, %163
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %19, align 4
  %172 = icmp slt i32 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %16, align 4
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @gdImageSetPixel(%struct.TYPE_5__* %174, i32 %175, i32 %176, i32 %177)
  br label %168

179:                                              ; preds = %168
  br label %156

180:                                              ; preds = %156
  br label %231

181:                                              ; preds = %57
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %11, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185, %181
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @gdImageLine(%struct.TYPE_5__* %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195)
  br label %230

197:                                              ; preds = %185
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @gdImageLine(%struct.TYPE_5__* %198, i32 %199, i32 %200, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %11, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @gdImageLine(%struct.TYPE_5__* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %11, align 4
  %218 = sub nsw i32 %217, 1
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @gdImageLine(%struct.TYPE_5__* %212, i32 %213, i32 %215, i32 %216, i32 %218, i32 %219)
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %9, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* %11, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @gdImageLine(%struct.TYPE_5__* %221, i32 %222, i32 %224, i32 %225, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %197, %189
  br label %231

231:                                              ; preds = %35, %180, %230
  ret void
}

declare dso_local i32 @gdImageSetPixel(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i32 @gdImageLine(%struct.TYPE_5__*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

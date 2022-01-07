; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_add_abs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_add_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i32, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @add_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_abs(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
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
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %17, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %18, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %19, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  store i64* %30, i64** %20, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %21, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @Max(i32 %36, i32 %39)
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @Max(i32 %44, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @Max(i32 %51, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %63

63:                                               ; preds = %62, %3
  %64 = load i32, i32* %10, align 4
  %65 = call i64* @digitbuf_alloc(i32 %64)
  store i64* %65, i64** %8, align 8
  %66 = icmp eq i64* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %208

68:                                               ; preds = %63
  %69 = load i64*, i64** %8, align 8
  store i64* %69, i64** %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %70, %73
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %76, %79
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %144, %68
  %85 = load i32, i32* %14, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %147

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %87
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i64*, i64** %20, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %17, align 4
  br label %108

108:                                              ; preds = %98, %94, %87
  %109 = load i32, i32* %16, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %111
  %116 = load i64*, i64** %21, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %115, %111, %108
  %126 = load i32, i32* %17, align 4
  %127 = icmp sge i32 %126, 10
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* %17, align 4
  %130 = sub nsw i32 %129, 10
  %131 = sext i32 %130 to i64
  %132 = load i64*, i64** %9, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 %131, i64* %135, align 8
  store i32 1, i32* %17, align 4
  br label %143

136:                                              ; preds = %125
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = load i64*, i64** %9, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  store i32 0, i32* %17, align 4
  br label %143

143:                                              ; preds = %136, %128
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %14, align 4
  br label %84

147:                                              ; preds = %84
  br label %148

148:                                              ; preds = %157, %147
  %149 = load i32, i32* %10, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i64*, i64** %9, align 8
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br label %155

155:                                              ; preds = %151, %148
  %156 = phi i1 [ false, %148 ], [ %154, %151 ]
  br i1 %156, label %157, label %164

157:                                              ; preds = %155
  %158 = load i64*, i64** %9, align 8
  %159 = getelementptr inbounds i64, i64* %158, i32 1
  store i64* %159, i64** %9, align 8
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %11, align 4
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %10, align 4
  br label %148

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %178, %164
  %166 = load i32, i32* %10, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load i64*, i64** %9, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br label %176

176:                                              ; preds = %168, %165
  %177 = phi i1 [ false, %165 ], [ %175, %168 ]
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %10, align 4
  br label %165

181:                                              ; preds = %176
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %184, %181
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 5
  %188 = load i64*, i64** %187, align 8
  %189 = call i32 @digitbuf_free(i64* %188)
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load i64*, i64** %8, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 5
  store i64* %193, i64** %195, align 8
  %196 = load i64*, i64** %9, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 1
  store i64* %196, i64** %198, align 8
  %199 = load i32, i32* %11, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* %12, align 4
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  store i32 0, i32* %4, align 4
  br label %208

208:                                              ; preds = %185, %67
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @Max(i32, i32) #1

declare dso_local i64* @digitbuf_alloc(i32) #1

declare dso_local i32 @digitbuf_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_sub_abs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_numeric.c_sub_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i32, i32, i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @sub_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sub_abs(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
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
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @Max(i32 %39, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @Max(i32 %46, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %3
  %59 = load i32, i32* %10, align 4
  %60 = call i64* @digitbuf_alloc(i32 %59)
  store i64* %60, i64** %8, align 8
  %61 = icmp eq i64* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %4, align 4
  br label %203

63:                                               ; preds = %58
  %64 = load i64*, i64** %8, align 8
  store i64* %64, i64** %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %65, %68
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %71, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %139, %63
  %80 = load i32, i32* %14, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %142

82:                                               ; preds = %79
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* %18, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i64*, i64** %20, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %17, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %93, %89, %82
  %104 = load i32, i32* %16, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %103
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load i64*, i64** %21, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = sub nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %17, align 4
  br label %120

120:                                              ; preds = %110, %106, %103
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %124, 10
  %126 = sext i32 %125 to i64
  %127 = load i64*, i64** %9, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 %126, i64* %130, align 8
  store i32 -1, i32* %17, align 4
  br label %138

131:                                              ; preds = %120
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64*, i64** %9, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  store i64 %133, i64* %137, align 8
  store i32 0, i32* %17, align 4
  br label %138

138:                                              ; preds = %131, %123
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %14, align 4
  br label %79

142:                                              ; preds = %79
  br label %143

143:                                              ; preds = %152, %142
  %144 = load i32, i32* %10, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i64*, i64** %9, align 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp eq i64 %148, 0
  br label %150

150:                                              ; preds = %146, %143
  %151 = phi i1 [ false, %143 ], [ %149, %146 ]
  br i1 %151, label %152, label %159

152:                                              ; preds = %150
  %153 = load i64*, i64** %9, align 8
  %154 = getelementptr inbounds i64, i64* %153, i32 1
  store i64* %154, i64** %9, align 8
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %10, align 4
  br label %143

159:                                              ; preds = %150
  br label %160

160:                                              ; preds = %173, %159
  %161 = load i32, i32* %10, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load i64*, i64** %9, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 %165, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %164, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br label %171

171:                                              ; preds = %163, %160
  %172 = phi i1 [ false, %160 ], [ %170, %163 ]
  br i1 %172, label %173, label %176

173:                                              ; preds = %171
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %10, align 4
  br label %160

176:                                              ; preds = %171
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 0, i32* %11, align 4
  br label %180

180:                                              ; preds = %179, %176
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 5
  %183 = load i64*, i64** %182, align 8
  %184 = call i32 @digitbuf_free(i64* %183)
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i64*, i64** %8, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 5
  store i64* %188, i64** %190, align 8
  %191 = load i64*, i64** %9, align 8
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i64* %191, i64** %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load i32, i32* %12, align 4
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 4
  %200 = load i32, i32* %13, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %180, %62
  %204 = load i32, i32* %4, align 4
  ret i32 %204
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

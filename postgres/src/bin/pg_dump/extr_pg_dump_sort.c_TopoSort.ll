; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_TopoSort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_dump_sort.c_TopoSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"invalid dumpId %d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid dependency %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__**, i32, %struct.TYPE_4__**, i32*)* @TopoSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TopoSort(%struct.TYPE_4__** %0, i32 %1, %struct.TYPE_4__** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = call i32 (...) @getMaxDumpId()
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %243

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i64 @pg_malloc(i32 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i64 @pg_malloc0(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i64 @pg_malloc(i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %13, align 8
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %109, %26
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %112

51:                                               ; preds = %47
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %14, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %51
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %105, %69
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %75
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %81
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91, %81
  %96 = load i32, i32* %18, align 4
  %97 = call i32 @fatal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %17, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %17, align 4
  br label %75

108:                                              ; preds = %75
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %16, align 4
  br label %47

112:                                              ; preds = %47
  store i32 0, i32* %15, align 4
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %138, %112
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %16, align 4
  %117 = icmp sge i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %114
  %119 = load i32*, i32** %12, align 8
  %120 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %120, i64 %122
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %119, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load i32, i32* %16, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %132, i32* %137, align 4
  br label %138

138:                                              ; preds = %131, %118
  br label %114

139:                                              ; preds = %114
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %16, align 4
  br label %141

141:                                              ; preds = %195, %139
  %142 = load i32, i32* %15, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %196

144:                                              ; preds = %141
  %145 = load i32*, i32** %11, align 8
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %15, align 4
  %148 = call i32 @removeHeapElement(i32* %145, i32 %146)
  store i32 %148, i32* %17, align 4
  %149 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %149, i64 %151
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  store %struct.TYPE_4__* %153, %struct.TYPE_4__** %14, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %156 = load i32, i32* %16, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %158
  store %struct.TYPE_4__* %154, %struct.TYPE_4__** %159, align 8
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %192, %144
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %160
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %18, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %19, align 4
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %166
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %11, align 8
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  %190 = call i32 @addHeapElement(i32 %186, i32* %187, i32 %188)
  br label %191

191:                                              ; preds = %181, %166
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %18, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %18, align 4
  br label %160

195:                                              ; preds = %160
  br label %141

196:                                              ; preds = %141
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %233

199:                                              ; preds = %196
  store i32 0, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %200

200:                                              ; preds = %227, %199
  %201 = load i32, i32* %17, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %230

204:                                              ; preds = %200
  %205 = load i32*, i32** %12, align 8
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %204
  %212 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %17, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %212, i64 %218
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %18, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %221, i64 %224
  store %struct.TYPE_4__* %220, %struct.TYPE_4__** %225, align 8
  br label %226

226:                                              ; preds = %211, %204
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %17, align 4
  br label %200

230:                                              ; preds = %200
  %231 = load i32, i32* %18, align 4
  %232 = load i32*, i32** %9, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230, %196
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @free(i32* %234)
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @free(i32* %236)
  %238 = load i32*, i32** %13, align 8
  %239 = call i32 @free(i32* %238)
  %240 = load i32, i32* %16, align 4
  %241 = icmp eq i32 %240, 0
  %242 = zext i1 %241 to i32
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %233, %25
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @getMaxDumpId(...) #1

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @pg_malloc0(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @removeHeapElement(i32*, i32) #1

declare dso_local i32 @addHeapElement(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

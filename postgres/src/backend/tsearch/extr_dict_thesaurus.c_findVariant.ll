; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_findVariant.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_findVariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_7__*, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, %struct.TYPE_7__*, i64, %struct.TYPE_7__**, i32)* @findVariant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @findVariant(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i64 %2, %struct.TYPE_7__** %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_7__** %3, %struct.TYPE_7__*** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %14

14:                                               ; preds = %211, %5
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %15, i64 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %13, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %162, %14
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %165

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %44, %22
  %24 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %24, i64 %26
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %31, i64 %33
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br label %42

42:                                               ; preds = %30, %23
  %43 = phi i1 [ false, %23 ], [ %41, %30 ]
  br i1 %43, label %44, label %56

44:                                               ; preds = %42
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %52, i64 %54
  store %struct.TYPE_7__* %51, %struct.TYPE_7__** %55, align 8
  br label %23

56:                                               ; preds = %42
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %57, i64 %59
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = icmp eq %struct.TYPE_7__* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %64, %struct.TYPE_7__** %6, align 8
  br label %212

65:                                               ; preds = %56
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %65
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %78, i64 %80
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %13, align 8
  store i32 -1, i32* %12, align 4
  br label %162

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %142, %83
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %85, i64 %87
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %84
  %97 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %97, i64 %99
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %96
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %107, i64 %109
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %117, i64 %119
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %13, align 8
  br label %143

122:                                              ; preds = %106, %96
  %123 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %123, i64 %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %130, i64 %132
  store %struct.TYPE_7__* %129, %struct.TYPE_7__** %133, align 8
  %134 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %134, i64 %136
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = icmp eq %struct.TYPE_7__* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %122
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %6, align 8
  br label %212

142:                                              ; preds = %122
  br label %84

143:                                              ; preds = %116, %84
  %144 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %144, i64 %146
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %143
  %156 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %156, i64 %158
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  store %struct.TYPE_7__* %160, %struct.TYPE_7__** %13, align 8
  store i32 -1, i32* %12, align 4
  br label %162

161:                                              ; preds = %143
  br label %162

162:                                              ; preds = %161, %155, %77
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %18

165:                                              ; preds = %18
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @matchIdSubst(%struct.TYPE_7__* %170, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %169
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %178 = icmp eq %struct.TYPE_7__* %177, null
  br i1 %178, label %186, label %179

179:                                              ; preds = %176
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i64 @matchIdSubst(%struct.TYPE_7__* %180, i64 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %179, %176
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 4
  store %struct.TYPE_7__* %187, %struct.TYPE_7__** %189, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %7, align 8
  br label %191

191:                                              ; preds = %186, %179, %169, %165
  store i32 0, i32* %12, align 4
  br label %192

192:                                              ; preds = %208, %191
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %211

196:                                              ; preds = %192
  %197 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %197, i64 %199
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %204, i64 %206
  store %struct.TYPE_7__* %203, %struct.TYPE_7__** %207, align 8
  br label %208

208:                                              ; preds = %196
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %192

211:                                              ; preds = %192
  br label %14

212:                                              ; preds = %140, %63
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %213
}

declare dso_local i64 @matchIdSubst(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

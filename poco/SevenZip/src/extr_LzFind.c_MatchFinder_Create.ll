; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFind.c_MatchFinder_Create.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_LzFind.c_MatchFinder_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@kMaxHistorySize = common dso_local global i32 0, align 4
@kHash2Size = common dso_local global i64 0, align 8
@kHash3Size = common dso_local global i64 0, align 8
@kHash4Size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MatchFinder_Create(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @kMaxHistorySize, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @MatchFinder_Free(%struct.TYPE_6__* %23, i32* %24)
  store i32 0, i32* %7, align 4
  br label %229

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sgt i32 %29, -2147483648
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 2
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %37, %38
  %40 = sdiv i32 %39, 2
  %41 = add nsw i32 %40, 524288
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = call i64 @LzInWindow_Create(%struct.TYPE_6__* %55, i32 %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %225

60:                                               ; preds = %34
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 12
  store i64 0, i64* %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  store i32 65535, i32* %16, align 4
  br label %109

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = ashr i32 %76, 1
  %78 = load i32, i32* %16, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = ashr i32 %80, 2
  %82 = load i32, i32* %16, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = ashr i32 %84, 4
  %86 = load i32, i32* %16, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = ashr i32 %88, 8
  %90 = load i32, i32* %16, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = ashr i32 %92, 1
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = or i32 %94, 65535
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp sgt i32 %96, 16777216
  br i1 %97, label %98, label %108

98:                                               ; preds = %73
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 16777215, i32* %16, align 4
  br label %107

104:                                              ; preds = %98
  %105 = load i32, i32* %16, align 4
  %106 = ashr i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %107

107:                                              ; preds = %104, %103
  br label %108

108:                                              ; preds = %107, %73
  br label %109

109:                                              ; preds = %108, %72
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %16, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %117, 2
  br i1 %118, label %119, label %125

119:                                              ; preds = %109
  %120 = load i64, i64* @kHash2Size, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 12
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %119, %109
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %128, 3
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i64, i64* @kHash3Size, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 12
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, %131
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp sgt i32 %139, 4
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i64, i64* @kHash4Size, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 12
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %141, %136
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 12
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %16, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %157, %160
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 7
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %16, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 11
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %147
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %176, 2
  br label %180

178:                                              ; preds = %147
  %179 = load i32, i32* %15, align 4
  br label %180

180:                                              ; preds = %178, %175
  %181 = phi i32 [ %177, %175 ], [ %179, %178 ]
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 6
  store i32 %181, i32* %183, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %186, %189
  store i32 %190, i32* %18, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 9
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %180
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %18, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 1, i32* %7, align 4
  br label %229

200:                                              ; preds = %195, %180
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %202 = load i32*, i32** %13, align 8
  %203 = call i32 @MatchFinder_FreeThisClassMemory(%struct.TYPE_6__* %201, i32* %202)
  %204 = load i32, i32* %18, align 4
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @AllocRefs(i32 %204, i32* %205)
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %200
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %216, %219
  %221 = sext i32 %220 to i64
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 10
  store i64 %221, i64* %223, align 8
  store i32 1, i32* %7, align 4
  br label %229

224:                                              ; preds = %200
  br label %225

225:                                              ; preds = %224, %34
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %227 = load i32*, i32** %13, align 8
  %228 = call i32 @MatchFinder_Free(%struct.TYPE_6__* %226, i32* %227)
  store i32 0, i32* %7, align 4
  br label %229

229:                                              ; preds = %225, %213, %199, %22
  %230 = load i32, i32* %7, align 4
  ret i32 %230
}

declare dso_local i32 @MatchFinder_Free(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @LzInWindow_Create(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @MatchFinder_FreeThisClassMemory(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @AllocRefs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

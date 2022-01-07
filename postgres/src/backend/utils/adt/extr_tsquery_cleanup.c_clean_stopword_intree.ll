; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_cleanup.c_clean_stopword_intree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_cleanup.c_clean_stopword_intree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@QI_VAL = common dso_local global i64 0, align 8
@QI_VALSTOP = common dso_local global i64 0, align 8
@QI_OPR = common dso_local global i64 0, align 8
@OP_NOT = common dso_local global i64 0, align 8
@OP_PHRASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, i32*, i32*)* @clean_stopword_intree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @clean_stopword_intree(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = call i32 (...) @check_stack_depth()
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QI_VAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %4, align 8
  br label %220

27:                                               ; preds = %3
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QI_VALSTOP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = call i32 @pfree(%struct.TYPE_10__* %36)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %220

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @QI_OPR, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @Assert(i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @OP_NOT, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %39
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call %struct.TYPE_10__* @clean_stopword_intree(%struct.TYPE_10__* %60, i32* %61, i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store %struct.TYPE_10__* %63, %struct.TYPE_10__** %65, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = icmp ne %struct.TYPE_10__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %57
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = call i32 @freetree(%struct.TYPE_10__* %71)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %220

73:                                               ; preds = %57
  br label %218

74:                                               ; preds = %39
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %8, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = call %struct.TYPE_10__* @clean_stopword_intree(%struct.TYPE_10__* %78, i32* %11, i32* %12)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store %struct.TYPE_10__* %79, %struct.TYPE_10__** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call %struct.TYPE_10__* @clean_stopword_intree(%struct.TYPE_10__* %84, i32* %13, i32* %14)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %87, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @OP_PHRASE, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %74
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  br label %107

106:                                              ; preds = %74
  br label %107

107:                                              ; preds = %106, %99
  %108 = phi i32 [ %105, %99 ], [ 0, %106 ]
  store i32 %108, i32* %10, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp eq %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %138

113:                                              ; preds = %107
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp eq %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %138

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i32*, i32** %6, align 8
  store i32 %126, i32* %128, align 4
  br label %135

129:                                              ; preds = %118
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @Max(i32 %130, i32 %131)
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** %6, align 8
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %121
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %137 = call i32 @freetree(%struct.TYPE_10__* %136)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %220

138:                                              ; preds = %113, %107
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = icmp eq %struct.TYPE_10__* %141, null
  br i1 %142, label %143, label %166

143:                                              ; preds = %138
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %143
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %149, %150
  %152 = load i32*, i32** %6, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %14, align 4
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  br label %160

155:                                              ; preds = %143
  %156 = load i32, i32* %13, align 4
  %157 = load i32*, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32*, i32** %7, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %155, %146
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  store %struct.TYPE_10__* %163, %struct.TYPE_10__** %8, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = call i32 @pfree(%struct.TYPE_10__* %164)
  br label %215

166:                                              ; preds = %138
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = icmp eq %struct.TYPE_10__* %169, null
  br i1 %170, label %171, label %194

171:                                              ; preds = %166
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = load i32*, i32** %6, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32*, i32** %7, align 8
  store i32 %181, i32* %182, align 4
  br label %188

183:                                              ; preds = %171
  %184 = load i32, i32* %11, align 4
  %185 = load i32*, i32** %6, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* %12, align 4
  %187 = load i32*, i32** %7, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %183, %174
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  store %struct.TYPE_10__* %191, %struct.TYPE_10__** %8, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %193 = call i32 @pfree(%struct.TYPE_10__* %192)
  br label %214

194:                                              ; preds = %166
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %212

197:                                              ; preds = %194
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %198, %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = add nsw i32 %206, %200
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load i32*, i32** %6, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32*, i32** %7, align 8
  store i32 %210, i32* %211, align 4
  br label %213

212:                                              ; preds = %194
  br label %213

213:                                              ; preds = %212, %197
  br label %214

214:                                              ; preds = %213, %188
  br label %215

215:                                              ; preds = %214, %160
  br label %216

216:                                              ; preds = %215
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %217, %struct.TYPE_10__** %4, align 8
  br label %220

218:                                              ; preds = %73
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %219, %struct.TYPE_10__** %4, align 8
  br label %220

220:                                              ; preds = %218, %216, %135, %70, %35, %25
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %221
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @pfree(%struct.TYPE_10__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @freetree(%struct.TYPE_10__*) #1

declare dso_local i32 @Max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

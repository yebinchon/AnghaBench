; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_TS_phrase_output.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsvector_op.c_TS_phrase_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32 }

@TSPO_R_ONLY = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TSPO_L_ONLY = common dso_local global i32 0, align 4
@TSPO_BOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32, i32, i32, i32)* @TS_phrase_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TS_phrase_output(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %21

21:                                               ; preds = %161, %7
  %22 = load i32, i32* %16, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ true, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %162

35:                                               ; preds = %33
  store i32 0, i32* %20, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @WEP_GETPOS(i32 %48)
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %18, align 4
  br label %60

52:                                               ; preds = %35
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @TSPO_R_ONLY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %162

58:                                               ; preds = %52
  %59 = load i32, i32* @INT_MAX, align 4
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %58, %41
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %60
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @WEP_GETPOS(i32 %73)
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %19, align 4
  br label %85

77:                                               ; preds = %60
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @TSPO_L_ONLY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %162

83:                                               ; preds = %77
  %84 = load i32, i32* @INT_MAX, align 4
  store i32 %84, i32* %19, align 4
  br label %85

85:                                               ; preds = %83, %66
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %19, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @TSPO_L_ONLY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %20, align 4
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %16, align 4
  br label %126

99:                                               ; preds = %85
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @TSPO_BOTH, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %19, align 4
  store i32 %109, i32* %20, align 4
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %17, align 4
  br label %125

115:                                              ; preds = %99
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @TSPO_R_ONLY, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %19, align 4
  store i32 %121, i32* %20, align 4
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %125

125:                                              ; preds = %122, %110
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i32, i32* %20, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %161

129:                                              ; preds = %126
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %131 = icmp ne %struct.TYPE_5__* %130, null
  br i1 %131, label %132, label %159

132:                                              ; preds = %129
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = icmp eq i32* %135, null
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %139, 4
  %141 = trunc i64 %140 to i32
  %142 = call i64 @palloc(i32 %141)
  %143 = inttoptr i64 %142 to i32*
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  store i32* %143, i32** %145, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %137, %132
  %149 = load i32, i32* %20, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %152, i64 %157
  store i32 %149, i32* %158, align 4
  br label %160

159:                                              ; preds = %129
  store i32 1, i32* %8, align 4
  br label %179

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %126
  br label %21

162:                                              ; preds = %82, %57, %33
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = icmp ne %struct.TYPE_5__* %163, null
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = icmp sle i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @Assert(i32 %176)
  store i32 1, i32* %8, align 4
  br label %179

178:                                              ; preds = %165, %162
  store i32 0, i32* %8, align 4
  br label %179

179:                                              ; preds = %178, %170, %159
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local i32 @WEP_GETPOS(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistchoose.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistchoose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@MAX_RANDOM_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gistchoose(i32 %0, i32 %1, i32 %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %24 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca float, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %31 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @GistPageIsLeaf(i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @gistDeCompressAtt(%struct.TYPE_6__* %40, i32 %41, i32 %42, i32* null, i64 0, i32* %30, i32* %33)
  %44 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %44, i64* %9, align 8
  %45 = getelementptr inbounds float, float* %27, i64 0
  store float -1.000000e+00, float* %45, align 16
  store i32 -1, i32* %17, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @PageGetMaxOffsetNumber(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @FirstOffsetNumber, align 8
  %50 = icmp sge i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @Assert(i32 %51)
  %53 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %53, i64* %11, align 8
  br label %54

54:                                               ; preds = %187, %4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp sle i64 %55, %56
  br i1 %57, label %58, label %190

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @PageGetItemId(i32 %60, i64 %61)
  %63 = call i32 @PageGetItem(i32 %59, i32 %62)
  store i32 %63, i32* %18, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %64

64:                                               ; preds = %140, %58
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %143

69:                                               ; preds = %64
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @index_getattr(i32 %70, i32 %72, i32 %75, i32* %23)
  store i32 %76, i32* %21, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %23, align 4
  %84 = call i32 @gistdentryinit(%struct.TYPE_6__* %77, i32 %78, i32* %14, i32 %79, i32 %80, i32 %81, i64 %82, i32 0, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i32, i32* %20, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %30, i64 %89
  %91 = load i32, i32* %20, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %33, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call float @gistpenalty(%struct.TYPE_6__* %85, i32 %86, i32* %14, i32 %87, i32* %90, i32 %94)
  store float %95, float* %22, align 4
  %96 = load float, float* %22, align 4
  %97 = fcmp ogt float %96, 0.000000e+00
  br i1 %97, label %98, label %99

98:                                               ; preds = %69
  store i32 0, i32* %19, align 4
  br label %99

99:                                               ; preds = %98, %69
  %100 = load i32, i32* %20, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %27, i64 %101
  %103 = load float, float* %102, align 4
  %104 = fcmp olt float %103, 0.000000e+00
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load float, float* %22, align 4
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %27, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fcmp olt float %106, %110
  br i1 %111, label %112, label %129

112:                                              ; preds = %105, %99
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %9, align 8
  %114 = load float, float* %22, align 4
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %27, i64 %116
  store float %114, float* %117, align 4
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %119)
  %121 = sub nsw i32 %120, 1
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %27, i64 %126
  store float -1.000000e+00, float* %127, align 4
  br label %128

128:                                              ; preds = %123, %112
  store i32 -1, i32* %17, align 4
  br label %139

129:                                              ; preds = %105
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %27, i64 %131
  %133 = load float, float* %132, align 4
  %134 = load float, float* %22, align 4
  %135 = fcmp oeq float %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %138

137:                                              ; preds = %129
  store i32 0, i32* %19, align 4
  br label %143

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %20, align 4
  br label %64

143:                                              ; preds = %137, %64
  %144 = load i32, i32* %20, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @IndexRelationGetNumberOfKeyAttributes(i32 %145)
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %168

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  %150 = load i64, i64* %11, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %168

152:                                              ; preds = %148
  %153 = load i32, i32* %17, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = call i32 (...) @random()
  %157 = load i32, i32* @MAX_RANDOM_VALUE, align 4
  %158 = sdiv i32 %157, 2
  %159 = icmp sle i32 %156, %158
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %155, %152
  %163 = load i32, i32* %17, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i64, i64* %11, align 8
  store i64 %166, i64* %9, align 8
  store i32 -1, i32* %17, align 4
  br label %167

167:                                              ; preds = %165, %162
  br label %168

168:                                              ; preds = %167, %148, %143
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %168
  %172 = load i32, i32* %17, align 4
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = call i32 (...) @random()
  %176 = load i32, i32* @MAX_RANDOM_VALUE, align 4
  %177 = sdiv i32 %176, 2
  %178 = icmp sle i32 %175, %177
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 1, i32 0
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %174, %171
  %182 = load i32, i32* %17, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %190

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %185, %168
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %11, align 8
  %189 = call i64 @OffsetNumberNext(i64 %188)
  store i64 %189, i64* %11, align 8
  br label %54

190:                                              ; preds = %184, %54
  %191 = load i64, i64* %9, align 8
  %192 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %192)
  ret i64 %191
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @GistPageIsLeaf(i32) #2

declare dso_local i32 @gistDeCompressAtt(%struct.TYPE_6__*, i32, i32, i32*, i64, i32*, i32*) #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #2

declare dso_local i32 @PageGetItem(i32, i32) #2

declare dso_local i32 @PageGetItemId(i32, i64) #2

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(i32) #2

declare dso_local i32 @index_getattr(i32, i32, i32, i32*) #2

declare dso_local i32 @gistdentryinit(%struct.TYPE_6__*, i32, i32*, i32, i32, i32, i64, i32, i32) #2

declare dso_local float @gistpenalty(%struct.TYPE_6__*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @random(...) #2

declare dso_local i64 @OffsetNumberNext(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

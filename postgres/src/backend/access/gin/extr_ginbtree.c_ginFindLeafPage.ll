; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginFindLeafPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginFindLeafPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i8*, %struct.TYPE_12__*, i32 }
%struct.TYPE_13__ = type { i64, i32, i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i32, i64 (%struct.TYPE_13__*, i32)* }
%struct.TYPE_11__ = type { i64 }

@InvalidOffsetNumber = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIN_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ginFindLeafPage(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = call i64 @palloc(i32 40)
  %16 = inttoptr i64 %15 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %9, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @ReadBuffer(i32 %24, i64 %27)
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @CheckForSerializableConflictIn(i32 %40, i32* null, i8* %43)
  br label %45

45:                                               ; preds = %37, %4
  br label %46

46:                                               ; preds = %212, %45
  %47 = load i32, i32* @InvalidOffsetNumber, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @BufferGetPage(i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @TestForOldSnapshot(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @ginTraverseLock(i8* %62, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %46
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @GinPageIsIncompleteSplit(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = call i32 @ginFinishSplit(%struct.TYPE_13__* %72, %struct.TYPE_12__* %73, i32 0, i32* null)
  br label %75

75:                                               ; preds = %71, %67, %46
  br label %76

76:                                               ; preds = %142, %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %84, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %81
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 4
  %92 = load i64 (%struct.TYPE_13__*, i32)*, i64 (%struct.TYPE_13__*, i32)** %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i64 %92(%struct.TYPE_13__* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br label %97

97:                                               ; preds = %89, %81, %76
  %98 = phi i1 [ false, %81 ], [ false, %76 ], [ %96, %89 ]
  br i1 %98, label %99, label %143

99:                                               ; preds = %97
  %100 = load i32, i32* %10, align 4
  %101 = call %struct.TYPE_11__* @GinPageGetOpaque(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %13, align 8
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @InvalidBlockNumber, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %143

108:                                              ; preds = %99
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i8* @ginStepRight(i8* %111, i32 %114, i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  store i8* %116, i8** %118, align 8
  %119 = load i64, i64* %13, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @BufferGetPage(i8* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @TestForOldSnapshot(i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %108
  %135 = load i32, i32* %10, align 4
  %136 = call i64 @GinPageIsIncompleteSplit(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = call i32 @ginFinishSplit(%struct.TYPE_13__* %139, %struct.TYPE_12__* %140, i32 0, i32* null)
  br label %142

142:                                              ; preds = %138, %134, %108
  br label %76

143:                                              ; preds = %107, %97
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @GinPageIsLeaf(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %148

149:                                              ; preds = %143
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 2
  %152 = load i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)*, i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)** %151, align 8
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = call i64 %152(%struct.TYPE_13__* %153, %struct.TYPE_12__* %154)
  store i64 %155, i64* %11, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* @GIN_UNLOCK, align 4
  %160 = call i32 @LockBuffer(i8* %158, i32 %159)
  %161 = load i64, i64* %11, align 8
  %162 = load i64, i64* @InvalidBlockNumber, align 8
  %163 = icmp ne i64 %161, %162
  %164 = zext i1 %163 to i32
  %165 = call i32 @Assert(i32 %164)
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %11, align 8
  %170 = icmp ne i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @Assert(i32 %171)
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %149
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i8* @ReleaseAndReadBuffer(i8* %181, i32 %184, i64 %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 2
  store i8* %188, i8** %190, align 8
  br label %212

191:                                              ; preds = %149
  %192 = call i64 @palloc(i32 40)
  %193 = inttoptr i64 %192 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %193, %struct.TYPE_12__** %14, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 3
  store %struct.TYPE_12__* %194, %struct.TYPE_12__** %196, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  store %struct.TYPE_12__* %197, %struct.TYPE_12__** %9, align 8
  %198 = load i64, i64* %11, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i8* @ReadBuffer(i32 %203, i64 %206)
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  store i32 1, i32* %211, align 8
  br label %212

212:                                              ; preds = %191, %175
  br label %46
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i8* @ReadBuffer(i32, i64) #1

declare dso_local i32 @CheckForSerializableConflictIn(i32, i32*, i8*) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i32 @ginTraverseLock(i8*, i32) #1

declare dso_local i64 @GinPageIsIncompleteSplit(i32) #1

declare dso_local i32 @ginFinishSplit(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @GinPageGetOpaque(i32) #1

declare dso_local i8* @ginStepRight(i8*, i32, i32) #1

declare dso_local i64 @GinPageIsLeaf(i32) #1

declare dso_local i32 @LockBuffer(i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @ReleaseAndReadBuffer(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

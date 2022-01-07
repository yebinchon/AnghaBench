; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginFindParents.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginbtree.c_ginFindParents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 (%struct.TYPE_11__*, i32)*, i32, i8* (%struct.TYPE_11__*, i32, i64, i8*)* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_10__*, i8*, i8* }
%struct.TYPE_12__ = type { i64 }

@InvalidOffsetNumber = common dso_local global i8* null, align 8
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Lost path\00", align 1
@InvalidBlockNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_10__*)* @ginFindParents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginFindParents(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %10, align 8
  br label %15

15:                                               ; preds = %20, %2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @ReleaseBuffer(i8* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %10, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @Assert(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @BufferGetBlockNumber(i8* %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load i8*, i8** @InvalidOffsetNumber, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** @InvalidOffsetNumber, align 8
  store i8* %57, i8** %9, align 8
  %58 = call i64 @palloc(i32 32)
  %59 = inttoptr i64 %58 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %11, align 8
  br label %60

60:                                               ; preds = %186, %28
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %63 = call i32 @LockBuffer(i8* %61, i32 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @BufferGetPage(i8* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i64 @GinPageIsLeaf(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @ERROR, align 4
  %71 = call i32 @elog(i32 %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %60
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @GinPageIsIncompleteSplit(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 3
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %92, align 8
  %93 = load i8*, i8** @InvalidOffsetNumber, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = call i32 @ginFinishSplit(%struct.TYPE_11__* %96, %struct.TYPE_10__* %97, i32 0, i32* null)
  br label %99

99:                                               ; preds = %76, %72
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64 (%struct.TYPE_11__*, i32)*, i64 (%struct.TYPE_11__*, i32)** %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i64 %102(%struct.TYPE_11__* %103, i32 %104)
  store i64 %105, i64* %8, align 8
  br label %106

106:                                              ; preds = %165, %99
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 3
  %109 = load i8* (%struct.TYPE_11__*, i32, i64, i8*)*, i8* (%struct.TYPE_11__*, i32, i64, i8*)** %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i8*, i8** @InvalidOffsetNumber, align 8
  %116 = call i8* %109(%struct.TYPE_11__* %110, i32 %111, i64 %114, i8* %115)
  store i8* %116, i8** %9, align 8
  %117 = load i8*, i8** @InvalidOffsetNumber, align 8
  %118 = icmp eq i8* %116, %117
  br i1 %118, label %119, label %166

119:                                              ; preds = %106
  %120 = load i32, i32* %5, align 4
  %121 = call %struct.TYPE_12__* @GinPageGetOpaque(i32 %120)
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %7, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* @InvalidBlockNumber, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %119
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @UnlockReleaseBuffer(i8* %128)
  br label %166

130:                                              ; preds = %119
  %131 = load i8*, i8** %6, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %136 = call i8* @ginStepRight(i8* %131, i32 %134, i32 %135)
  store i8* %136, i8** %6, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i32 @BufferGetPage(i8* %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @GinPageIsIncompleteSplit(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %165

142:                                              ; preds = %130
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  %148 = zext i1 %147 to i32
  %149 = call i32 @Assert(i32 %148)
  %150 = load i64, i64* %7, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %158, align 8
  %159 = load i8*, i8** @InvalidOffsetNumber, align 8
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %164 = call i32 @ginFinishSplit(%struct.TYPE_11__* %162, %struct.TYPE_10__* %163, i32 0, i32* null)
  br label %165

165:                                              ; preds = %142, %130
  br label %106

166:                                              ; preds = %127, %106
  %167 = load i64, i64* %7, align 8
  %168 = load i64, i64* @InvalidBlockNumber, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = load i64, i64* %7, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i64 %171, i64* %173, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  store %struct.TYPE_10__* %177, %struct.TYPE_10__** %179, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store %struct.TYPE_10__* %183, %struct.TYPE_10__** %185, align 8
  ret void

186:                                              ; preds = %166
  %187 = load i64, i64* %8, align 8
  store i64 %187, i64* %7, align 8
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = call i8* @ReadBuffer(i32 %190, i64 %191)
  store i8* %192, i8** %6, align 8
  br label %60
}

declare dso_local i32 @ReleaseBuffer(i8*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i8*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @LockBuffer(i8*, i32) #1

declare dso_local i32 @BufferGetPage(i8*) #1

declare dso_local i64 @GinPageIsLeaf(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @GinPageIsIncompleteSplit(i32) #1

declare dso_local i32 @ginFinishSplit(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*) #1

declare dso_local %struct.TYPE_12__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i8*) #1

declare dso_local i8* @ginStepRight(i8*, i32, i32) #1

declare dso_local i8* @ReadBuffer(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

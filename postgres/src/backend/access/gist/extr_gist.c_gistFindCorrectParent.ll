; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistFindCorrectParent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gist.c_gistFindCorrectParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i8*, %struct.TYPE_7__*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_7__*)* @gistFindCorrectParent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistFindCorrectParent(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @gistcheckpage(i32 %14, i8* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @BufferGetPage(i8* %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @InvalidOffsetNumber, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %2
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @PageGetLSN(i8* %37)
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %181

40:                                               ; preds = %31, %2
  br label %41

41:                                               ; preds = %40, %97
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @PageGetMaxOffsetNumber(i8* %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %75, %41
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 5
  %54 = load i8*, i8** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @PageGetItemId(i8* %54, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @PageGetItem(i8* %59, i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %9, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i64 @ItemPointerGetBlockNumber(i32* %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %182

74:                                               ; preds = %51
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @OffsetNumberNext(i64 %76)
  store i64 %77, i64* %6, align 8
  br label %47

78:                                               ; preds = %47
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call %struct.TYPE_8__* @GistPageGetOpaque(i8* %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @UnlockReleaseBuffer(i8* %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @InvalidBlockNumber, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %78
  br label %122

97:                                               ; preds = %78
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @ReadBuffer(i32 %98, i64 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %109 = call i32 @LockBuffer(i8* %107, i32 %108)
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @gistcheckpage(i32 %110, i8* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @BufferGetPage(i8* %117)
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  br label %41

122:                                              ; preds = %96
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %10, align 8
  br label %128

128:                                              ; preds = %131, %122
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %130 = icmp ne %struct.TYPE_7__* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @ReleaseBuffer(i8* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  store %struct.TYPE_7__* %138, %struct.TYPE_7__** %10, align 8
  br label %128

139:                                              ; preds = %128
  %140 = load i32, i32* %3, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = call %struct.TYPE_7__* @gistFindPath(i32 %140, i64 %143, i64* %145)
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %146, %struct.TYPE_7__** %10, align 8
  br label %147

147:                                              ; preds = %150, %139
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %149 = icmp ne %struct.TYPE_7__* %148, null
  br i1 %149, label %150, label %168

150:                                              ; preds = %147
  %151 = load i32, i32* %3, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = call i8* @ReadBuffer(i32 %151, i64 %154)
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = call i64 @BufferGetPage(i8* %160)
  %162 = inttoptr i64 %161 to i8*
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 5
  store i8* %162, i8** %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  store %struct.TYPE_7__* %167, %struct.TYPE_7__** %10, align 8
  br label %147

168:                                              ; preds = %147
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  store %struct.TYPE_7__* %169, %struct.TYPE_7__** %171, align 8
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 4
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 3
  %176 = load i8*, i8** %175, align 8
  %177 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %178 = call i32 @LockBuffer(i8* %176, i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  call void @gistFindCorrectParent(i32 %179, %struct.TYPE_7__* %180)
  br label %181

181:                                              ; preds = %168, %31
  br label %182

182:                                              ; preds = %181, %70
  ret void
}

declare dso_local i32 @gistcheckpage(i32, i8*) #1

declare dso_local i64 @BufferGetPage(i8*) #1

declare dso_local i64 @PageGetLSN(i8*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i8*) #1

declare dso_local i32 @PageGetItemId(i8*, i64) #1

declare dso_local i64 @PageGetItem(i8*, i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local %struct.TYPE_8__* @GistPageGetOpaque(i8*) #1

declare dso_local i32 @UnlockReleaseBuffer(i8*) #1

declare dso_local i8* @ReadBuffer(i32, i64) #1

declare dso_local i32 @LockBuffer(i8*, i32) #1

declare dso_local i32 @ReleaseBuffer(i8*) #1

declare dso_local %struct.TYPE_7__* @gistFindPath(i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuum_delete_empty_pages.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistvacuum.c_gistvacuum_delete_empty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MaxOffsetNumber = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIST_SHARE = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@GIST_UNLOCK = common dso_local global i32 0, align 4
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_12__*)* @gistvacuum_delete_empty_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistvacuum_delete_empty_pages(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @intset_num_entries(i32 %28)
  store i64 %29, i64* %6, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @intset_begin_iterate(i32 %32)
  br label %34

34:                                               ; preds = %205, %202, %2
  %35 = load i64, i64* %6, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @intset_iterate_next(i32 %40, i64* %7)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %45, label %206

45:                                               ; preds = %43
  %46 = load i32, i32* @MaxOffsetNumber, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %12, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %13, align 8
  %50 = load i32, i32* @MaxOffsetNumber, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i64, i64 %51, align 16
  store i64 %51, i64* %14, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MAIN_FORKNUM, align 4
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* @RBM_NORMAL, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ReadBufferExtended(i32 %53, i32 %54, i64 %55, i32 %56, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @GIST_SHARE, align 4
  %63 = call i32 @LockBuffer(i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @BufferGetPage(i32 %64)
  store i64 %65, i64* %9, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i64 @PageIsNew(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %45
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @GistPageIsDeleted(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = call i64 @GistPageIsLeaf(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73, %69, %45
  %78 = call i32 @Assert(i32 0)
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @UnlockReleaseBuffer(i32 %79)
  store i32 2, i32* %17, align 4
  br label %202

81:                                               ; preds = %73
  %82 = load i64, i64* %9, align 8
  %83 = call i64 @PageGetMaxOffsetNumber(i64 %82)
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %85 = load i64, i64* @FirstOffsetNumber, align 8
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %127, %81
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sle i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %92, %94
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i1 [ false, %87 ], [ %95, %91 ]
  br i1 %97, label %98, label %130

98:                                               ; preds = %96
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @PageGetItemId(i64 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @PageGetItem(i64 %102, i32 %103)
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %19, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = call i64 @ItemPointerGetBlockNumber(i32* %108)
  store i64 %109, i64* %20, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %20, align 8
  %114 = call i64 @intset_is_member(i32 %112, i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %98
  %117 = load i64, i64* %20, align 8
  %118 = load i32, i32* %15, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %52, i64 %119
  store i64 %117, i64* %120, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %49, i64 %124
  store i32 %121, i32* %125, align 4
  br label %126

126:                                              ; preds = %116, %98
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @OffsetNumberNext(i32 %128)
  store i32 %129, i32* %10, align 4
  br label %87

130:                                              ; preds = %96
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @GIST_UNLOCK, align 4
  %133 = call i32 @LockBuffer(i32 %131, i32 %132)
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  br label %134

134:                                              ; preds = %186, %130
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %189

138:                                              ; preds = %134
  %139 = load i64, i64* %9, align 8
  %140 = call i64 @PageGetMaxOffsetNumber(i64 %139)
  %141 = load i64, i64* @FirstOffsetNumber, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %189

144:                                              ; preds = %138
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @MAIN_FORKNUM, align 4
  %147 = load i32, i32* %21, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %52, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @RBM_NORMAL, align 4
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ReadBufferExtended(i32 %145, i32 %146, i64 %150, i32 %151, i32 %154)
  store i32 %155, i32* %22, align 4
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %158 = call i32 @LockBuffer(i32 %156, i32 %157)
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* %22, align 4
  %161 = call i32 @gistcheckpage(i32 %159, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %164 = call i32 @LockBuffer(i32 %162, i32 %163)
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %21, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %49, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %16, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load i32, i32* %22, align 4
  %175 = call i64 @gistdeletepage(%struct.TYPE_10__* %165, %struct.TYPE_12__* %166, i32 %167, i32 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %144
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %180

180:                                              ; preds = %177, %144
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @GIST_UNLOCK, align 4
  %183 = call i32 @LockBuffer(i32 %181, i32 %182)
  %184 = load i32, i32* %22, align 4
  %185 = call i32 @UnlockReleaseBuffer(i32 %184)
  br label %186

186:                                              ; preds = %180
  %187 = load i32, i32* %21, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %21, align 4
  br label %134

189:                                              ; preds = %143, %134
  %190 = load i32, i32* %8, align 4
  %191 = call i32 @ReleaseBuffer(i32 %190)
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %192
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %15, align 4
  %199 = sext i32 %198 to i64
  %200 = load i64, i64* %6, align 8
  %201 = sub nsw i64 %200, %199
  store i64 %201, i64* %6, align 8
  store i32 0, i32* %17, align 4
  br label %202

202:                                              ; preds = %189, %77
  %203 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %203)
  %204 = load i32, i32* %17, align 4
  switch i32 %204, label %207 [
    i32 0, label %205
    i32 2, label %34
  ]

205:                                              ; preds = %202
  br label %34

206:                                              ; preds = %43
  ret void

207:                                              ; preds = %202
  unreachable
}

declare dso_local i64 @intset_num_entries(i32) #1

declare dso_local i32 @intset_begin_iterate(i32) #1

declare dso_local i64 @intset_iterate_next(i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i64) #1

declare dso_local i64 @GistPageIsDeleted(i64) #1

declare dso_local i64 @GistPageIsLeaf(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i32 @PageGetItem(i64, i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @intset_is_member(i32, i64) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i32 @gistcheckpage(i32, i32) #1

declare dso_local i64 @gistdeletepage(%struct.TYPE_10__*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

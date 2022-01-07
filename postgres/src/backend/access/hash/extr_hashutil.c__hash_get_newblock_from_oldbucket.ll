; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_get_newblock_from_oldbucket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_get_newblock_from_oldbucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@HASH_METAPAGE = common dso_local global i32 0, align 4
@HASH_READ = common dso_local global i32 0, align 4
@LH_META_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_get_newblock_from_oldbucket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @HASH_METAPAGE, align 4
  %11 = load i32, i32* @HASH_READ, align 4
  %12 = load i32, i32* @LH_META_PAGE, align 4
  %13 = call i32 @_hash_getbuf(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BufferGetPage(i32 %14)
  %16 = call %struct.TYPE_4__* @HashPageGetMeta(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @_hash_get_newbucket_from_oldbucket(i32 %17, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BUCKET_TO_BLKNO(%struct.TYPE_4__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @_hash_relbuf(i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @HashPageGetMeta(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @_hash_get_newbucket_from_oldbucket(i32, i32, i32, i32) #1

declare dso_local i32 @BUCKET_TO_BLKNO(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_get_oldblock_from_newbucket.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/hash/extr_hashutil.c__hash_get_oldblock_from_newbucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_METAPAGE = common dso_local global i32 0, align 4
@HASH_READ = common dso_local global i32 0, align 4
@LH_META_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hash_get_oldblock_from_newbucket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @fls(i32 %10)
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @HASH_METAPAGE, align 4
  %20 = load i32, i32* @HASH_READ, align 4
  %21 = load i32, i32* @LH_META_PAGE, align 4
  %22 = call i32 @_hash_getbuf(i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @BufferGetPage(i32 %23)
  %25 = call i32 @HashPageGetMeta(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @BUCKET_TO_BLKNO(i32 %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @_hash_relbuf(i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @_hash_getbuf(i32, i32, i32, i32) #1

declare dso_local i32 @HashPageGetMeta(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @BUCKET_TO_BLKNO(i32, i32) #1

declare dso_local i32 @_hash_relbuf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

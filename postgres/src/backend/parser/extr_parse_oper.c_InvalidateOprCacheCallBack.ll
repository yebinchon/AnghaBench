; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_InvalidateOprCacheCallBack.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_oper.c_InvalidateOprCacheCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@OprCacheHash = common dso_local global i32* null, align 8
@HASH_REMOVE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hash table corrupted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @InvalidateOprCacheCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @InvalidateOprCacheCallBack(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** @OprCacheHash, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load i32*, i32** @OprCacheHash, align 8
  %14 = call i32 @hash_seq_init(i32* %7, i32* %13)
  br label %15

15:                                               ; preds = %30, %3
  %16 = call i64 @hash_seq_search(i32* %7)
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %8, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load i32*, i32** @OprCacheHash, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to i8*
  %24 = load i32, i32* @HASH_REMOVE, align 4
  %25 = call i32* @hash_search(i32* %20, i8* %23, i32 %24, i32* null)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @ERROR, align 4
  %29 = call i32 @elog(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %19
  br label %15

31:                                               ; preds = %15
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @hash_seq_init(i32*, i32*) #1

declare dso_local i64 @hash_seq_search(i32*) #1

declare dso_local i32* @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

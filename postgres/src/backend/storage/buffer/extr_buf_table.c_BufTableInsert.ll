; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_buf_table.c_BufTableInsert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_buf_table.c_BufTableInsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@P_NEW = common dso_local global i64 0, align 8
@SharedBufHash = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BufTableInsert(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @Assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @P_NEW, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @Assert(i32 %19)
  %21 = load i32, i32* @SharedBufHash, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = bitcast %struct.TYPE_4__* %22 to i8*
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @HASH_ENTER, align 4
  %26 = call i64 @hash_search_with_hash_value(i32 %21, i8* %23, i32 %24, i32 %25, i32* %9)
  %27 = inttoptr i64 %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 -1, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @hash_search_with_hash_value(i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

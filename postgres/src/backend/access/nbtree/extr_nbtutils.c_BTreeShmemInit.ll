; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c_BTreeShmemInit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c_BTreeShmemInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"BTree Vacuum State\00", align 1
@btvacinfo = common dso_local global %struct.TYPE_3__* null, align 8
@IsUnderPostmaster = common dso_local global i32 0, align 4
@MaxBackends = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTreeShmemInit() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @BTreeShmemSize()
  %3 = call i64 @ShmemInitStruct(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %2, i32* %1)
  %4 = inttoptr i64 %3 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** @btvacinfo, align 8
  %5 = load i32, i32* @IsUnderPostmaster, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = call i64 @time(i32* null)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @btvacinfo, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @btvacinfo, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @MaxBackends, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @btvacinfo, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %24

21:                                               ; preds = %0
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @Assert(i32 %22)
  br label %24

24:                                               ; preds = %21, %7
  ret void
}

declare dso_local i64 @ShmemInitStruct(i8*, i32, i32*) #1

declare dso_local i32 @BTreeShmemSize(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

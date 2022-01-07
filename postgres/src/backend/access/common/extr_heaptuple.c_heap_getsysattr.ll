; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_getsysattr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/common/extr_heaptuple.c_heap_getsysattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid attnum: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @heap_getsysattr(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = call i32 @Assert(%struct.TYPE_4__* %10)
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %41 [
    i32 129, label %14
    i32 130, label %18
    i32 132, label %24
    i32 131, label %30
    i32 133, label %30
    i32 128, label %36
  ]

14:                                               ; preds = %4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = call i32 @PointerGetDatum(i32* %16)
  store i32 %17, i32* %9, align 4
  br label %45

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @HeapTupleHeaderGetRawXmin(i32 %21)
  %23 = call i32 @TransactionIdGetDatum(i32 %22)
  store i32 %23, i32* %9, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HeapTupleHeaderGetRawXmax(i32 %27)
  %29 = call i32 @TransactionIdGetDatum(i32 %28)
  store i32 %29, i32* %9, align 4
  br label %45

30:                                               ; preds = %4, %4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @HeapTupleHeaderGetRawCommandId(i32 %33)
  %35 = call i32 @CommandIdGetDatum(i32 %34)
  store i32 %35, i32* %9, align 4
  br label %45

36:                                               ; preds = %4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ObjectIdGetDatum(i32 %39)
  store i32 %40, i32* %9, align 4
  br label %45

41:                                               ; preds = %4
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %41, %36, %30, %24, %18, %14
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @Assert(%struct.TYPE_4__*) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @TransactionIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmin(i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawXmax(i32) #1

declare dso_local i32 @CommandIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleHeaderGetRawCommandId(i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_AllocateVfd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/file/extr_fd.c_AllocateVfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"AllocateVfd. Size %zu\00", align 1
@SizeVfdCache = common dso_local global i32 0, align 4
@VfdCache = common dso_local global %struct.TYPE_4__* null, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@VFD_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @AllocateVfd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AllocateVfd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = load i32, i32* @LOG, align 4
  %6 = load i32, i32* @SizeVfdCache, align 4
  %7 = call i32 @elog(i32 %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @DO_DB(i32 %7)
  %9 = load i32, i32* @SizeVfdCache, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @Assert(i32 %11)
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %0
  %19 = load i32, i32* @SizeVfdCache, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 32
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 32, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %18
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @realloc(%struct.TYPE_4__* %25, i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_OUT_OF_MEMORY, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = call i32 @errmsg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = call i32 @ereport(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %41, %struct.TYPE_4__** @VfdCache, align 8
  %42 = load i32, i32* @SizeVfdCache, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %67, %40
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %70

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = bitcast %struct.TYPE_4__* %51 to i8*
  %53 = call i32 @MemSet(i8* %52, i32 0, i32 8)
  %54 = load i32, i32* %1, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %55, i32* %60, align 4
  %61 = load i32, i32* @VFD_CLOSED, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %47
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %1, align 4
  br label %43

70:                                               ; preds = %43
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  %77 = load i32, i32* @SizeVfdCache, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* %3, align 4
  store i32 %81, i32* @SizeVfdCache, align 4
  br label %82

82:                                               ; preds = %70, %0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %2, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %89 = load i64, i64* %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @VfdCache, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load i64, i64* %2, align 8
  ret i64 %96
}

declare dso_local i32 @DO_DB(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @realloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @MemSet(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

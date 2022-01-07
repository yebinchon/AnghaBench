; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgFormNodeTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgFormNodeTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i16, i32 }
%struct.TYPE_6__ = type { i32 }

@SGNTHDRSZ = common dso_local global i32 0, align 4
@INDEX_SIZE_MASK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"index row requires %zu bytes, maximum size is %zu\00", align 1
@INDEX_NULL_MASK = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @spgFormNodeTuple(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i16 0, i16* %9, align 2
  %10 = load i32, i32* @SGNTHDRSZ, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @SpGistGetTypeSize(i32* %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %13, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @INDEX_SIZE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @ERROR, align 4
  %30 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %31 = call i32 @errcode(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @INDEX_SIZE_MASK, align 4
  %34 = call i32 @errmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  %35 = call i32 @ereport(i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @palloc0(i32 %37)
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %7, align 8
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i16, i16* @INDEX_NULL_MASK, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %9, align 2
  %46 = zext i16 %45 to i32
  %47 = or i32 %46, %44
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %9, align 2
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %8, align 4
  %51 = load i16, i16* %9, align 2
  %52 = zext i16 %51 to i32
  %53 = or i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %9, align 2
  %55 = load i16, i16* %9, align 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i16 %55, i16* %57, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = call i32 @ItemPointerSetInvalid(i32* %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %49
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = call i32 @SGNTDATAPTR(%struct.TYPE_7__* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @memcpyDatum(i32 %65, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %49
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %71
}

declare dso_local i64 @SpGistGetTypeSize(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @memcpyDatum(i32, i32*, i32) #1

declare dso_local i32 @SGNTDATAPTR(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

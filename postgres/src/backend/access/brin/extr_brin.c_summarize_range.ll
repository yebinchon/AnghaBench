; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_summarize_range.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_summarize_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@InvalidBuffer = common dso_local global i32 0, align 4
@brinbuildCallback = common dso_local global i32 0, align 4
@BUFFER_LOCK_SHARE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"missing placeholder tuple\00", align 1
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i32, i32)* @summarize_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @summarize_range(i32* %0, %struct.TYPE_3__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load i32, i32* @InvalidBuffer, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @brin_form_placeholder_tuple(i32 %23, i32 %24, i32* %13)
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @brin_doinsert(i32 %28, i32 %31, i32 %34, i32* %11, i32 %35, i32* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = load i32, i32* %10, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %5
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @RelationGetNumberOfBlocks(i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @Min(i32 %58, i32 %61)
  store i32 %62, i32* %15, align 4
  br label %67

63:                                               ; preds = %5
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %63, %54
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @brinbuildCallback, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %80 = bitcast %struct.TYPE_3__* %79 to i8*
  %81 = call i32 @table_index_build_range_scan(i32 %71, i32 %74, i32* %75, i32 0, i32 1, i32 0, i32 %76, i32 %77, i32 %78, i8* %80, i32* null)
  br label %82

82:                                               ; preds = %133, %67
  %83 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @brin_form_tuple(i32 %86, i32 %87, i32 %90, i32* %17)
  store i32* %91, i32** %16, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @brin_can_do_samepage_update(i32 %92, i32 %93, i32 %94)
  store i32 %95, i32* %19, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* %19, align 4
  %113 = call i32 @brin_doupdate(i32 %98, i32 %101, i32 %104, i32 %105, i32 %106, i32 %107, i32* %108, i32 %109, i32* %110, i32 %111, i32 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = call i32 @brin_free_tuple(i32* %114)
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @brin_free_tuple(i32* %116)
  %118 = load i32, i32* %18, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %82
  br label %148

121:                                              ; preds = %82
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* @BUFFER_LOCK_SHARE, align 4
  %127 = call i32* @brinGetTupleForHeapBlock(i32 %124, i32 %125, i32* %11, i32* %14, i32* %13, i32 %126, i32* null)
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @ERROR, align 4
  %132 = call i32 @elog(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %121
  %134 = load i32*, i32** %12, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32* @brin_copy_tuple(i32* %134, i32 %135, i32* null, i32* null)
  store i32* %136, i32** %12, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %139 = call i32 @LockBuffer(i32 %137, i32 %138)
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = call i32 @union_tuples(i32 %142, i32 %145, i32* %146)
  br label %82

148:                                              ; preds = %120
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @ReleaseBuffer(i32 %149)
  ret void
}

declare dso_local i32* @brin_form_placeholder_tuple(i32, i32, i32*) #1

declare dso_local i32 @brin_doinsert(i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @table_index_build_range_scan(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32* @brin_form_tuple(i32, i32, i32, i32*) #1

declare dso_local i32 @brin_can_do_samepage_update(i32, i32, i32) #1

declare dso_local i32 @brin_doupdate(i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @brin_free_tuple(i32*) #1

declare dso_local i32* @brinGetTupleForHeapBlock(i32, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32* @brin_copy_tuple(i32*, i32, i32*, i32*) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @union_tuples(i32, i32, i32*) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_BuildHardcodedDescriptor.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_BuildHardcodedDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@CacheMemoryContext = common dso_local global i32 0, align 4
@RECORDOID = common dso_local global i32 0, align 4
@ATTRIBUTE_FIXED_PART_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32*)* @BuildHardcodedDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @BuildHardcodedDescriptor(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @CacheMemoryContext, align 4
  %9 = call i32 @MemoryContextSwitchTo(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.TYPE_7__* @CreateTemplateTupleDesc(i32 %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %5, align 8
  %12 = load i32, i32* @RECORDOID, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %35, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %22, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* @ATTRIBUTE_FIXED_PART_SIZE, align 4
  %30 = call i32 @memcpy(%struct.TYPE_8__* %24, i32* %28, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 -1, i32* %34, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = call %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__* %39, i32 0)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @MemoryContextSwitchTo(i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %44
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local %struct.TYPE_7__* @CreateTemplateTupleDesc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @TupleDescAttr(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

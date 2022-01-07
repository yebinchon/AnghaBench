; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/resowner/extr_resowner.c_ResourceOwnerCreate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/resowner/extr_resowner.c_ResourceOwnerCreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@TopMemoryContext = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ResourceOwnerCreate(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @TopMemoryContext, align 4
  %7 = call i64 @MemoryContextAllocZero(i32 %6, i32 4)
  %8 = inttoptr i64 %7 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 13
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 11
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 12
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %22, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 11
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %25, align 8
  br label %26

26:                                               ; preds = %14, %2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 10
  %29 = load i32, i32* @InvalidBuffer, align 4
  %30 = call i32 @BufferGetDatum(i32 %29)
  %31 = call i32 @ResourceArrayInit(i32* %28, i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 9
  %34 = call i32 @PointerGetDatum(i32* null)
  %35 = call i32 @ResourceArrayInit(i32* %33, i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 8
  %38 = call i32 @PointerGetDatum(i32* null)
  %39 = call i32 @ResourceArrayInit(i32* %37, i32 %38)
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 7
  %42 = call i32 @PointerGetDatum(i32* null)
  %43 = call i32 @ResourceArrayInit(i32* %41, i32 %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = call i32 @PointerGetDatum(i32* null)
  %47 = call i32 @ResourceArrayInit(i32* %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 5
  %50 = call i32 @PointerGetDatum(i32* null)
  %51 = call i32 @ResourceArrayInit(i32* %49, i32 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = call i32 @PointerGetDatum(i32* null)
  %55 = call i32 @ResourceArrayInit(i32* %53, i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = call i32 @FileGetDatum(i32 -1)
  %59 = call i32 @ResourceArrayInit(i32* %57, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = call i32 @PointerGetDatum(i32* null)
  %63 = call i32 @ResourceArrayInit(i32* %61, i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @PointerGetDatum(i32* null)
  %67 = call i32 @ResourceArrayInit(i32* %65, i32 %66)
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %68
}

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

declare dso_local i32 @ResourceArrayInit(i32*, i32) #1

declare dso_local i32 @BufferGetDatum(i32) #1

declare dso_local i32 @PointerGetDatum(i32*) #1

declare dso_local i32 @FileGetDatum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

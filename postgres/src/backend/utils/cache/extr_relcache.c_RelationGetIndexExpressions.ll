; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetIndexExpressions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relcache.c_RelationGetIndexExpressions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32* }

@Anum_pg_index_indexprs = common dso_local global i32 0, align 4
@NIL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RelationGetIndexExpressions(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32* @copyObject(i32* %16)
  store i32* %17, i32** %2, align 8
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %28 = call i64 @heap_attisnull(i32* %26, i32 %27, i32* null)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %18
  %31 = load i32*, i32** @NIL, align 8
  store i32* %31, i32** %2, align 8
  br label %67

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @Anum_pg_index_indexprs, align 4
  %37 = call i32 (...) @GetPgIndexDescriptor()
  %38 = call i32 @heap_getattr(i32* %35, i32 %36, i32 %37, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = call i8* @TextDatumGetCString(i32 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @stringToNode(i8* %46)
  %48 = inttoptr i64 %47 to i32*
  store i32* %48, i32** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @pfree(i8* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = call i64 @eval_const_expressions(i32* null, i32* %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %4, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @fix_opfuncids(i32* %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MemoryContextSwitchTo(i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32* @copyObject(i32* %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @MemoryContextSwitchTo(i32 %64)
  %66 = load i32*, i32** %4, align 8
  store i32* %66, i32** %2, align 8
  br label %67

67:                                               ; preds = %32, %30, %13
  %68 = load i32*, i32** %2, align 8
  ret i32* %68
}

declare dso_local i32* @copyObject(i32*) #1

declare dso_local i64 @heap_attisnull(i32*, i32, i32*) #1

declare dso_local i32 @heap_getattr(i32*, i32, i32, i32*) #1

declare dso_local i32 @GetPgIndexDescriptor(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i8* @TextDatumGetCString(i32) #1

declare dso_local i64 @stringToNode(i8*) #1

declare dso_local i32 @pfree(i8*) #1

declare dso_local i64 @eval_const_expressions(i32*, i32*) #1

declare dso_local i32 @fix_opfuncids(i32*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_refnameRangeTblEntry.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_relation.c_refnameRangeTblEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@InvalidOid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @refnameRangeTblEntry(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* @InvalidOid, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32*, i32** %11, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32*, i32** %11, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @LookupNamespaceNoError(i8* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i64 @OidIsValid(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store i32* null, i32** %6, align 8
  br label %75

30:                                               ; preds = %23
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @get_relname_relid(i8* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @OidIsValid(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32* null, i32** %6, align 8
  br label %75

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %70, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %42 = icmp ne %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @OidIsValid(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32* @scanNameSpaceForRelid(%struct.TYPE_5__* %48, i32 %49, i32 %50)
  store i32* %51, i32** %14, align 8
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32* @scanNameSpaceForRefname(%struct.TYPE_5__* %53, i8* %54, i32 %55)
  store i32* %56, i32** %14, align 8
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32*, i32** %14, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32*, i32** %14, align 8
  store i32* %61, i32** %6, align 8
  br label %75

62:                                               ; preds = %57
  %63 = load i32*, i32** %11, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %70

69:                                               ; preds = %62
  br label %74

70:                                               ; preds = %65
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  store %struct.TYPE_5__* %73, %struct.TYPE_5__** %7, align 8
  br label %40

74:                                               ; preds = %69, %40
  store i32* null, i32** %6, align 8
  br label %75

75:                                               ; preds = %74, %60, %37, %29
  %76 = load i32*, i32** %6, align 8
  ret i32* %76
}

declare dso_local i32 @LookupNamespaceNoError(i8*) #1

declare dso_local i64 @OidIsValid(i32) #1

declare dso_local i32 @get_relname_relid(i8*, i32) #1

declare dso_local i32* @scanNameSpaceForRelid(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32* @scanNameSpaceForRefname(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_rankSort.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/psql/extr_crosstabview.c_rankSort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@rankCompare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*)* @rankSort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rankSort(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = mul i64 %10, 2
  %12 = trunc i64 %11 to i32
  %13 = call i64 @pg_malloc(i32 %12)
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %76, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %79

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i64 @strspn(i8* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %33, %28
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strspn(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41, %33
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @atoi(i8* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = mul nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 2
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32 %55, i32* %61, align 4
  br label %75

62:                                               ; preds = %41, %19
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %70, 2
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %62, %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %15

79:                                               ; preds = %15
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @rankCompare, align 4
  %83 = call i32 @qsort(i32* %80, i32 %81, i32 8, i32 %82)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %101, %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %92, 2
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %89, i32* %100, align 8
  br label %101

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %84

104:                                              ; preds = %84
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @pg_free(i32* %105)
  ret void
}

declare dso_local i64 @pg_malloc(i32) #1

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

declare dso_local i32 @pg_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

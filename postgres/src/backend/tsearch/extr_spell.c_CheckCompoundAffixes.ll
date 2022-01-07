; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_CheckCompoundAffixes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_CheckCompoundAffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__**, i8*, i32, i32)* @CheckCompoundAffixes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCompoundAffixes(%struct.TYPE_3__** %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %124

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %69

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %64, %19
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %27, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @strncmp(i64 %37, i8* %38, i32 %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %33
  %46 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %10, align 4
  %54 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 1
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %54, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  br label %62

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i32 [ %60, %59 ], [ 0, %61 ]
  store i32 %63, i32* %5, align 4
  br label %124

64:                                               ; preds = %33, %26
  %65 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 1
  store %struct.TYPE_3__* %67, %struct.TYPE_3__** %65, align 8
  br label %20

68:                                               ; preds = %20
  br label %123

69:                                               ; preds = %16
  br label %70

70:                                               ; preds = %118, %69
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %122

76:                                               ; preds = %70
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp sgt i32 %77, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %76
  %84 = load i8*, i8** %7, align 8
  %85 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @strstr(i8* %84, i64 %88)
  store i8* %89, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %83
  %92 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = load i8*, i8** %11, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = add nsw i64 %96, %101
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  %104 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 1
  store %struct.TYPE_3__* %110, %struct.TYPE_3__** %108, align 8
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %91
  %114 = load i32, i32* %8, align 4
  br label %116

115:                                              ; preds = %91
  br label %116

116:                                              ; preds = %115, %113
  %117 = phi i32 [ %114, %113 ], [ 0, %115 ]
  store i32 %117, i32* %5, align 4
  br label %124

118:                                              ; preds = %83, %76
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %6, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 1
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %119, align 8
  br label %70

122:                                              ; preds = %70
  br label %123

123:                                              ; preds = %122, %68
  store i32 -1, i32* %5, align 4
  br label %124

124:                                              ; preds = %123, %116, %62, %15
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i64 @strncmp(i64, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

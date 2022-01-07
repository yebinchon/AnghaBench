; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_count.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_visibilitymap.c_visibilitymap_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAPSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unsupported MAPSIZE\00", align 1
@VISIBLE_MASK64 = common dso_local global i32 0, align 4
@FROZEN_MASK64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visibilitymap_count(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @Assert(i64* %13)
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %95, %3
  %16 = load i32, i32* %4, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @vm_readbuf(i32 %16, i64 %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @BufferIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %98

23:                                               ; preds = %15
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @BufferGetPage(i32 %24)
  %26 = call i64 @PageGetContents(i32 %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* @MAPSIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = urem i64 %29, 4
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @StaticAssertStmt(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load i64*, i64** %6, align 8
  %35 = icmp eq i64* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %55, %36
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32, i32* @MAPSIZE, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VISIBLE_MASK64, align 4
  %51 = and i32 %49, %50
  %52 = call i64 @pg_popcount64(i32 %51)
  %53 = load i64, i64* %8, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %37

58:                                               ; preds = %37
  br label %92

59:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %88, %59
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = load i32, i32* @MAPSIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %64, 4
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VISIBLE_MASK64, align 4
  %74 = and i32 %72, %73
  %75 = call i64 @pg_popcount64(i32 %74)
  %76 = load i64, i64* %8, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %8, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FROZEN_MASK64, align 4
  %84 = and i32 %82, %83
  %85 = call i64 @pg_popcount64(i32 %84)
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %60

91:                                               ; preds = %60
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @ReleaseBuffer(i32 %93)
  br label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %7, align 8
  br label %15

98:                                               ; preds = %22
  %99 = load i64, i64* %8, align 8
  %100 = load i64*, i64** %5, align 8
  store i64 %99, i64* %100, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i64, i64* %9, align 8
  %105 = load i64*, i64** %6, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %98
  ret void
}

declare dso_local i32 @Assert(i64*) #1

declare dso_local i32 @vm_readbuf(i32, i64, i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @PageGetContents(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @StaticAssertStmt(i32, i8*) #1

declare dso_local i64 @pg_popcount64(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

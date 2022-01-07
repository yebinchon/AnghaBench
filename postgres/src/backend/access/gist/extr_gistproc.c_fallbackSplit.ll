; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_fallbackSplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistproc.c_fallbackSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32*, i64, i64, i8*, i8* }

@FirstOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @fallbackSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fallbackSplit(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @palloc(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32* %22, i32** %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @palloc(i32 %25)
  %27 = inttoptr i64 %26 to i32*
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %109, %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %112

39:                                               ; preds = %35
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32* @DatumGetBoxP(i32 %47)
  store i32* %48, i32** %10, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @FirstOffsetNumber, align 4
  %52 = sub nsw i32 %50, %51
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %53, 2
  %55 = icmp sle i32 %49, %54
  br i1 %55, label %56, label %82

56:                                               ; preds = %39
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %57, i32* %64, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = call i64 @palloc(i32 4)
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %7, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  br label %77

73:                                               ; preds = %56
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @adjustBox(i32* %74, i32* %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %79, align 8
  br label %108

82:                                               ; preds = %39
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %83, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %82
  %94 = call i64 @palloc(i32 4)
  %95 = inttoptr i64 %94 to i32*
  store i32* %95, i32** %8, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  br label %103

99:                                               ; preds = %82
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @adjustBox(i32* %100, i32* %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %103, %77
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @OffsetNumberNext(i32 %110)
  store i32 %111, i32* %5, align 4
  br label %35

112:                                              ; preds = %35
  %113 = load i32*, i32** %7, align 8
  %114 = call i8* @BoxPGetDatum(i32* %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i8* @BoxPGetDatum(i32* %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  store i8* %118, i8** %120, align 8
  ret void
}

declare dso_local i64 @palloc(i32) #1

declare dso_local i32* @DatumGetBoxP(i32) #1

declare dso_local i32 @adjustBox(i32*, i32*) #1

declare dso_local i32 @OffsetNumberNext(i32) #1

declare dso_local i8* @BoxPGetDatum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

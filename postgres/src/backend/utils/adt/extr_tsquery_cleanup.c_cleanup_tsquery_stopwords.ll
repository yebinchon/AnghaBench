; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_cleanup.c_cleanup_tsquery_stopwords.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_cleanup.c_cleanup_tsquery_stopwords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"text-search query contains only stop words or doesn't contain lexemes, ignored\00", align 1
@HDRSIZETQ = common dso_local global i32 0, align 4
@QI_VAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @cleanup_tsquery_stopwords(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %2, align 8
  br label %128

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = call i8* @GETQUERY(%struct.TYPE_9__* %22)
  %24 = call i32 @maketree(i8* %23)
  %25 = call i32* @clean_stopword_intree(i32 %24, i32* %9, i32* %10)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i32, i32* @NOTICE, align 4
  %30 = call i32 @errmsg(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @ereport(i32 %29, i32 %30)
  %32 = load i32, i32* @HDRSIZETQ, align 4
  %33 = call %struct.TYPE_9__* @palloc(i32 %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %11, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %37 = load i32, i32* @HDRSIZETQ, align 4
  %38 = call i32 @SET_VARSIZE(%struct.TYPE_9__* %36, i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %2, align 8
  br label %128

40:                                               ; preds = %21
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @calcstrlen(i32* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i8* @plaintree(i32* %43, i32* %4)
  store i8* %44, i8** %12, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @COMPUTESIZE(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_9__* @palloc(i32 %48)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %11, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @SET_VARSIZE(%struct.TYPE_9__* %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = call i8* @GETQUERY(%struct.TYPE_9__* %57)
  %59 = load i8*, i8** %12, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(i8* %58, i8* %59, i32 %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %66 = call i8* @GETQUERY(%struct.TYPE_9__* %65)
  store i8* %66, i8** %12, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %68 = call i8* @GETOPERAND(%struct.TYPE_9__* %67)
  store i8* %68, i8** %13, align 8
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %123, %40
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %126

76:                                               ; preds = %69
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %14, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QI_VAL, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %123

88:                                               ; preds = %76
  %89 = load i8*, i8** %13, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = call i8* @GETOPERAND(%struct.TYPE_9__* %90)
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @memcpy(i8* %89, i8* %96, i32 %99)
  %101 = load i8*, i8** %13, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %109 = call i8* @GETOPERAND(%struct.TYPE_9__* %108)
  %110 = ptrtoint i8* %107 to i64
  %111 = ptrtoint i8* %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i8*, i8** %13, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %13, align 8
  br label %123

123:                                              ; preds = %88, %87
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %69

126:                                              ; preds = %69
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %127, %struct.TYPE_9__** %2, align 8
  br label %128

128:                                              ; preds = %126, %28, %19
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %129
}

declare dso_local i32* @clean_stopword_intree(i32, i32*, i32*) #1

declare dso_local i32 @maketree(i8*) #1

declare dso_local i8* @GETQUERY(%struct.TYPE_9__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local %struct.TYPE_9__* @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @calcstrlen(i32*) #1

declare dso_local i8* @plaintree(i32*, i32*) #1

declare dso_local i32 @COMPUTESIZE(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @GETOPERAND(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

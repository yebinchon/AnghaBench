; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_addCompoundAffixFlagValue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_addCompoundAffixFlagValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32)* @addCompoundAffixFlagValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addCompoundAffixFlagValue(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @BUFSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  br label %16

16:                                               ; preds = %27, %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @t_isspace(i8* %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %27, label %33

27:                                               ; preds = %25
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @pg_mblen(i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %5, align 8
  br label %16

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @ERROR, align 4
  %39 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %40 = call i32 @errcode(i32 %39)
  %41 = call i32 @errmsg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @ereport(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %33
  store i8* %15, i8** %10, align 8
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @t_isspace(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 10
  br label %58

58:                                               ; preds = %53, %49, %44
  %59 = phi i1 [ false, %49 ], [ false, %44 ], [ %57, %53 ]
  br i1 %59, label %60, label %74

60:                                               ; preds = %58
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @pg_mblen(i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @COPYCHAR(i8* %63, i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %5, align 8
  br label %44

74:                                               ; preds = %58
  %75 = load i8*, i8** %10, align 8
  store i8 0, i8* %75, align 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %121

83:                                               ; preds = %74
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %83
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %90, align 4
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 %100, 4
  %102 = trunc i64 %101 to i32
  %103 = call i64 @repalloc(i8* %96, i32 %102)
  %104 = inttoptr i64 %103 to i32*
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  br label %120

107:                                              ; preds = %83
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 10, i32* %109, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i64 @tmpalloc(i32 %115)
  %117 = inttoptr i64 %116 to i32*
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 3
  store i32* %117, i32** %119, align 8
  br label %120

120:                                              ; preds = %107, %88
  br label %121

121:                                              ; preds = %120, %74
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %124, i64 %128
  store i32* %129, i32** %7, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @setCompoundAffixFlagValue(%struct.TYPE_4__* %130, i32* %131, i8* %15, i32 %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %140)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @t_isspace(i8*) #2

declare dso_local i32 @pg_mblen(i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*) #2

declare dso_local i32 @COPYCHAR(i8*, i8*) #2

declare dso_local i64 @repalloc(i8*, i32) #2

declare dso_local i64 @tmpalloc(i32) #2

declare dso_local i32 @setCompoundAffixFlagValue(%struct.TYPE_4__*, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgFormInnerTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgFormInnerTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SGITHDRSZ = common dso_local global i32 0, align 4
@SGDTSIZE = common dso_local global i32 0, align 4
@SPGIST_PAGE_CAPACITY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SP-GiST inner tuple size %zu exceeds maximum %zu\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Values larger than a buffer page cannot be indexed.\00", align 1
@SGITMAXSIZE = common dso_local global i32 0, align 4
@SGITMAXPREFIXSIZE = common dso_local global i32 0, align 4
@SGITMAXNNODES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"SPGiST inner tuple header field is too small\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @spgFormInnerTuple(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @SpGistGetTypeSize(i32* %21, i32 %22)
  store i32 %23, i32* %13, align 4
  br label %25

24:                                               ; preds = %5
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* @SGITHDRSZ, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add i32 %26, %27
  store i32 %28, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %44, %25
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IndexTupleSize(i32 %38)
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @SGDTSIZE, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @SGDTSIZE, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 4
  %59 = icmp ugt i64 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %63 = call i32 @errcode(i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @errmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68)
  %70 = call i32 @errhint(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %71 = call i32 @ereport(i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %60, %53
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @SGITMAXSIZE, align 4
  %75 = icmp ugt i32 %73, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* @SGITMAXPREFIXSIZE, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SGITMAXNNODES, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76, %72
  %85 = load i32, i32* @ERROR, align 4
  %86 = call i32 @elog(i32 %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %80
  %88 = load i32, i32* %12, align 4
  %89 = call i64 @palloc0(i32 %88)
  %90 = inttoptr i64 %89 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %11, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %87
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %104 = call i32 @SGITDATAPTR(%struct.TYPE_8__* %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @memcpyDatum(i32 %104, i32* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %87
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = call i64 @SGITNODEPTR(%struct.TYPE_8__* %110)
  %112 = inttoptr i64 %111 to i8*
  store i8* %112, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %132, %109
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %113
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %16, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = call i64 @IndexTupleSize(i32 %125)
  %127 = call i32 @memcpy(i8* %123, i32 %124, i64 %126)
  %128 = load i32, i32* %16, align 4
  %129 = call i64 @IndexTupleSize(i32 %128)
  %130 = load i8*, i8** %15, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 %129
  store i8* %131, i8** %15, align 8
  br label %132

132:                                              ; preds = %117
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %113

135:                                              ; preds = %113
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %136
}

declare dso_local i32 @SpGistGetTypeSize(i32*, i32) #1

declare dso_local i64 @IndexTupleSize(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32, i32) #1

declare dso_local i32 @errhint(i8*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @memcpyDatum(i32, i32*, i32) #1

declare dso_local i32 @SGITDATAPTR(%struct.TYPE_8__*) #1

declare dso_local i64 @SGITNODEPTR(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

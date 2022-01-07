; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseOpExpr.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_deparse.c_deparseOpExpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i8 }

@OPEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_8__*)* @deparseOpExpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deparseOpExpr(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @OPEROID, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ObjectIdGetDatum(i32 %16)
  %18 = call i32 @SearchSysCache1(i32 %13, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @HeapTupleIsValid(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ERROR, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @elog(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @GETSTRUCT(i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %7, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %8, align 1
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 114
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @list_length(i32 %41)
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %66, label %44

44:                                               ; preds = %38, %28
  %45 = load i8, i8* %8, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 108
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @list_length(i32 %51)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %66, label %54

54:                                               ; preds = %48, %44
  %55 = load i8, i8* %8, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 98
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @list_length(i32 %61)
  %63 = icmp eq i32 %62, 2
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i1 [ false, %54 ], [ %63, %58 ]
  br label %66

66:                                               ; preds = %64, %48, %38
  %67 = phi i1 [ true, %48 ], [ true, %38 ], [ %65, %64 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @Assert(i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @appendStringInfoChar(i32 %70, i8 signext 40)
  %72 = load i8, i8* %8, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 114
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i8, i8* %8, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 98
  br i1 %78, label %79, label %90

79:                                               ; preds = %75, %66
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32* @list_head(i32 %82)
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @lfirst(i32* %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = call i32 @deparseExpr(i32 %85, %struct.TYPE_8__* %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @appendStringInfoChar(i32 %88, i8 signext 32)
  br label %90

90:                                               ; preds = %79, %75
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %93 = call i32 @deparseOperatorName(i32 %91, %struct.TYPE_10__* %92)
  %94 = load i8, i8* %8, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 108
  br i1 %96, label %101, label %97

97:                                               ; preds = %90
  %98 = load i8, i8* %8, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 98
  br i1 %100, label %101, label %112

101:                                              ; preds = %97, %90
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32* @list_tail(i32 %104)
  store i32* %105, i32** %9, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @appendStringInfoChar(i32 %106, i8 signext 32)
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @lfirst(i32* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = call i32 @deparseExpr(i32 %109, %struct.TYPE_8__* %110)
  br label %112

112:                                              ; preds = %101, %97
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @appendStringInfoChar(i32 %113, i8 signext 41)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @ReleaseSysCache(i32 %115)
  ret void
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

declare dso_local i32* @list_head(i32) #1

declare dso_local i32 @deparseExpr(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @lfirst(i32*) #1

declare dso_local i32 @deparseOperatorName(i32, %struct.TYPE_10__*) #1

declare dso_local i32* @list_tail(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

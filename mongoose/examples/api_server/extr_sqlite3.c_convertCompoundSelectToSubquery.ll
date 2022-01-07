; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_convertCompoundSelectToSubquery.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_convertCompoundSelectToSubquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, %struct.TYPE_13__*, i64, i64, i64, i32, i32* }
%struct.TYPE_13__ = type { i32, %struct.ExprList_item* }
%struct.ExprList_item = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@WRC_Continue = common dso_local global i32 0, align 4
@TK_ALL = common dso_local global i64 0, align 8
@TK_SELECT = common dso_local global i64 0, align 8
@EP_Collate = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*)* @convertCompoundSelectToSubquery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convertCompoundSelectToSubquery(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ExprList_item*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @WRC_Continue, align 4
  store i32 %19, i32* %3, align 4
  br label %151

20:                                               ; preds = %2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @WRC_Continue, align 4
  store i32 %26, i32* %3, align 4
  br label %151

27:                                               ; preds = %20
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %8, align 8
  br label %29

29:                                               ; preds = %49, %27
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TK_ALL, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TK_SELECT, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i1 [ true, %32 ], [ %43, %38 ]
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi i1 [ false, %29 ], [ %45, %44 ]
  br i1 %47, label %48, label %54

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %8, align 8
  br label %29

54:                                               ; preds = %46
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = icmp eq %struct.TYPE_15__* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @WRC_Continue, align 4
  store i32 %58, i32* %3, align 4
  br label %151

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load %struct.ExprList_item*, %struct.ExprList_item** %63, align 8
  store %struct.ExprList_item* %64, %struct.ExprList_item** %10, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %88, %59
  %72 = load i32, i32* %6, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load %struct.ExprList_item*, %struct.ExprList_item** %10, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %75, i64 %77
  %79 = getelementptr inbounds %struct.ExprList_item, %struct.ExprList_item* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EP_Collate, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %91

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %6, align 4
  br label %71

91:                                               ; preds = %86, %71
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @WRC_Continue, align 4
  store i32 %95, i32* %3, align 4
  br label %151

96:                                               ; preds = %91
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %12, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %9, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call %struct.TYPE_15__* @sqlite3DbMallocZero(i32* %103, i32 80)
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %7, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %106 = icmp eq %struct.TYPE_15__* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %96
  %108 = load i32, i32* @WRC_Abort, align 4
  store i32 %108, i32* %3, align 4
  br label %151

109:                                              ; preds = %96
  %110 = call i32 @memset(i32* %13, i32 0, i32 4)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = call i32* @sqlite3SrcListAppendFromTerm(%struct.TYPE_16__* %111, i32 0, i32 0, i32 0, i32* %13, %struct.TYPE_15__* %112, i32 0, i32 0)
  store i32* %113, i32** %11, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @WRC_Abort, align 4
  store i32 %117, i32* %3, align 4
  br label %151

118:                                              ; preds = %109
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = bitcast %struct.TYPE_15__* %119 to i8*
  %122 = bitcast %struct.TYPE_15__* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 80, i1 false)
  %123 = load i32*, i32** %11, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 9
  store i32* %123, i32** %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = load i64, i64* @TK_ALL, align 8
  %129 = call i32 @sqlite3Expr(i32* %127, i64 %128, i32 0)
  %130 = call i32 @sqlite3ExprListAppend(%struct.TYPE_16__* %126, i32 0, i32 %129)
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 8
  store i32 %130, i32* %132, align 8
  %133 = load i64, i64* @TK_SELECT, align 8
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 7
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 6
  store i64 0, i64* %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 5
  store i64 0, i64* %141, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* @WRC_Continue, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %118, %116, %107, %94, %57, %25, %18
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.TYPE_15__* @sqlite3DbMallocZero(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @sqlite3SrcListAppendFromTerm(%struct.TYPE_16__*, i32, i32, i32, i32*, %struct.TYPE_15__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sqlite3ExprListAppend(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sqlite3Expr(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

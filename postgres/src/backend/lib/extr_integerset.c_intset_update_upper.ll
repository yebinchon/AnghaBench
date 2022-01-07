; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_update_upper.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_intset_update_upper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_11__**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__**, i8** }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i8* }

@MAX_TREE_LEVELS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"could not expand integer set, maximum number of levels reached\00", align 1
@MAX_INTERNAL_ITEMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, %struct.TYPE_11__*, i8*)* @intset_update_upper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intset_update_upper(%struct.TYPE_14__* %0, i32 %1, %struct.TYPE_11__* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @Assert(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %89

21:                                               ; preds = %4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %10, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MAX_TREE_LEVELS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @ERROR, align 4
  %32 = call i32 @elog(i32 %31, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %21
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = bitcast %struct.TYPE_11__* %45 to %struct.TYPE_12__*
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %11, align 8
  br label %59

52:                                               ; preds = %33
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = bitcast %struct.TYPE_11__* %53 to %struct.TYPE_13__*
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %52, %44
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = call %struct.TYPE_13__* @intset_new_internal_node(%struct.TYPE_14__* %60)
  store %struct.TYPE_13__* %61, %struct.TYPE_13__** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 0
  store i8* %65, i8** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %73, i64 0
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %74, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = bitcast %struct.TYPE_13__* %77 to %struct.TYPE_11__*
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = bitcast %struct.TYPE_13__* %81 to %struct.TYPE_11__*
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 %87
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %88, align 8
  br label %89

89:                                               ; preds = %59, %4
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %92, i64 %94
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = bitcast %struct.TYPE_11__* %96 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %9, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MAX_INTERNAL_ITEMS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %89
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i8**, i8*** %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %107, i64 %111
  store i8* %104, i8** %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %115, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %116, i64 %120
  store %struct.TYPE_11__* %113, %struct.TYPE_11__** %121, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %158

126:                                              ; preds = %89
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %128 = call %struct.TYPE_13__* @intset_new_internal_node(%struct.TYPE_14__* %127)
  store %struct.TYPE_13__* %128, %struct.TYPE_13__** %9, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load i8*, i8** %8, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 3
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  store i8* %132, i8** %136, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %140, i64 0
  store %struct.TYPE_11__* %137, %struct.TYPE_11__** %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = bitcast %struct.TYPE_13__* %144 to %struct.TYPE_11__*
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %148, i64 %150
  store %struct.TYPE_11__* %145, %struct.TYPE_11__** %151, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %156 = bitcast %struct.TYPE_13__* %155 to %struct.TYPE_11__*
  %157 = load i8*, i8** %8, align 8
  call void @intset_update_upper(%struct.TYPE_14__* %152, i32 %154, %struct.TYPE_11__* %156, i8* %157)
  br label %158

158:                                              ; preds = %126, %103
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @intset_new_internal_node(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

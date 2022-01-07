; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_cleanup.c_clean_NOT_intree.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_cleanup.c_clean_NOT_intree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@QI_VAL = common dso_local global i64 0, align 8
@OP_NOT = common dso_local global i64 0, align 8
@OP_OR = common dso_local global i64 0, align 8
@OP_AND = common dso_local global i64 0, align 8
@OP_PHRASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*)* @clean_NOT_intree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @clean_NOT_intree(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = call i32 (...) @check_stack_depth()
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QI_VAL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %2, align 8
  br label %131

15:                                               ; preds = %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OP_NOT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @freetree(%struct.TYPE_10__* %25)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %131

27:                                               ; preds = %15
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @OP_OR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = call %struct.TYPE_10__* @clean_NOT_intree(%struct.TYPE_10__* %39)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %42, align 8
  %43 = icmp eq %struct.TYPE_10__* %40, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = call %struct.TYPE_10__* @clean_NOT_intree(%struct.TYPE_10__* %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %50, align 8
  %51 = icmp eq %struct.TYPE_10__* %48, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44, %36
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = call i32 @freetree(%struct.TYPE_10__* %53)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %131

55:                                               ; preds = %44
  br label %129

56:                                               ; preds = %27
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %4, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @OP_AND, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %75, label %66

66:                                               ; preds = %56
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OP_PHRASE, align 8
  %74 = icmp eq i64 %72, %73
  br label %75

75:                                               ; preds = %66, %56
  %76 = phi i1 [ true, %56 ], [ %74, %66 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = call %struct.TYPE_10__* @clean_NOT_intree(%struct.TYPE_10__* %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = call %struct.TYPE_10__* @clean_NOT_intree(%struct.TYPE_10__* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  store %struct.TYPE_10__* %88, %struct.TYPE_10__** %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = icmp eq %struct.TYPE_10__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %75
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = icmp eq %struct.TYPE_10__* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = call i32 @pfree(%struct.TYPE_10__* %101)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  br label %127

103:                                              ; preds = %95, %75
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = icmp eq %struct.TYPE_10__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %4, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = call i32 @pfree(%struct.TYPE_10__* %112)
  br label %126

114:                                              ; preds = %103
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = icmp eq %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  store %struct.TYPE_10__* %122, %struct.TYPE_10__** %4, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = call i32 @pfree(%struct.TYPE_10__* %123)
  br label %125

125:                                              ; preds = %119, %114
  br label %126

126:                                              ; preds = %125, %108
  br label %127

127:                                              ; preds = %126, %100
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %128, %struct.TYPE_10__** %2, align 8
  br label %131

129:                                              ; preds = %55
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_10__* %130, %struct.TYPE_10__** %2, align 8
  br label %131

131:                                              ; preds = %129, %127, %52, %24, %13
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %132
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @freetree(%struct.TYPE_10__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

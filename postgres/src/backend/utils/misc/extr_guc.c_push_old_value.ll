; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_push_old_value.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/misc/extr_guc.c_push_old_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_generic = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }

@GUCNestLevel = common dso_local global i64 0, align 8
@GUC_SET_LOCAL = common dso_local global i8* null, align 8
@GUC_SET = common dso_local global i8* null, align 8
@GUC_SAVE = common dso_local global i8* null, align 8
@guc_dirty = common dso_local global i32 0, align 4
@TopTransactionContext = common dso_local global i32 0, align 4
@GUC_LOCAL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_generic*, i32)* @push_old_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_old_value(%struct.config_generic* %0, i32 %1) #0 {
  %3 = alloca %struct.config_generic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.config_generic* %0, %struct.config_generic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @GUCNestLevel, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %119

9:                                                ; preds = %2
  %10 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %11 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %76

15:                                               ; preds = %9
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @GUCNestLevel, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GUCNestLevel, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %73 [
    i32 128, label %30
    i32 130, label %45
    i32 129, label %65
  ]

30:                                               ; preds = %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** @GUC_SET_LOCAL, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 6
  %40 = call i32 @discard_stack_value(%struct.config_generic* %37, i32* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i8*, i8** @GUC_SET, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  br label %73

45:                                               ; preds = %21
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** @GUC_SET, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %45
  %52 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %53 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 6
  %60 = call i32 @set_stack_value(%struct.config_generic* %57, i32* %59)
  %61 = load i8*, i8** @GUC_SET_LOCAL, align 8
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %51, %45
  br label %73

65:                                               ; preds = %21
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** @GUC_SAVE, align 8
  %70 = icmp eq i8* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  br label %73

73:                                               ; preds = %21, %65, %64, %41
  %74 = load i32, i32* @guc_dirty, align 4
  %75 = call i32 @Assert(i32 %74)
  br label %119

76:                                               ; preds = %15, %9
  %77 = load i32, i32* @TopTransactionContext, align 4
  %78 = call i64 @MemoryContextAllocZero(i32 %77, i32 48)
  %79 = inttoptr i64 %78 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %5, align 8
  %80 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %81 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 5
  store %struct.TYPE_2__* %82, %struct.TYPE_2__** %84, align 8
  %85 = load i64, i64* @GUCNestLevel, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load i32, i32* %4, align 4
  switch i32 %88, label %101 [
    i32 128, label %89
    i32 130, label %93
    i32 129, label %97
  ]

89:                                               ; preds = %76
  %90 = load i8*, i8** @GUC_SET, align 8
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  br label %101

93:                                               ; preds = %76
  %94 = load i8*, i8** @GUC_LOCAL, align 8
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %101

97:                                               ; preds = %76
  %98 = load i8*, i8** @GUC_SAVE, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i8* %98, i8** %100, align 8
  br label %101

101:                                              ; preds = %76, %97, %93, %89
  %102 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %103 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 8
  %107 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %108 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = call i32 @set_stack_value(%struct.config_generic* %112, i32* %114)
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %117 = load %struct.config_generic*, %struct.config_generic** %3, align 8
  %118 = getelementptr inbounds %struct.config_generic, %struct.config_generic* %117, i32 0, i32 0
  store %struct.TYPE_2__* %116, %struct.TYPE_2__** %118, align 8
  store i32 1, i32* @guc_dirty, align 4
  br label %119

119:                                              ; preds = %101, %73, %8
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @discard_stack_value(%struct.config_generic*, i32*) #1

declare dso_local i32 @set_stack_value(%struct.config_generic*, i32*) #1

declare dso_local i64 @MemoryContextAllocZero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

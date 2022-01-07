; ModuleID = '/home/carl/AnghaBench/macvim/src/extr_memfile.c_mf_release_all.c'
source_filename = "/home/carl/AnghaBench/macvim/src/extr_memfile.c_mf_release_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_17__* }

@FALSE = common dso_local global i32 0, align 4
@firstbuf = common dso_local global %struct.TYPE_16__* null, align 8
@BH_LOCKED = common dso_local global i32 0, align 4
@BH_DIRTY = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mf_release_all() #0 {
  %1 = alloca %struct.TYPE_16__*, align 8
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @FALSE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** @firstbuf, align 8
  store %struct.TYPE_16__* %6, %struct.TYPE_16__** %1, align 8
  br label %7

7:                                                ; preds = %83, %0
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %9 = icmp ne %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %87

10:                                               ; preds = %7
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %2, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %82

17:                                               ; preds = %10
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %29 = call i32 @ml_open_file(%struct.TYPE_16__* %28)
  br label %30

30:                                               ; preds = %27, %22, %17
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %3, align 8
  br label %39

39:                                               ; preds = %79, %35
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @BH_LOCKED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BH_DIRTY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = call i64 @mf_write(%struct.TYPE_15__* %57, %struct.TYPE_17__* %58)
  %60 = load i64, i64* @FAIL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %56, %49
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = call i32 @mf_rem_used(%struct.TYPE_15__* %63, %struct.TYPE_17__* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = call i32 @mf_rem_hash(%struct.TYPE_15__* %66, %struct.TYPE_17__* %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = call i32 @mf_free_bhdr(%struct.TYPE_17__* %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  store %struct.TYPE_17__* %73, %struct.TYPE_17__** %3, align 8
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %56, %42
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %77, align 8
  store %struct.TYPE_17__* %78, %struct.TYPE_17__** %3, align 8
  br label %79

79:                                               ; preds = %75, %62
  br label %39

80:                                               ; preds = %39
  br label %81

81:                                               ; preds = %80, %30
  br label %82

82:                                               ; preds = %81, %10
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %1, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  store %struct.TYPE_16__* %86, %struct.TYPE_16__** %1, align 8
  br label %7

87:                                               ; preds = %7
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @ml_open_file(%struct.TYPE_16__*) #1

declare dso_local i64 @mf_write(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mf_rem_used(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mf_rem_hash(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mf_free_bhdr(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

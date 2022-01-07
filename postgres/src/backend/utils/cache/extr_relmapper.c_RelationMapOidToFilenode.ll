; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RelationMapOidToFilenode.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_relmapper.c_RelationMapOidToFilenode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }

@active_shared_updates = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@shared_map = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@active_local_updates = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@local_map = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @RelationMapOidToFilenode(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %2
  store %struct.TYPE_8__* @active_shared_updates, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %18, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %17
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %130

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %7, align 8
  br label %11

39:                                               ; preds = %11
  store %struct.TYPE_8__* @shared_map, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %47, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %3, align 8
  br label %130

64:                                               ; preds = %46
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %40

68:                                               ; preds = %40
  br label %128

69:                                               ; preds = %2
  store %struct.TYPE_8__* @active_local_updates, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %70

70:                                               ; preds = %95, %69
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %98

76:                                               ; preds = %70
  %77 = load i64, i64* %4, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %77, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %3, align 8
  br label %130

94:                                               ; preds = %76
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %7, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %7, align 8
  br label %70

98:                                               ; preds = %70
  store %struct.TYPE_8__* @local_map, %struct.TYPE_8__** %6, align 8
  store i64 0, i64* %7, align 8
  br label %99

99:                                               ; preds = %124, %98
  %100 = load i64, i64* %7, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp ult i64 %100, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %99
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %106, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %3, align 8
  br label %130

123:                                              ; preds = %105
  br label %124

124:                                              ; preds = %123
  %125 = load i64, i64* %7, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %7, align 8
  br label %99

127:                                              ; preds = %99
  br label %128

128:                                              ; preds = %127, %68
  %129 = load i64, i64* @InvalidOid, align 8
  store i64 %129, i64* %3, align 8
  br label %130

130:                                              ; preds = %128, %115, %86, %56, %27
  %131 = load i64, i64* %3, align 8
  ret i64 %131
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

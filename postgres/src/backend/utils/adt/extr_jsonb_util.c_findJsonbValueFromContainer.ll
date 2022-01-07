; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_findJsonbValueFromContainer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_findJsonbValueFromContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@JB_FARRAY = common dso_local global i32 0, align 4
@JB_FOBJECT = common dso_local global i32 0, align 4
@jbvString = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @findJsonbValueFromContainer(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = call i32 @JsonContainerSize(%struct.TYPE_22__* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @JB_FARRAY, align 4
  %21 = load i32, i32* @JB_FOBJECT, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %118

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @JB_FARRAY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %31
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = call i64 @JsonContainerIsArray(%struct.TYPE_22__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %87

40:                                               ; preds = %36
  %41 = call %struct.TYPE_21__* @palloc(i32 16)
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %10, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = bitcast i32* %45 to i8*
  store i8* %46, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %81, %40
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %57 = call i32 @fillJsonbValue(%struct.TYPE_22__* %52, i32 %53, i8* %54, i32 %55, %struct.TYPE_21__* %56)
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %51
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %68 = call i64 @equalsJsonbScalarValue(%struct.TYPE_21__* %66, %struct.TYPE_21__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %71, %struct.TYPE_21__** %4, align 8
  br label %118

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %51
  %74 = load i32, i32* %12, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @JBE_ADVANCE_OFFSET(i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %86 = call i32 @pfree(%struct.TYPE_21__* %85)
  br label %117

87:                                               ; preds = %36, %31
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* @JB_FOBJECT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %116

92:                                               ; preds = %87
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %94 = call i64 @JsonContainerIsObject(%struct.TYPE_22__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %116

96:                                               ; preds = %92
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @jbvString, align 8
  %101 = icmp eq i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @Assert(i32 %102)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.TYPE_21__* @getKeyJsonValueFromContainer(%struct.TYPE_22__* %104, i32 %109, i32 %114, i32* null)
  store %struct.TYPE_21__* %115, %struct.TYPE_21__** %4, align 8
  br label %118

116:                                              ; preds = %92, %87
  br label %117

117:                                              ; preds = %116, %84
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %118

118:                                              ; preds = %117, %96, %70, %30
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %119
}

declare dso_local i32 @JsonContainerSize(%struct.TYPE_22__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @JsonContainerIsArray(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @palloc(i32) #1

declare dso_local i32 @fillJsonbValue(%struct.TYPE_22__*, i32, i8*, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @equalsJsonbScalarValue(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @JBE_ADVANCE_OFFSET(i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_21__*) #1

declare dso_local i64 @JsonContainerIsObject(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @getKeyJsonValueFromContainer(%struct.TYPE_22__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

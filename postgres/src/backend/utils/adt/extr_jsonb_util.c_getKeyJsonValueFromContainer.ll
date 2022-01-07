; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_getKeyJsonValueFromContainer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_getKeyJsonValueFromContainer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @getKeyJsonValueFromContainer(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i32 @JsonContainerSize(%struct.TYPE_8__* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = call i32 @JsonContainerIsObject(%struct.TYPE_8__* %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %95

31:                                               ; preds = %4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = bitcast i32* %36 to i8*
  store i8* %37, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %93, %31
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %94

43:                                               ; preds = %39
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sdiv i32 %47, 2
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %15, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @getJsonbOffset(%struct.TYPE_8__* %51, i32 %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %50, i64 %54
  store i8* %55, i8** %17, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @getJsonbLength(%struct.TYPE_8__* %56, i32 %57)
  store i32 %58, i32* %18, align 4
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @lengthCompareJsonbString(i8* %59, i32 %60, i8* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %43
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %19, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32* @palloc(i32 4)
  store i32* %73, i32** %9, align 8
  br label %74

74:                                               ; preds = %72, %66
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %76 = load i32, i32* %19, align 4
  %77 = load i8*, i8** %12, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @getJsonbOffset(%struct.TYPE_8__* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @fillJsonbValue(%struct.TYPE_8__* %75, i32 %76, i8* %77, i32 %80, i32* %81)
  %83 = load i32*, i32** %9, align 8
  store i32* %83, i32** %5, align 8
  br label %95

84:                                               ; preds = %43
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %90, %87
  br label %93

93:                                               ; preds = %92
  br label %39

94:                                               ; preds = %39
  store i32* null, i32** %5, align 8
  br label %95

95:                                               ; preds = %94, %74, %30
  %96 = load i32*, i32** %5, align 8
  ret i32* %96
}

declare dso_local i32 @JsonContainerSize(%struct.TYPE_8__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @JsonContainerIsObject(%struct.TYPE_8__*) #1

declare dso_local i32 @getJsonbOffset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @getJsonbLength(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lengthCompareJsonbString(i8*, i32, i8*, i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @fillJsonbValue(%struct.TYPE_8__*, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

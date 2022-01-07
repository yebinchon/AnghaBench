; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_fillJsonbValue.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonb_util.c_fillJsonbValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i64, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i8*, i32 }

@jbvNull = common dso_local global i8* null, align 8
@jbvString = common dso_local global i8* null, align 8
@jbvNumeric = common dso_local global i8* null, align 8
@jbvBool = common dso_local global i8* null, align 8
@jbvBinary = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i8*, i32, %struct.TYPE_12__*)* @fillJsonbValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillJsonbValue(%struct.TYPE_13__* %0, i32 %1, i8* %2, i32 %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %10, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @JBE_ISNULL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i8*, i8** @jbvNull, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  br label %129

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @JBE_ISSTRING(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load i8*, i8** @jbvString, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @getJsonbLength(%struct.TYPE_13__* %42, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  br label %128

57:                                               ; preds = %26
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @JBE_ISNUMERIC(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i8*, i8** @jbvNumeric, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @INTALIGN(i32 %66)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = ptrtoint i8* %69 to i64
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  store i64 %70, i64* %73, align 8
  br label %127

74:                                               ; preds = %57
  %75 = load i32, i32* %11, align 4
  %76 = call i64 @JBE_ISBOOL_TRUE(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i8*, i8** @jbvBool, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %126

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = call i64 @JBE_ISBOOL_FALSE(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85
  %90 = load i8*, i8** @jbvBool, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %125

96:                                               ; preds = %85
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @JBE_ISCONTAINER(i32 %97)
  %99 = call i32 @Assert(i32 %98)
  %100 = load i8*, i8** @jbvBinary, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @INTALIGN(i32 %104)
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  %108 = bitcast i8* %107 to %struct.TYPE_13__*
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store %struct.TYPE_13__* %108, %struct.TYPE_13__** %112, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @getJsonbLength(%struct.TYPE_13__* %113, i32 %114)
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @INTALIGN(i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sub nsw i32 %115, %119
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  store i32 %120, i32* %124, align 8
  br label %125

125:                                              ; preds = %96, %89
  br label %126

126:                                              ; preds = %125, %78
  br label %127

127:                                              ; preds = %126, %61
  br label %128

128:                                              ; preds = %127, %30
  br label %129

129:                                              ; preds = %128, %22
  ret void
}

declare dso_local i64 @JBE_ISNULL(i32) #1

declare dso_local i64 @JBE_ISSTRING(i32) #1

declare dso_local i32 @getJsonbLength(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @JBE_ISNUMERIC(i32) #1

declare dso_local i32 @INTALIGN(i32) #1

declare dso_local i64 @JBE_ISBOOL_TRUE(i32) #1

declare dso_local i64 @JBE_ISBOOL_FALSE(i32) #1

declare dso_local i32 @JBE_ISCONTAINER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

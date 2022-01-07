; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_fill_protrefs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_fill_protrefs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@S_OK = common dso_local global i32 0, align 4
@PROP_DELETED = common dso_local global i64 0, align 8
@PROP_PROTREF = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @fill_protrefs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_protrefs(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = icmp ne %struct.TYPE_10__* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @S_OK, align 4
  store i32 %12, i32* %2, align 4
  br label %119

13:                                               ; preds = %1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = call i32 @fill_protrefs(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %4, align 8
  br label %23

23:                                               ; preds = %114, %13
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %35
  %37 = icmp ult %struct.TYPE_11__* %24, %36
  br i1 %37, label %38, label %117

38:                                               ; preds = %23
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %114

44:                                               ; preds = %38
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @find_prop_name(%struct.TYPE_10__* %45, i32 %48, i32 %51, %struct.TYPE_11__** %5)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %119

58:                                               ; preds = %44
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = icmp ne %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PROP_DELETED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %113

67:                                               ; preds = %61, %58
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = icmp ne %struct.TYPE_11__* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %67
  %71 = load i64, i64* @PROP_PROTREF, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = ptrtoint %struct.TYPE_11__* %76 to i64
  %83 = ptrtoint %struct.TYPE_11__* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 32
  %86 = trunc i64 %85 to i32
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 4
  br label %112

90:                                               ; preds = %67
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = ptrtoint %struct.TYPE_11__* %95 to i64
  %102 = ptrtoint %struct.TYPE_11__* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 32
  %105 = trunc i64 %104 to i32
  %106 = call %struct.TYPE_11__* @alloc_protref(%struct.TYPE_10__* %91, i32 %94, i32 %105)
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %5, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %108 = icmp ne %struct.TYPE_11__* %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %90
  %110 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %110, i32* %2, align 4
  br label %119

111:                                              ; preds = %90
  br label %112

112:                                              ; preds = %111, %70
  br label %113

113:                                              ; preds = %112, %61
  br label %114

114:                                              ; preds = %113, %43
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 1
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %4, align 8
  br label %23

117:                                              ; preds = %23
  %118 = load i32, i32* @S_OK, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %109, %56, %11
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @find_prop_name(%struct.TYPE_10__*, i32, i32, %struct.TYPE_11__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_11__* @alloc_protref(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

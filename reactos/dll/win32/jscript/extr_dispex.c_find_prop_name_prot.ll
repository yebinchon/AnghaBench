; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_find_prop_name_prot.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_find_prop_name_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__* }

@PROP_DELETED = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@PROP_PROTREF = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*, %struct.TYPE_13__**)* @find_prop_name_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_prop_name_prot(%struct.TYPE_12__* %0, i32 %1, i32* %2, %struct.TYPE_13__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @find_prop_name(%struct.TYPE_12__* %13, i32 %14, i32* %15, %struct.TYPE_13__** %10)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i64 @FAILED(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %110

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PROP_DELETED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %32, %struct.TYPE_13__** %11, align 8
  br label %41

33:                                               ; preds = %25, %22
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %35 = icmp ne %struct.TYPE_13__* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %38 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %38, align 8
  %39 = load i32, i32* @S_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %110

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %106

46:                                               ; preds = %41
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @find_prop_name_prot(%struct.TYPE_12__* %49, i32 %50, i32* %51, %struct.TYPE_13__** %10)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i64 @FAILED(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %5, align 4
  br label %110

58:                                               ; preds = %46
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = icmp ne %struct.TYPE_13__* %59, null
  br i1 %60, label %61, label %105

61:                                               ; preds = %58
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %63 = icmp ne %struct.TYPE_13__* %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i64, i64* @PROP_PROTREF, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i64 %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %10, align 8
  br label %101

81:                                               ; preds = %61
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub i64 0, %92
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i64 %93
  %95 = call %struct.TYPE_13__* @alloc_protref(%struct.TYPE_12__* %82, i32 %85, %struct.TYPE_13__* %94)
  store %struct.TYPE_13__* %95, %struct.TYPE_13__** %10, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = icmp ne %struct.TYPE_13__* %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %81
  %99 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %99, i32* %5, align 4
  br label %110

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100, %64
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %103 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %103, align 8
  %104 = load i32, i32* @S_OK, align 4
  store i32 %104, i32* %5, align 4
  br label %110

105:                                              ; preds = %58
  br label %106

106:                                              ; preds = %105, %41
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %108 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %107, %struct.TYPE_13__** %108, align 8
  %109 = load i32, i32* @S_OK, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %101, %98, %56, %36, %20
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @find_prop_name(%struct.TYPE_12__*, i32, i32*, %struct.TYPE_13__**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_13__* @alloc_protref(%struct.TYPE_12__*, i32, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

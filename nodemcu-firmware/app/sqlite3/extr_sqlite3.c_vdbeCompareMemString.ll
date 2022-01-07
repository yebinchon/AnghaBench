; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeCompareMemString.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_vdbeCompareMemString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i8*, i32 }
%struct.TYPE_11__ = type { i64, i32 (i32, i32, i8*, i32, i8*)*, i32 }

@MEM_Null = common dso_local global i32 0, align 4
@MEM_Ephem = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @vdbeCompareMemString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdbeCompareMemString(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i32 (i32, i32, i8*, i32, i8*)*, i32 (i32, i32, i8*, i32, i8*)** %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 %27(i32 %30, i32 %33, i8* %36, i32 %39, i8* %42)
  store i32 %43, i32* %5, align 4
  br label %113

44:                                               ; preds = %4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MEM_Null, align 4
  %49 = call i32 @sqlite3VdbeMemInit(%struct.TYPE_10__* %15, i32 %47, i32 %48)
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MEM_Null, align 4
  %54 = call i32 @sqlite3VdbeMemInit(%struct.TYPE_10__* %16, i32 %52, i32 %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = load i32, i32* @MEM_Ephem, align 4
  %57 = call i32 @sqlite3VdbeMemShallowCopy(%struct.TYPE_10__* %15, %struct.TYPE_10__* %55, i32 %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = load i32, i32* @MEM_Ephem, align 4
  %60 = call i32 @sqlite3VdbeMemShallowCopy(%struct.TYPE_10__* %16, %struct.TYPE_10__* %58, i32 %59)
  %61 = bitcast %struct.TYPE_10__* %15 to i32*
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @sqlite3ValueText(i32* %61, i64 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  br label %72

69:                                               ; preds = %44
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  store i32 %73, i32* %13, align 4
  %74 = bitcast %struct.TYPE_10__* %16 to i32*
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @sqlite3ValueText(i32* %74, i64 %77)
  store i8* %78, i8** %12, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %85

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  br label %85

85:                                               ; preds = %82, %81
  %86 = phi i32 [ 0, %81 ], [ %84, %82 ]
  store i32 %86, i32* %14, align 4
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32 (i32, i32, i8*, i32, i8*)*, i32 (i32, i32, i8*, i32, i8*)** %88, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 %89(i32 %92, i32 %93, i8* %94, i32 %95, i8* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i8*, i8** %11, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %85
  %101 = load i8*, i8** %12, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100, %85
  %104 = load i32*, i32** %9, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %103, %100
  %110 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__* %15)
  %111 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__* %16)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %24
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @sqlite3VdbeMemInit(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @sqlite3VdbeMemShallowCopy(%struct.TYPE_10__*, %struct.TYPE_10__*, i32) #1

declare dso_local i8* @sqlite3ValueText(i32*, i64) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

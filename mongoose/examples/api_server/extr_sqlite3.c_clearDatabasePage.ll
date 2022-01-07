; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_clearDatabasePage.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_clearDatabasePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i8*, i32, i32, i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, i32, i32*)* @clearDatabasePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clearDatabasePage(%struct.TYPE_13__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sqlite3_mutex_held(i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = call i64 @btreePagecount(%struct.TYPE_13__* %20)
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %24, i32* %5, align 4
  br label %131

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @getAndInitPage(%struct.TYPE_13__* %26, i64 %27, %struct.TYPE_12__** %10, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %131

33:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %66, %33
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %34
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i8* @findCell(%struct.TYPE_12__* %41, i32 %42)
  store i8* %43, i8** %12, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %40
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @get4byte(i8* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @clearDatabasePage(%struct.TYPE_13__* %49, i64 %51, i32 1, i32* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %127

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @clearCell(%struct.TYPE_12__* %59, i8* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %127

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %34

69:                                               ; preds = %34
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %87, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 8
  %80 = call i64 @get4byte(i8* %79)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @clearDatabasePage(%struct.TYPE_13__* %75, i64 %80, i32 1, i32* %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %127

86:                                               ; preds = %74
  br label %102

87:                                               ; preds = %69
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %97
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %90, %87
  br label %102

102:                                              ; preds = %101, %86
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %107 = call i32 @freePage(%struct.TYPE_12__* %106, i32* %11)
  br label %126

108:                                              ; preds = %102
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @sqlite3PagerWrite(i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* @PTF_LEAF, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @zeroPage(%struct.TYPE_12__* %115, i32 %123)
  br label %125

125:                                              ; preds = %114, %108
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %85, %64, %56
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = call i32 @releasePage(%struct.TYPE_12__* %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %31, %23
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i64 @btreePagecount(%struct.TYPE_13__*) #1

declare dso_local i32 @getAndInitPage(%struct.TYPE_13__*, i64, %struct.TYPE_12__**, i32) #1

declare dso_local i8* @findCell(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @get4byte(i8*) #1

declare dso_local i32 @clearCell(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @freePage(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @zeroPage(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_setupLookaside.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_setupLookaside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i64, i64 }

@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32, i32)* @setupLookaside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setupLookaside(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @SQLITE_BUSY, align 4
  store i32 %19, i32* %5, align 4
  br label %150

20:                                               ; preds = %4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @sqlite3_free(%struct.TYPE_7__* %30)
  br label %32

32:                                               ; preds = %26, %20
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ROUNDDOWN8(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sle i32 %35, 8
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  br label %70

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = call i32 (...) @sqlite3BeginBenignMalloc()
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i8* @sqlite3Malloc(i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = call i32 (...) @sqlite3EndBenignMalloc()
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @sqlite3MallocSize(i8* %62)
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %63, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %61, %52
  br label %69

67:                                               ; preds = %49
  %68 = load i8*, i8** %7, align 8
  store i8* %68, i8** %10, align 8
  br label %69

69:                                               ; preds = %67, %66
  br label %70

70:                                               ; preds = %69, %48
  %71 = load i8*, i8** %10, align 8
  %72 = bitcast i8* %71 to %struct.TYPE_7__*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %78, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  store i64 %80, i64* %83, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %133

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  %88 = icmp sgt i32 %87, 8
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i8*, i8** %10, align 8
  %92 = bitcast i8* %91 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %92, %struct.TYPE_7__** %12, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %115, %86
  %96 = load i32, i32* %11, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  store %struct.TYPE_7__* %105, %struct.TYPE_7__** %108, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %110 = bitcast %struct.TYPE_7__* %109 to i32*
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = bitcast i32* %113 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %12, align 8
  br label %115

115:                                              ; preds = %98
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %11, align 4
  br label %95

118:                                              ; preds = %95
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 2
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %122, align 8
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load i8*, i8** %7, align 8
  %127 = icmp eq i8* %126, null
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 1, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  br label %148

133:                                              ; preds = %70
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store %struct.TYPE_7__* %134, %struct.TYPE_7__** %137, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  store %struct.TYPE_7__* %138, %struct.TYPE_7__** %141, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  br label %148

148:                                              ; preds = %133, %118
  %149 = load i32, i32* @SQLITE_OK, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %148, %18
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @sqlite3_free(%struct.TYPE_7__*) #1

declare dso_local i32 @ROUNDDOWN8(i32) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i8* @sqlite3Malloc(i32) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @sqlite3MallocSize(i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

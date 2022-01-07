; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_exprNodeIsConstant.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_exprNodeIsConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EP_FromJoin = common dso_local global i32 0, align 4
@WRC_Abort = common dso_local global i32 0, align 4
@EP_ConstFunc = common dso_local global i32 0, align 4
@WRC_Continue = common dso_local global i32 0, align 4
@TK_NULL = common dso_local global i32 0, align 4
@TK_SELECT = common dso_local global i32 0, align 4
@TK_EXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @exprNodeIsConstant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprNodeIsConstant(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = load i32, i32* @EP_FromJoin, align 4
  %13 = call i64 @ExprHasProperty(%struct.TYPE_9__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @WRC_Abort, align 4
  store i32 %18, i32* %3, align 4
  br label %126

19:                                               ; preds = %10, %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %110 [
    i32 131, label %23
    i32 130, label %39
    i32 132, label %39
    i32 133, label %39
    i32 134, label %39
    i32 129, label %80
    i32 128, label %90
  ]

23:                                               ; preds = %19
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 4
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = load i32, i32* @EP_ConstFunc, align 4
  %31 = call i64 @ExprHasProperty(%struct.TYPE_9__* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @WRC_Continue, align 4
  store i32 %34, i32* %3, align 4
  br label %126

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @WRC_Abort, align 4
  store i32 %38, i32* %3, align 4
  br label %126

39:                                               ; preds = %19, %19, %19, %19
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 130
  %44 = zext i1 %43 to i32
  %45 = call i32 @testcase(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 132
  %50 = zext i1 %49 to i32
  %51 = call i32 @testcase(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 133
  %56 = zext i1 %55 to i32
  %57 = call i32 @testcase(i32 %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 134
  %62 = zext i1 %61 to i32
  %63 = call i32 @testcase(i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %79

68:                                               ; preds = %39
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %71, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i32, i32* @WRC_Continue, align 4
  store i32 %78, i32* %3, align 4
  br label %126

79:                                               ; preds = %68, %39
  br label %80

80:                                               ; preds = %19, %79
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 129
  %85 = zext i1 %84 to i32
  %86 = call i32 @testcase(i32 %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* @WRC_Abort, align 4
  store i32 %89, i32* %3, align 4
  br label %126

90:                                               ; preds = %19
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 5
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @TK_NULL, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %109

99:                                               ; preds = %90
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* @WRC_Abort, align 4
  store i32 %107, i32* %3, align 4
  br label %126

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %19, %109
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @TK_SELECT, align 4
  %115 = icmp eq i32 %113, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @testcase(i32 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @TK_EXISTS, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @testcase(i32 %123)
  %125 = load i32, i32* @WRC_Continue, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %110, %104, %80, %77, %35, %33, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @ExprHasProperty(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

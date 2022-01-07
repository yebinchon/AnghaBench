; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_substSelect.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_substSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i8*, i8*, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, %struct.SrcList_item* }
%struct.SrcList_item = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, i32)* @substSelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @substSelect(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.SrcList_item*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %94

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %92, %13
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @substExprList(i32* %15, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @substExprList(i32* %20, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @substExprList(i32* %25, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i8* @substExpr(i32* %30, i8* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @substExpr(i32* %37, i8* %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  store %struct.TYPE_8__* %46, %struct.TYPE_8__** %7, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = icmp ne %struct.TYPE_8__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.SrcList_item*, %struct.SrcList_item** %55, align 8
  store %struct.SrcList_item* %56, %struct.SrcList_item** %8, align 8
  br label %57

57:                                               ; preds = %78, %14
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %63 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %62, i32 0, i32 2
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  call void @substSelect(i32* %61, %struct.TYPE_9__* %64, i32 1)
  %65 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %66 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %60
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %73 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @substExprList(i32* %71, i32 %75)
  br label %77

77:                                               ; preds = %70, %60
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %9, align 4
  %81 = load %struct.SrcList_item*, %struct.SrcList_item** %8, align 8
  %82 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %81, i32 1
  store %struct.SrcList_item* %82, %struct.SrcList_item** %8, align 8
  br label %57

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  store %struct.TYPE_9__* %90, %struct.TYPE_9__** %5, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i1 [ false, %84 ], [ %91, %87 ]
  br i1 %93, label %14, label %94

94:                                               ; preds = %12, %92
  ret void
}

declare dso_local i32 @substExprList(i32*, i32) #1

declare dso_local i8* @substExpr(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

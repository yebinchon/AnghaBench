; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_isSelfJoinView.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_isSelfJoinView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.SrcList_item* }
%struct.SrcList_item = type { i64, i64, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.SrcList_item* (%struct.TYPE_6__*, %struct.SrcList_item*)* @isSelfJoinView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SrcList_item* @isSelfJoinView(%struct.TYPE_6__* %0, %struct.SrcList_item* %1) #0 {
  %3 = alloca %struct.SrcList_item*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.SrcList_item*, align 8
  %6 = alloca %struct.SrcList_item*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.SrcList_item* %1, %struct.SrcList_item** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.SrcList_item*, %struct.SrcList_item** %9, align 8
  store %struct.SrcList_item* %10, %struct.SrcList_item** %6, align 8
  br label %11

11:                                               ; preds = %82, %2
  %12 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %13 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %14 = icmp ult %struct.SrcList_item* %12, %13
  br i1 %14, label %15, label %85

15:                                               ; preds = %11
  %16 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %17 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %82

21:                                               ; preds = %15
  %22 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %23 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %82

28:                                               ; preds = %21
  %29 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %30 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %82

34:                                               ; preds = %28
  %35 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %36 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %39 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @sqlite3_stricmp(i64 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %82

44:                                               ; preds = %34
  %45 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %46 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %49 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @sqlite3_stricmp(i64 %47, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %82

54:                                               ; preds = %44
  %55 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %56 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %55, i32 0, i32 2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %7, align 8
  %58 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %59 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %58, i32 0, i32 2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %82

68:                                               ; preds = %54
  %69 = load %struct.SrcList_item*, %struct.SrcList_item** %5, align 8
  %70 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %69, i32 0, i32 2
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @sqlite3ExprCompare(i32 0, i32 %73, i32 %76, i32 -1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %82

80:                                               ; preds = %68
  %81 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  store %struct.SrcList_item* %81, %struct.SrcList_item** %3, align 8
  br label %86

82:                                               ; preds = %79, %67, %53, %43, %33, %27, %20
  %83 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %84 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %83, i32 1
  store %struct.SrcList_item* %84, %struct.SrcList_item** %6, align 8
  br label %11

85:                                               ; preds = %11
  store %struct.SrcList_item* null, %struct.SrcList_item** %3, align 8
  br label %86

86:                                               ; preds = %85, %80
  %87 = load %struct.SrcList_item*, %struct.SrcList_item** %3, align 8
  ret %struct.SrcList_item* %87
}

declare dso_local i64 @sqlite3_stricmp(i64, i64) #1

declare dso_local i64 @sqlite3ExprCompare(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

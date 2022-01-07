; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_walk_left.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtsearch.c__bt_walk_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@BT_READ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fell off the end of index \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"could not find left sibling of block %u in index \22%s\22\00", align 1
@InvalidBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @_bt_walk_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bt_walk_left(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BufferGetPage(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @PageGetSpecialPointer(i32 %16)
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %9, align 8
  br label %19

19:                                               ; preds = %155, %3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = call i64 @P_LEFTMOST(%struct.TYPE_5__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @_bt_relbuf(i32 %24, i32 %25)
  br label %156

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @BufferGetBlockNumber(i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  store i64 %32, i64* %12, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @_bt_relbuf(i32 %33, i32 %34)
  %36 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* @BT_READ, align 4
  %40 = call i32 @_bt_getbuf(i32 %37, i64 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @BufferGetPage(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @TestForOldSnapshot(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i64 @PageGetSpecialPointer(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %71, %27
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %52 = call i64 @P_ISDELETED(%struct.TYPE_5__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %4, align 4
  br label %158

62:                                               ; preds = %54, %50
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %64 = call i64 @P_RIGHTMOST(%struct.TYPE_5__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  %69 = icmp sgt i32 %68, 4
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %62
  br label %89

71:                                               ; preds = %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %12, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* @BT_READ, align 4
  %79 = call i32 @_bt_relandgetbuf(i32 %75, i32 %76, i64 %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @BufferGetPage(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @TestForOldSnapshot(i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @PageGetSpecialPointer(i32 %86)
  %88 = inttoptr i64 %87 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %9, align 8
  br label %50

89:                                               ; preds = %70
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* @BT_READ, align 4
  %94 = call i32 @_bt_relandgetbuf(i32 %90, i32 %91, i64 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @BufferGetPage(i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @TestForOldSnapshot(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = call i64 @PageGetSpecialPointer(i32 %101)
  %103 = inttoptr i64 %102 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %9, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = call i64 @P_ISDELETED(%struct.TYPE_5__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %142

107:                                              ; preds = %89
  br label %108

108:                                              ; preds = %140, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = call i64 @P_RIGHTMOST(%struct.TYPE_5__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @RelationGetRelationName(i32 %114)
  %116 = sext i32 %115 to i64
  %117 = call i32 (i32, i8*, i64, ...) @elog(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %116)
  br label %118

118:                                              ; preds = %112, %108
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %12, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i64, i64* %12, align 8
  %125 = load i32, i32* @BT_READ, align 4
  %126 = call i32 @_bt_relandgetbuf(i32 %122, i32 %123, i64 %124, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @BufferGetPage(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @TestForOldSnapshot(i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = call i64 @PageGetSpecialPointer(i32 %133)
  %135 = inttoptr i64 %134 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %135, %struct.TYPE_5__** %9, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %137 = call i64 @P_ISDELETED(%struct.TYPE_5__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %118
  br label %141

140:                                              ; preds = %118
  br label %108

141:                                              ; preds = %139
  br label %155

142:                                              ; preds = %89
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %11, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32, i32* @ERROR, align 4
  %150 = load i64, i64* %10, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @RelationGetRelationName(i32 %151)
  %153 = call i32 (i32, i8*, i64, ...) @elog(i32 %149, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %150, i32 %152)
  br label %154

154:                                              ; preds = %148, %142
  br label %155

155:                                              ; preds = %154, %141
  br label %19

156:                                              ; preds = %23
  %157 = load i32, i32* @InvalidBuffer, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %60
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_LEFTMOST(%struct.TYPE_5__*) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @_bt_getbuf(i32, i64, i32) #1

declare dso_local i32 @TestForOldSnapshot(i32, i32, i32) #1

declare dso_local i64 @P_ISDELETED(%struct.TYPE_5__*) #1

declare dso_local i64 @P_RIGHTMOST(%struct.TYPE_5__*) #1

declare dso_local i32 @_bt_relandgetbuf(i32, i32, i64, i32) #1

declare dso_local i32 @elog(i32, i8*, i64, ...) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

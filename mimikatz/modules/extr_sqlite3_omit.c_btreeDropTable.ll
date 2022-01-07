; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_btreeDropTable.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_btreeDropTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@TRANS_WRITE = common dso_local global i64 0, align 8
@BTREE_LARGEST_ROOT_PAGE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*)* @btreeDropTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeDropTable(%struct.TYPE_12__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %10, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_12__* %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRANS_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 2
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @btreeGetPage(%struct.TYPE_13__* %30, i32 %31, i32** %9, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %146

37:                                               ; preds = %3
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sqlite3BtreeClearTable(%struct.TYPE_12__* %38, i32 %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @releasePage(i32* %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %146

47:                                               ; preds = %37
  %48 = load i32*, i32** %7, align 8
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %139

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = load i32, i32* @BTREE_LARGEST_ROOT_PAGE, align 4
  %56 = call i32 @sqlite3BtreeGetMeta(%struct.TYPE_12__* %54, i32 %55, i32* %11)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @freePage(i32* %61, i32* %8)
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @releasePage(i32* %63)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %146

70:                                               ; preds = %60
  br label %111

71:                                               ; preds = %53
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @releasePage(i32* %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @btreeGetPage(%struct.TYPE_13__* %74, i32 %75, i32** %12, i32 0)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* %8, align 4
  store i32 %81, i32* %4, align 4
  br label %146

82:                                               ; preds = %71
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @relocatePage(%struct.TYPE_13__* %83, i32* %84, i32 %85, i32 0, i32 %86, i32 0)
  store i32 %87, i32* %8, align 4
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @releasePage(i32* %88)
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %4, align 4
  br label %146

95:                                               ; preds = %82
  store i32* null, i32** %12, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @btreeGetPage(%struct.TYPE_13__* %96, i32 %97, i32** %12, i32 0)
  store i32 %98, i32* %8, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @freePage(i32* %99, i32* %8)
  %101 = load i32*, i32** %12, align 8
  %102 = call i32 @releasePage(i32* %101)
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %146

108:                                              ; preds = %95
  %109 = load i32, i32* %11, align 4
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %70
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %126, %111
  %115 = load i32, i32* %11, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %117 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_13__* %116)
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %114
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_13__* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi i1 [ true, %114 ], [ %123, %119 ]
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %11, align 4
  br label %114

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_13__* %131)
  %133 = icmp ne i32 %130, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_12__* %136, i32 4, i32 %137)
  store i32 %138, i32* %8, align 4
  br label %144

139:                                              ; preds = %47
  %140 = load i32*, i32** %9, align 8
  %141 = call i32 @freePage(i32* %140, i32* %8)
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @releasePage(i32* %142)
  br label %144

144:                                              ; preds = %139, %129
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %106, %93, %80, %68, %43, %35
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_12__*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_13__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3BtreeClearTable(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @releasePage(i32*) #1

declare dso_local i32 @sqlite3BtreeGetMeta(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @freePage(i32*, i32*) #1

declare dso_local i32 @relocatePage(%struct.TYPE_13__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_13__*) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

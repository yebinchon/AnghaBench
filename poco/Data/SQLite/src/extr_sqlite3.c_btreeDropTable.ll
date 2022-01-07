; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_btreeDropTable.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_btreeDropTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 }

@TRANS_WRITE = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@BTREE_LARGEST_ROOT_PAGE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i32*)* @btreeDropTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeDropTable(%struct.TYPE_13__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %10, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_13__* %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRANS_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 2
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %32 = call i32 @btreePagecount(%struct.TYPE_14__* %31)
  %33 = icmp sgt i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %3
  %35 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %35, i32* %4, align 4
  br label %153

36:                                               ; preds = %3
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @btreeGetPage(%struct.TYPE_14__* %37, i32 %38, i32** %9, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %153

44:                                               ; preds = %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sqlite3BtreeClearTable(%struct.TYPE_13__* %45, i32 %46, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @releasePage(i32* %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %153

54:                                               ; preds = %44
  %55 = load i32*, i32** %7, align 8
  store i32 0, i32* %55, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %146

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = load i32, i32* @BTREE_LARGEST_ROOT_PAGE, align 4
  %63 = call i32 @sqlite3BtreeGetMeta(%struct.TYPE_13__* %61, i32 %62, i32* %11)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @freePage(i32* %68, i32* %8)
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @releasePage(i32* %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @SQLITE_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %4, align 4
  br label %153

77:                                               ; preds = %67
  br label %118

78:                                               ; preds = %60
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @releasePage(i32* %79)
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @btreeGetPage(%struct.TYPE_14__* %81, i32 %82, i32** %12, i32 0)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @SQLITE_OK, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %153

89:                                               ; preds = %78
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @relocatePage(%struct.TYPE_14__* %90, i32* %91, i32 %92, i32 0, i32 %93, i32 0)
  store i32 %94, i32* %8, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @releasePage(i32* %95)
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %4, align 4
  br label %153

102:                                              ; preds = %89
  store i32* null, i32** %12, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @btreeGetPage(%struct.TYPE_14__* %103, i32 %104, i32** %12, i32 0)
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @freePage(i32* %106, i32* %8)
  %108 = load i32*, i32** %12, align 8
  %109 = call i32 @releasePage(i32* %108)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @SQLITE_OK, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %102
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %4, align 4
  br label %153

115:                                              ; preds = %102
  %116 = load i32, i32* %11, align 4
  %117 = load i32*, i32** %7, align 8
  store i32 %116, i32* %117, align 4
  br label %118

118:                                              ; preds = %115, %77
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %133, %118
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %124 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_14__* %123)
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_14__* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ true, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, -1
  store i32 %135, i32* %11, align 4
  br label %121

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %139 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_14__* %138)
  %140 = icmp ne i32 %137, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_13__* %143, i32 4, i32 %144)
  store i32 %145, i32* %8, align 4
  br label %151

146:                                              ; preds = %54
  %147 = load i32*, i32** %9, align 8
  %148 = call i32 @freePage(i32* %147, i32* %8)
  %149 = load i32*, i32** %9, align 8
  %150 = call i32 @releasePage(i32* %149)
  br label %151

151:                                              ; preds = %146, %136
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %113, %100, %87, %75, %50, %42, %34
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_13__*) #1

declare dso_local i32 @btreePagecount(%struct.TYPE_14__*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_14__*, i32, i32**, i32) #1

declare dso_local i32 @sqlite3BtreeClearTable(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @releasePage(i32*) #1

declare dso_local i32 @sqlite3BtreeGetMeta(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @freePage(i32*, i32*) #1

declare dso_local i32 @relocatePage(%struct.TYPE_14__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_14__*) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

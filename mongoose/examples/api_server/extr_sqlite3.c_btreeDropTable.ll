; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeDropTable.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_btreeDropTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@TRANS_WRITE = common dso_local global i64 0, align 8
@SQLITE_LOCKED_SHAREDCACHE = common dso_local global i32 0, align 4
@BTREE_LARGEST_ROOT_PAGE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i32 0, align 4
@PTF_INTKEY = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32*)* @btreeDropTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeDropTable(%struct.TYPE_16__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_16__* %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TRANS_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = call i64 @NEVER(%struct.TYPE_14__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @sqlite3ConnectionBlocked(i32 %34, i32 %41)
  %43 = load i32, i32* @SQLITE_LOCKED_SHAREDCACHE, align 4
  store i32 %43, i32* %4, align 4
  br label %173

44:                                               ; preds = %3
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @btreeGetPage(%struct.TYPE_17__* %45, i32 %46, i32** %9, i32 0, i32 0)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %173

52:                                               ; preds = %44
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @sqlite3BtreeClearTable(%struct.TYPE_16__* %53, i32 %54, i32 0)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @releasePage(i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %173

62:                                               ; preds = %52
  %63 = load i32*, i32** %7, align 8
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %163

66:                                               ; preds = %62
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %157

71:                                               ; preds = %66
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = load i32, i32* @BTREE_LARGEST_ROOT_PAGE, align 4
  %74 = call i32 @sqlite3BtreeGetMeta(%struct.TYPE_16__* %72, i32 %73, i32* %11)
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %71
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @freePage(i32* %79, i32* %8)
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @releasePage(i32* %81)
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @SQLITE_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %173

88:                                               ; preds = %78
  br label %129

89:                                               ; preds = %71
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @releasePage(i32* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @btreeGetPage(%struct.TYPE_17__* %92, i32 %93, i32** %12, i32 0, i32 0)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @SQLITE_OK, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %173

100:                                              ; preds = %89
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @relocatePage(%struct.TYPE_17__* %101, i32* %102, i32 %103, i32 0, i32 %104, i32 0)
  store i32 %105, i32* %8, align 4
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @releasePage(i32* %106)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %173

113:                                              ; preds = %100
  store i32* null, i32** %12, align 8
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @btreeGetPage(%struct.TYPE_17__* %114, i32 %115, i32** %12, i32 0, i32 0)
  store i32 %116, i32* %8, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @freePage(i32* %117, i32* %8)
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 @releasePage(i32* %119)
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @SQLITE_OK, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %113
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %4, align 4
  br label %173

126:                                              ; preds = %113
  %127 = load i32, i32* %11, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %88
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %144, %129
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %135 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_17__* %134)
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i64 @PTRMAP_ISPAGE(%struct.TYPE_17__* %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i1 [ true, %132 ], [ %141, %137 ]
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %11, align 4
  br label %132

147:                                              ; preds = %142
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %150 = call i32 @PENDING_BYTE_PAGE(%struct.TYPE_17__* %149)
  %151 = icmp ne i32 %148, %150
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = call i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_16__* %154, i32 4, i32 %155)
  store i32 %156, i32* %8, align 4
  br label %162

157:                                              ; preds = %66
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @freePage(i32* %158, i32* %8)
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @releasePage(i32* %160)
  br label %162

162:                                              ; preds = %157, %147
  br label %171

163:                                              ; preds = %62
  %164 = load i32*, i32** %9, align 8
  %165 = load i32, i32* @PTF_INTKEY, align 4
  %166 = load i32, i32* @PTF_LEAF, align 4
  %167 = or i32 %165, %166
  %168 = call i32 @zeroPage(i32* %164, i32 %167)
  %169 = load i32*, i32** %9, align 8
  %170 = call i32 @releasePage(i32* %169)
  br label %171

171:                                              ; preds = %163, %162
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %171, %124, %111, %98, %86, %58, %50, %31
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_16__*) #1

declare dso_local i64 @NEVER(%struct.TYPE_14__*) #1

declare dso_local i32 @sqlite3ConnectionBlocked(i32, i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_17__*, i32, i32**, i32, i32) #1

declare dso_local i32 @sqlite3BtreeClearTable(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @releasePage(i32*) #1

declare dso_local i32 @sqlite3BtreeGetMeta(%struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @freePage(i32*, i32*) #1

declare dso_local i32 @relocatePage(%struct.TYPE_17__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @PENDING_BYTE_PAGE(%struct.TYPE_17__*) #1

declare dso_local i64 @PTRMAP_ISPAGE(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @sqlite3BtreeUpdateMeta(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @zeroPage(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

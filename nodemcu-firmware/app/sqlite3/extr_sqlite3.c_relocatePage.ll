; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_relocatePage.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_relocatePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_12__* }

@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"AUTOVACUUM: Moving %d to free page %d (ptr page %d type %d)\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i64, i64, i32)* @relocatePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relocatePage(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %15, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %16, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %40, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PTRMAP_OVERFLOW1, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @PTRMAP_BTREE, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32, %28, %6
  %41 = phi i1 [ true, %32 ], [ true, %28 ], [ true, %6 ], [ %39, %36 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sqlite3_mutex_held(i32 %46)
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %53 = icmp eq %struct.TYPE_12__* %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @TRACE(i8* %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @sqlite3PagerMovepage(i32* %63, i32 %66, i64 %67, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @SQLITE_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %40
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %7, align 4
  br label %160

75:                                               ; preds = %40
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @PTRMAP_BTREE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %82, %75
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %88 = call i32 @setChildPtrmaps(%struct.TYPE_11__* %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %17, align 4
  store i32 %93, i32* %7, align 4
  br label %160

94:                                               ; preds = %86
  br label %115

95:                                               ; preds = %82
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @get4byte(i32 %98)
  store i64 %99, i64* %18, align 8
  %100 = load i64, i64* %18, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  %106 = load i64, i64* %12, align 8
  %107 = call i32 @ptrmapPut(%struct.TYPE_12__* %103, i64 %104, i32 %105, i64 %106, i32* %17)
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @SQLITE_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %17, align 4
  store i32 %112, i32* %7, align 4
  br label %160

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %115
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @btreeGetPage(%struct.TYPE_12__* %120, i64 %121, %struct.TYPE_11__** %14, i32 0)
  store i32 %122, i32* %17, align 4
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* @SQLITE_OK, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* %17, align 4
  store i32 %127, i32* %7, align 4
  br label %160

128:                                              ; preds = %119
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @sqlite3PagerWrite(i32 %131)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* @SQLITE_OK, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %138 = call i32 @releasePage(%struct.TYPE_11__* %137)
  %139 = load i32, i32* %17, align 4
  store i32 %139, i32* %7, align 4
  br label %160

140:                                              ; preds = %128
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = load i64, i64* %12, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @modifyPagePointer(%struct.TYPE_11__* %141, i64 %142, i64 %143, i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %147 = call i32 @releasePage(%struct.TYPE_11__* %146)
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @SQLITE_OK, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %140
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %153 = load i64, i64* %12, align 8
  %154 = load i32, i32* %10, align 4
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @ptrmapPut(%struct.TYPE_12__* %152, i64 %153, i32 %154, i64 %155, i32* %17)
  br label %157

157:                                              ; preds = %151, %140
  br label %158

158:                                              ; preds = %157, %115
  %159 = load i32, i32* %17, align 4
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %158, %136, %126, %111, %92, %73
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @sqlite3PagerMovepage(i32*, i32, i64, i32) #1

declare dso_local i32 @setChildPtrmaps(%struct.TYPE_11__*) #1

declare dso_local i64 @get4byte(i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_12__*, i64, i32, i64, i32*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_12__*, i64, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_11__*) #1

declare dso_local i32 @modifyPagePointer(%struct.TYPE_11__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

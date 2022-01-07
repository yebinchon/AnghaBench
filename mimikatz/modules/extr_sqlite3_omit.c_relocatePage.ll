; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_relocatePage.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_relocatePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__* }

@PTRMAP_OVERFLOW2 = common dso_local global i32 0, align 4
@PTRMAP_OVERFLOW1 = common dso_local global i32 0, align 4
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@PTRMAP_ROOTPAGE = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"AUTOVACUUM: Moving %d to free page %d (ptr page %d type %d)\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32, i32, i32)* @relocatePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @relocatePage(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
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
  %56 = load i32, i32* %15, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %60

58:                                               ; preds = %40
  %59 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %59, i32* %7, align 4
  br label %165

60:                                               ; preds = %40
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @TRACE(i8* %66)
  %68 = load i32*, i32** %16, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @sqlite3PagerMovepage(i32* %68, i32 %71, i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @SQLITE_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* %17, align 4
  store i32 %79, i32* %7, align 4
  br label %165

80:                                               ; preds = %60
  %81 = load i32, i32* %12, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @PTRMAP_BTREE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87, %80
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = call i32 @setChildPtrmaps(%struct.TYPE_11__* %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* @SQLITE_OK, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %7, align 4
  br label %165

99:                                               ; preds = %91
  br label %120

100:                                              ; preds = %87
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get4byte(i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @PTRMAP_OVERFLOW2, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ptrmapPut(%struct.TYPE_12__* %108, i32 %109, i32 %110, i32 %111, i32* %17)
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %7, align 4
  br label %165

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119, %99
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @PTRMAP_ROOTPAGE, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %163

124:                                              ; preds = %120
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @btreeGetPage(%struct.TYPE_12__* %125, i32 %126, %struct.TYPE_11__** %14, i32 0)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* @SQLITE_OK, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %7, align 4
  br label %165

133:                                              ; preds = %124
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @sqlite3PagerWrite(i32 %136)
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @SQLITE_OK, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %133
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %143 = call i32 @releasePage(%struct.TYPE_11__* %142)
  %144 = load i32, i32* %17, align 4
  store i32 %144, i32* %7, align 4
  br label %165

145:                                              ; preds = %133
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @modifyPagePointer(%struct.TYPE_11__* %146, i32 %147, i32 %148, i32 %149)
  store i32 %150, i32* %17, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %152 = call i32 @releasePage(%struct.TYPE_11__* %151)
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* @SQLITE_OK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %145
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @ptrmapPut(%struct.TYPE_12__* %157, i32 %158, i32 %159, i32 %160, i32* %17)
  br label %162

162:                                              ; preds = %156, %145
  br label %163

163:                                              ; preds = %162, %120
  %164 = load i32, i32* %17, align 4
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %163, %141, %131, %116, %97, %78, %58
  %166 = load i32, i32* %7, align 4
  ret i32 %166
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @sqlite3PagerMovepage(i32*, i32, i32, i32) #1

declare dso_local i32 @setChildPtrmaps(%struct.TYPE_11__*) #1

declare dso_local i32 @get4byte(i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_12__*, i32, i32, i32, i32*) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_12__*, i32, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_11__*) #1

declare dso_local i32 @modifyPagePointer(%struct.TYPE_11__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

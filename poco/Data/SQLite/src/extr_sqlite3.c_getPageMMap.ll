; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_getPageMMap.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_getPageMMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i32, i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@PAGER_GET_READONLY = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32**, i32)* @getPageMMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getPageMMap(%struct.TYPE_9__* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @SQLITE_OK, align 4
  store i32 %15, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i64 0, i64* %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGER_READER, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PAGER_GET_READONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i1 [ true, %18 ], [ %28, %24 ]
  br label %31

31:                                               ; preds = %29, %4
  %32 = phi i1 [ false, %4 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %35 = call i32 @USEFETCH(%struct.TYPE_9__* %34)
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %43, i32* %5, align 4
  br label %175

44:                                               ; preds = %39, %31
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PAGER_READER, align 8
  %49 = icmp sge i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i32 @assert_pager_state(%struct.TYPE_9__* %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SQLITE_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %44
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = call i64 @pagerUseWal(%struct.TYPE_9__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @sqlite3WalFindFrame(i32 %77, i32 %78, i64* %12)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @SQLITE_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74
  %84 = load i32**, i32*** %8, align 8
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %175

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %70, %44
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %169

90:                                               ; preds = %87
  %91 = load i64, i64* %12, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %169

93:                                               ; preds = %90
  store i8* null, i8** %14, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @sqlite3OsFetch(i32 %96, i32 %102, i32 %105, i8** %14)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @SQLITE_OK, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %161

110:                                              ; preds = %93
  %111 = load i8*, i8** %14, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %161

113:                                              ; preds = %110
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @PAGER_READER, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119, %113
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32* @sqlite3PagerLookup(%struct.TYPE_9__* %125, i32 %126)
  store i32* %127, i32** %11, align 8
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i32*, i32** %11, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %128
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 @pagerAcquireMapPage(%struct.TYPE_9__* %132, i32 %133, i8* %134, i32** %11)
  store i32 %135, i32* %10, align 4
  br label %148

136:                                              ; preds = %128
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = mul nsw i32 %141, %144
  %146 = load i8*, i8** %14, align 8
  %147 = call i32 @sqlite3OsUnfetch(i32 %139, i32 %145, i8* %146)
  br label %148

148:                                              ; preds = %136, %131
  %149 = load i32*, i32** %11, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @SQLITE_OK, align 4
  %154 = icmp eq i32 %152, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load i32*, i32** %11, align 8
  %158 = load i32**, i32*** %8, align 8
  store i32* %157, i32** %158, align 8
  %159 = load i32, i32* @SQLITE_OK, align 4
  store i32 %159, i32* %5, align 4
  br label %175

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %110, %93
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @SQLITE_OK, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32**, i32*** %8, align 8
  store i32* null, i32** %166, align 8
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %5, align 4
  br label %175

168:                                              ; preds = %161
  br label %169

169:                                              ; preds = %168, %90, %87
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load i32**, i32*** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @getPageNormal(%struct.TYPE_9__* %170, i32 %171, i32** %172, i32 %173)
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %169, %165, %151, %83, %42
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @USEFETCH(%struct.TYPE_9__*) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_9__*) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_9__*) #1

declare dso_local i32 @sqlite3WalFindFrame(i32, i32, i64*) #1

declare dso_local i32 @sqlite3OsFetch(i32, i32, i32, i8**) #1

declare dso_local i32* @sqlite3PagerLookup(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pagerAcquireMapPage(%struct.TYPE_9__*, i32, i8*, i32**) #1

declare dso_local i32 @sqlite3OsUnfetch(i32, i32, i8*) #1

declare dso_local i32 @getPageNormal(%struct.TYPE_9__*, i32, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

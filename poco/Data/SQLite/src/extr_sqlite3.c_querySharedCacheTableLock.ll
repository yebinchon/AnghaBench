; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_querySharedCacheTableLock.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_querySharedCacheTableLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_11__*, i32, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_8__*, %struct.TYPE_10__* }

@READ_LOCK = common dso_local global i64 0, align 8
@WRITE_LOCK = common dso_local global i64 0, align 8
@SQLITE_ReadUncommit = common dso_local global i32 0, align 4
@TRANS_WRITE = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@BTS_EXCLUSIVE = common dso_local global i32 0, align 4
@SQLITE_LOCKED_SHAREDCACHE = common dso_local global i32 0, align 4
@BTS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i64)* @querySharedCacheTableLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @querySharedCacheTableLock(%struct.TYPE_8__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %8, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_8__* %13)
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @READ_LOCK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @WRITE_LOCK, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ true, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SQLITE_ReadUncommit, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %23
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @WRITE_LOCK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 1
  br label %48

48:                                               ; preds = %45, %41, %23
  %49 = phi i1 [ true, %41 ], [ true, %23 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @READ_LOCK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %69, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp eq %struct.TYPE_8__* %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TRANS_WRITE, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ false, %55 ], [ %66, %61 ]
  br label %69

69:                                               ; preds = %67, %48
  %70 = phi i1 [ true, %48 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @READ_LOCK, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %69
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @TRANS_WRITE, align 8
  %81 = icmp eq i64 %79, %80
  br label %82

82:                                               ; preds = %76, %69
  %83 = phi i1 [ true, %69 ], [ %81, %76 ]
  %84 = zext i1 %83 to i32
  %85 = call i32 @assert(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %82
  %91 = load i32, i32* @SQLITE_OK, align 4
  store i32 %91, i32* %4, align 4
  br label %210

92:                                               ; preds = %82
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = icmp ne %struct.TYPE_8__* %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BTS_EXCLUSIVE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = call i32 @sqlite3ConnectionBlocked(%struct.TYPE_11__* %108, %struct.TYPE_11__* %113)
  %115 = load i32, i32* @SQLITE_LOCKED_SHAREDCACHE, align 4
  store i32 %115, i32* %4, align 4
  br label %210

116:                                              ; preds = %98, %92
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  store %struct.TYPE_10__* %119, %struct.TYPE_10__** %9, align 8
  br label %120

120:                                              ; preds = %204, %116
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %122 = icmp ne %struct.TYPE_10__* %121, null
  br i1 %122, label %123, label %208

123:                                              ; preds = %120
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @READ_LOCK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @WRITE_LOCK, align 8
  %134 = icmp eq i64 %132, %133
  br label %135

135:                                              ; preds = %129, %123
  %136 = phi i1 [ true, %123 ], [ %134, %129 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @assert(i32 %137)
  %139 = load i64, i64* %7, align 8
  %140 = load i64, i64* @READ_LOCK, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %154, label %142

142:                                              ; preds = %135
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %147 = icmp eq %struct.TYPE_8__* %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @READ_LOCK, align 8
  %153 = icmp eq i64 %151, %152
  br label %154

154:                                              ; preds = %148, %142, %135
  %155 = phi i1 [ true, %142 ], [ true, %135 ], [ %153, %148 ]
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %162 = icmp ne %struct.TYPE_8__* %160, %161
  br i1 %162, label %163, label %203

163:                                              ; preds = %154
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %203

169:                                              ; preds = %163
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %7, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %169
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = call i32 @sqlite3ConnectionBlocked(%struct.TYPE_11__* %178, %struct.TYPE_11__* %183)
  %185 = load i64, i64* %7, align 8
  %186 = load i64, i64* @WRITE_LOCK, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %175
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = icmp eq %struct.TYPE_8__* %189, %192
  %194 = zext i1 %193 to i32
  %195 = call i32 @assert(i32 %194)
  %196 = load i32, i32* @BTS_PENDING, align 4
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %188, %175
  %202 = load i32, i32* @SQLITE_LOCKED_SHAREDCACHE, align 4
  store i32 %202, i32* %4, align 4
  br label %210

203:                                              ; preds = %169, %163, %154
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  store %struct.TYPE_10__* %207, %struct.TYPE_10__** %9, align 8
  br label %120

208:                                              ; preds = %120
  %209 = load i32, i32* @SQLITE_OK, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %201, %105, %90
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeHoldsMutex(%struct.TYPE_8__*) #1

declare dso_local i32 @sqlite3ConnectionBlocked(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

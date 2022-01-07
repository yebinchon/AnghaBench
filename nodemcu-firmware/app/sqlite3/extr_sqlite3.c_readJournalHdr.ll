; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_readJournalHdr.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_readJournalHdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32 }

@SQLITE_DONE = common dso_local global i32 0, align 4
@aJournalMagic = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@MAX_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i64, i32*, i32*)* @readJournalHdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readJournalHdr(%struct.TYPE_6__* %0, i32 %1, i64 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [8 x i8], align 1
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @isOpen(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = call i64 @journalHdrOffset(%struct.TYPE_6__* %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_6__* %29)
  %31 = add nsw i64 %28, %30
  %32 = load i64, i64* %9, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %35, i32* %6, align 4
  br label %179

36:                                               ; preds = %5
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42, %36
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @sqlite3OsRead(i32 %51, i8* %52, i32 8, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %6, align 4
  br label %179

59:                                               ; preds = %48
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %61 = load i32, i32* @aJournalMagic, align 4
  %62 = call i64 @memcmp(i8* %60, i32 %61, i32 8)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %65, i32* %6, align 4
  br label %179

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* @SQLITE_OK, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %72, 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @read32bits(i32 %71, i64 %73, i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %68, %75
  br i1 %76, label %98, label %77

77:                                               ; preds = %67
  %78 = load i32, i32* @SQLITE_OK, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %14, align 8
  %83 = add nsw i64 %82, 12
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = call i32 @read32bits(i32 %81, i64 %83, i32* %85)
  store i32 %86, i32* %12, align 4
  %87 = icmp ne i32 %78, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %14, align 8
  %94 = add nsw i64 %93, 16
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @read32bits(i32 %92, i64 %94, i32* %95)
  store i32 %96, i32* %12, align 4
  %97 = icmp ne i32 %89, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88, %77, %67
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %179

100:                                              ; preds = %88
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %171

105:                                              ; preds = %100
  %106 = load i32, i32* @SQLITE_OK, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %14, align 8
  %111 = add nsw i64 %110, 20
  %112 = call i32 @read32bits(i32 %109, i64 %111, i32* %16)
  store i32 %112, i32* %12, align 4
  %113 = icmp ne i32 %106, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* @SQLITE_OK, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %14, align 8
  %120 = add nsw i64 %119, 24
  %121 = call i32 @read32bits(i32 %118, i64 %120, i32* %15)
  store i32 %121, i32* %12, align 4
  %122 = icmp ne i32 %115, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %114, %105
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %6, align 4
  br label %179

125:                                              ; preds = %114
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %128, %125
  %133 = load i32, i32* %15, align 4
  %134 = icmp slt i32 %133, 512
  br i1 %134, label %158, label %135

135:                                              ; preds = %132
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %136, 32
  br i1 %137, label %158, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* @MAX_SECTOR_SIZE, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %158, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %15, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load i32, i32* %15, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %146
  %153 = load i32, i32* %16, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %16, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152, %146, %142, %138, %135, %132
  %159 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %159, i32* %6, align 4
  br label %179

160:                                              ; preds = %152
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %162 = call i32 @sqlite3PagerSetPagesize(%struct.TYPE_6__* %161, i32* %15, i32 -1)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @SQLITE_OK, align 4
  %165 = icmp ne i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @testcase(i32 %166)
  %168 = load i32, i32* %16, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %160, %100
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %173 = call i64 @JOURNAL_HDR_SZ(%struct.TYPE_6__* %172)
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, %173
  store i64 %177, i64* %175, align 8
  %178 = load i32, i32* %12, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %171, %158, %123, %98, %64, %57, %34
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @isOpen(i32) #1

declare dso_local i64 @journalHdrOffset(%struct.TYPE_6__*) #1

declare dso_local i64 @JOURNAL_HDR_SZ(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3OsRead(i32, i8*, i32, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @read32bits(i32, i64, i32*) #1

declare dso_local i32 @sqlite3PagerSetPagesize(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @testcase(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
